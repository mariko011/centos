## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:15491ef8e1d3b255d956682620beade92bcab30a89ff72bf353e885152630fad
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5753184f322abaad8e0ecea111ab7324356b7802ab073928bcca3184fa26507`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:11:33 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 30 May 2017 17:12:00 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 30 May 2017 17:12:27 GMT
RUN apk --no-cache add mosquitto=1.4.10-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 30 May 2017 17:12:51 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 30 May 2017 17:12:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 May 2017 17:12:54 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d11cec8b658eb49570fd4aa6bbf7a0c4d6f0fcdedfdfd08a92a9a14c78076dc`  
		Last Modified: Tue, 30 May 2017 17:16:18 GMT  
		Size: 174.6 KB (174629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a19f739dca7066e36d14f124cbbd8f313c605445d2ebf713e30fc4fc55690ad`  
		Last Modified: Tue, 30 May 2017 17:16:18 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
