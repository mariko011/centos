<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.4.12`](#eclipse-mosquitto1412)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)

## `eclipse-mosquitto:1.4.12`

```console
$ docker pull eclipse-mosquitto@sha256:570438067afb7519dcefff0b6f045e0fc6b202f32c5b28bf92287195e1c8a3fc
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6b1d19b842d8f903aa31217f76ba441c99d5adddc82da14d58a9d4a3f650a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:37:34 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Mon, 19 Jun 2017 18:37:35 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Mon, 19 Jun 2017 18:37:41 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Mon, 19 Jun 2017 18:37:43 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Mon, 19 Jun 2017 18:37:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:37:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f14685aab216ebaa6008c91c2bbb936511bc029577dfcff79377d8b6f8efcea`  
		Last Modified: Sat, 24 Jun 2017 08:22:24 GMT  
		Size: 175.1 KB (175147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfb67f128e28fbcdc8e22057dfe18315a4eaea2781c257d13f714608309ce68`  
		Last Modified: Sat, 24 Jun 2017 08:22:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:570438067afb7519dcefff0b6f045e0fc6b202f32c5b28bf92287195e1c8a3fc
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6b1d19b842d8f903aa31217f76ba441c99d5adddc82da14d58a9d4a3f650a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:37:34 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Mon, 19 Jun 2017 18:37:35 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Mon, 19 Jun 2017 18:37:41 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Mon, 19 Jun 2017 18:37:43 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Mon, 19 Jun 2017 18:37:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:37:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f14685aab216ebaa6008c91c2bbb936511bc029577dfcff79377d8b6f8efcea`  
		Last Modified: Sat, 24 Jun 2017 08:22:24 GMT  
		Size: 175.1 KB (175147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfb67f128e28fbcdc8e22057dfe18315a4eaea2781c257d13f714608309ce68`  
		Last Modified: Sat, 24 Jun 2017 08:22:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
