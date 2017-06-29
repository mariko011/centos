## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:47ba652b6d146c5824a4bc3d4d5bc83c01b08aaee3d6d140646eae3021d6be8a
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:100c1a9f936ed8c5250eb2b040ca7b5edd2ec096be54b58a6d366fe36eecc3dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:53:55 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 27 Jun 2017 20:53:56 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 27 Jun 2017 20:54:01 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 27 Jun 2017 20:54:24 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 27 Jun 2017 20:54:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:54:26 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748a85e8395c5100287bb4e8604ed6d32b7a5639aeff940b09c8eb04aedd567e`  
		Last Modified: Thu, 29 Jun 2017 20:33:23 GMT  
		Size: 175.2 KB (175150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768b05115bff6379604b9603e77d98f8f481dd7e768e3f9358024676f2f576d9`  
		Last Modified: Thu, 29 Jun 2017 20:33:23 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
