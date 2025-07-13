Proyecto Angular:
    - Hay que modificar las url para la conexion a la api que es la 
      carpeta del server.(Everonline Angular\everonline_traccar\src\app\services\global.ts).

    - Compilar proyecto mediante la terminal ejecutando "npm run build --prod". 
      Esto genera una carpeta dist con el proyecto dentro compilado que es lo que hay 
      que poner en el apache para que lea el proyecto.

Proyecto Server :

    - En debug.xml tienes que cambiar los datos de configarion de la base de datos indicando
      nombre de base de datos, usuario y contraseña.

APACHE:

<VirtualHost *:443> (443 PUERTO ACCESO CON SSL https)
    	ServerName tudominio.com
    	ServerAlias tudominio.com
		ServerAdmin webmaster@localhost

		DocumentRoot /var/www/html (donde tienes el proyecto)
		
		ProxyRequests off
		
		ProxyPass /gps/api/socket ws://localhost:8082/api/socket
		ProxyPassReverse /gps/api/socket ws://localhost:8082/api/socket

		ProxyPass /gps/ http://localhost:8082/
		ProxyPassReverse /gps/ http://localhost:8082/
		ProxyPassReverseCookiePath / /gps/

		Redirect permanent /gps /gps/
		
		
		SSLEngine on

		SSLCertificateFile	/etc/ssl/certs/magnetcertificate.crt
		SSLCertificateKeyFile /etc/ssl/private/magnetprivate.key
		SSLCertificateChainFile  /etc/ssl/certs/magnetca_bundle.crt

		<FilesMatch "\.(cgi|shtml|phtml|php)$">
				SSLOptions +StdEnvVars
		</FilesMatch>
		<Directory /usr/lib/cgi-bin>
				SSLOptions +StdEnvVars
		</Directory>

	</VirtualHost>
