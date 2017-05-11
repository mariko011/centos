## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:b7e9e5e1480c7639adab2d366a92507246eb82a8d930d0a2687686e413178ed0
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c3b1ee2a59217f96ee0f199476d2a8ca1fd4ad8d3825b1112c47d146b64ad9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:19:21 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Wed, 10 May 2017 21:19:21 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Wed, 10 May 2017 21:19:24 GMT
RUN apk --no-cache add mosquitto=1.4.10-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Wed, 10 May 2017 21:19:25 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Wed, 10 May 2017 21:19:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 21:19:26 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b3595ea52ebd3010b3debf260a215495dd39b6f5b2ae043090bbfe8620f1bd`  
		Last Modified: Thu, 11 May 2017 15:30:40 GMT  
		Size: 174.6 KB (174631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ee31c4c48c961bfc8bc06b161e95a4503babfcb08b49d66d134f97aeb1c7a5`  
		Last Modified: Thu, 11 May 2017 15:30:40 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
