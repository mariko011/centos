## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:134a3fa880b2df1020a235dd65c8887e39d8000a781e517ecc87bb0f18bd1a0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:fe14655a4fbd4645a81b29dfac5b76d75e2de92c23afc0ceb3d76bd10bed14ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ade15744edd1bc683f439bb111a71f16962385264055724b9141dab6c0211a2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 22:01:21 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Mon, 18 Sep 2017 22:01:21 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Mon, 18 Sep 2017 22:01:24 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Mon, 18 Sep 2017 22:01:25 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Mon, 18 Sep 2017 22:01:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 18 Sep 2017 22:01:25 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f4fda34a9f3fdab97b52bb596d928192d6731e3275a875feed86f20f4d424d`  
		Last Modified: Mon, 18 Sep 2017 22:01:33 GMT  
		Size: 175.2 KB (175203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf291607c6d9026c920751edad83f65fdef044bb7765b6652d454c99dc24223`  
		Last Modified: Mon, 18 Sep 2017 22:01:33 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
