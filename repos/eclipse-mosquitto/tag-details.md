<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.4.8`](#eclipse-mosquitto148)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)
-	[`eclipse-mosquitto:1.4.4`](#eclipse-mosquitto144)

## `eclipse-mosquitto:1.4.8`

```console
$ docker pull eclipse-mosquitto@sha256:1c789a5d76eeb5e0a6147c7b0ab091b8505e301f0b36720e740ce68db36db2a9
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3242472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf6f0fccdf5d82706bd5a0d4bfa57d39e1dc001fd9761981419b671729db3e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 13 Dec 2016 21:13:48 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 13 Dec 2016 21:13:48 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 13 Dec 2016 21:13:50 GMT
RUN apk --no-cache --update add mosquitto=1.4.8-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 13 Dec 2016 21:13:51 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 13 Dec 2016 21:13:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 21:13:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32263fda18fae7880ebff8ce5784f45f36c3a1a555fab6b99bc6d94cebdb4c76`  
		Last Modified: Tue, 13 Dec 2016 21:14:12 GMT  
		Size: 929.4 KB (929368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b9ea0e3aba35c1333d0c2967a0ca403119a227fa0d8604f915d18ac3ec0ac0`  
		Last Modified: Tue, 13 Dec 2016 21:14:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:1c789a5d76eeb5e0a6147c7b0ab091b8505e301f0b36720e740ce68db36db2a9
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3242472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf6f0fccdf5d82706bd5a0d4bfa57d39e1dc001fd9761981419b671729db3e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 13 Dec 2016 21:13:48 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 13 Dec 2016 21:13:48 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 13 Dec 2016 21:13:50 GMT
RUN apk --no-cache --update add mosquitto=1.4.8-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 13 Dec 2016 21:13:51 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 13 Dec 2016 21:13:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 21:13:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32263fda18fae7880ebff8ce5784f45f36c3a1a555fab6b99bc6d94cebdb4c76`  
		Last Modified: Tue, 13 Dec 2016 21:14:12 GMT  
		Size: 929.4 KB (929368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b9ea0e3aba35c1333d0c2967a0ca403119a227fa0d8604f915d18ac3ec0ac0`  
		Last Modified: Tue, 13 Dec 2016 21:14:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.4.4`

**does not exist** (yet?)
