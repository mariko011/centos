<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.4.12`](#eclipse-mosquitto1412)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)

## `eclipse-mosquitto:1.4.12`

```console
$ docker pull eclipse-mosquitto@sha256:982bc06475189e3f9f3d51306ffa90f4f6c5e7b3fecf89fe2b2d1b946d5952aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.12` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:11fed5bb0017f2eecfb104205635399876ac53f74400843133033022c1aef948
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd4295dbb5e344b03c305060264edd08f3f844ee6f5065421d893a27f901668`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 22:01:14 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 12 Sep 2017 22:01:14 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 12 Sep 2017 22:01:18 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 12 Sep 2017 22:01:18 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 12 Sep 2017 22:01:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:01:19 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:362f50dc9bd1c8a25342a9d3062ad976f4d3e21245f8a4f17367f64d5de69b74`  
		Last Modified: Tue, 12 Sep 2017 22:01:25 GMT  
		Size: 175.2 KB (175207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a32ffdb781b3d9ef6677f226115137d48e520b28ecdd721ec05312a9c6897c`  
		Last Modified: Tue, 12 Sep 2017 22:01:24 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:982bc06475189e3f9f3d51306ffa90f4f6c5e7b3fecf89fe2b2d1b946d5952aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:11fed5bb0017f2eecfb104205635399876ac53f74400843133033022c1aef948
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd4295dbb5e344b03c305060264edd08f3f844ee6f5065421d893a27f901668`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 22:01:14 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 12 Sep 2017 22:01:14 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 12 Sep 2017 22:01:18 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 12 Sep 2017 22:01:18 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 12 Sep 2017 22:01:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:01:19 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:362f50dc9bd1c8a25342a9d3062ad976f4d3e21245f8a4f17367f64d5de69b74`  
		Last Modified: Tue, 12 Sep 2017 22:01:25 GMT  
		Size: 175.2 KB (175207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a32ffdb781b3d9ef6677f226115137d48e520b28ecdd721ec05312a9c6897c`  
		Last Modified: Tue, 12 Sep 2017 22:01:24 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
