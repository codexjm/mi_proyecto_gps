/*
 * Copyright 2015 - 2020 Anton Tananaev (anton@traccar.org)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.traccar.api.resource;

import org.traccar.Context;
import org.traccar.api.BaseResource;
import org.traccar.geocoder.Address;
import org.traccar.geocoder.Geocoder;
import org.traccar.geocoder.GeocoderException;
import org.traccar.helper.LogAction;
import org.traccar.model.Position;
import org.traccar.reports.Route;

import javax.json.Json;
import javax.json.JsonObject;
import javax.ws.rs.*;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.InvocationCallback;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.sql.SQLException;
import java.util.*;

@Path("positions")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class PositionResource extends BaseResource {

    @GET
    public Collection<Position> getJson(
            @QueryParam("deviceId") long deviceId, @QueryParam("id") List<Long> positionIds,
            @QueryParam("from") Date from, @QueryParam("to") Date to)
            throws SQLException {
        if (!positionIds.isEmpty()) {
            ArrayList<Position> positions = new ArrayList<>();
            for (Long positionId : positionIds) {
                Position position = Context.getDataManager().getObject(Position.class, positionId);
                Context.getPermissionsManager().checkDevice(getUserId(), position.getDeviceId());
                positions.add(position);
            }
            return positions;
        } else if (deviceId == 0) {
            return Context.getDeviceManager().getInitialState(getUserId());
        } else {
            Context.getPermissionsManager().checkDevice(getUserId(), deviceId);
            if (from != null && to != null) {
                return Context.getDataManager().getPositions(deviceId, from, to);
            } else {
                return Collections.singleton(Context.getDeviceManager().getLastPosition(deviceId));
            }
        }
    }

    @DELETE
    public Response deletePositions(@QueryParam("deviceId") long deviceId) throws SQLException {
        if(Context.getDataManager().deletePositions(deviceId)=="ok") {
            return Response.ok("{\"result\":\"ok\"}",MediaType.APPLICATION_JSON).build();
        }else{
            return Response.ok("{\"result\":\"error\"}",MediaType.APPLICATION_JSON).build();
        }
    }

}
