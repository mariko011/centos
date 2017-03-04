## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:0eef601ff8507f7a069319219e2a96f386bffbe7bb36fbe31c9706747517f2f6
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2075201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad9e4c2b3812e642064af60fe549dc562bb334ac7a03f653cb6b0ff5e2f1d32`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:39 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Fri, 03 Mar 2017 21:48:39 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Fri, 03 Mar 2017 21:48:41 GMT
RUN apk --no-cache add mosquitto=1.4.10-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Fri, 03 Mar 2017 21:48:42 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Fri, 03 Mar 2017 21:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:42 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84765861e6a02400cecc2c200871bb596ee01a78eaf9cc3d8b151998535a37d2`  
		Last Modified: Sat, 04 Mar 2017 04:49:53 GMT  
		Size: 169.8 KB (169785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ad4cf884c510fa13558576e6b81eb50bff80f712663eb485db7377b200684c`  
		Last Modified: Sat, 04 Mar 2017 04:49:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
