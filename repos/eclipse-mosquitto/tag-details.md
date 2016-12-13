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

```console
$ docker pull eclipse-mosquitto@sha256:26f1258f7b46223d941b85984bb5f0fc2d4a461b2c9824de87b3717f9a514175
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c0935fba55c4aa0fe2ecf530c352c46bbb17ea664042d8e6aa729e57f049c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:11 GMT
ADD file:38d7394b7e1446856c1f378920107516931ca6f4099489ba9d7138432b8c3ecb in / 
# Tue, 13 Dec 2016 21:13:52 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 13 Dec 2016 21:13:52 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 13 Dec 2016 21:13:55 GMT
RUN apk --no-cache --update add mosquitto=1.4.4-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 13 Dec 2016 21:13:55 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 13 Dec 2016 21:13:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 21:13:56 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:985c5f84712be156e14b68341b3f7aa6025dd27d104d215739312ee18fff5ac0`  
		Last Modified: Tue, 18 Oct 2016 20:32:19 GMT  
		Size: 2.3 MB (2323454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95945d57517734dd31587aec754ab65aeac4305dffe5c4b2d9fa71ab428904f0`  
		Last Modified: Tue, 13 Dec 2016 21:14:46 GMT  
		Size: 899.7 KB (899706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be39299368f4e0295414231e49a8133c3fcbd10324189f2d4779fad6083cb1da`  
		Last Modified: Tue, 13 Dec 2016 21:14:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
