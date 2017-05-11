<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.4.10`](#eclipse-mosquitto1410)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)
-	[`eclipse-mosquitto:1.4.8`](#eclipse-mosquitto148)
-	[`eclipse-mosquitto:1.4.4`](#eclipse-mosquitto144)

## `eclipse-mosquitto:1.4.10`

```console
$ docker pull eclipse-mosquitto@sha256:b7e9e5e1480c7639adab2d366a92507246eb82a8d930d0a2687686e413178ed0
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.10` - linux; amd64

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

## `eclipse-mosquitto:1.4.8`

```console
$ docker pull eclipse-mosquitto@sha256:9731fb5b68e1d82b298fd0be72539436f22587c157884d889b1a63c1f221626f
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fc7a98b0d935573a212fff8819d73c391f4c77aa628eb71054bc4cd0e09b76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:20:12 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Wed, 10 May 2017 21:20:13 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Wed, 10 May 2017 21:20:15 GMT
RUN apk --no-cache add mosquitto=1.4.8-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Wed, 10 May 2017 21:20:16 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Wed, 10 May 2017 21:20:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 21:20:18 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88742525d20d46637dae9efcddebf3e7d0fc265c3ba34ea59a97294523bd82ab`  
		Last Modified: Thu, 11 May 2017 15:31:54 GMT  
		Size: 167.2 KB (167222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d05f6ebfd619f7948e6d64d582aa3edc89a28caa97abc91b222c5c1aa44553b`  
		Last Modified: Thu, 11 May 2017 15:31:54 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.4.4`

```console
$ docker pull eclipse-mosquitto@sha256:5ed29321138a7e765ac925d5fb4a9dd8692ac63adb4fddf1b1dd8bae2548321f
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2544045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad69f16fab449566789fecdec098139998e5c13d8f8ca606c108b512589e01c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 10 May 2017 16:36:53 GMT
ADD file:d795e7c57d5367a709ba11dd4f533e690f47ff790dd86c3859a0fffde29abd5c in / 
# Wed, 10 May 2017 16:36:54 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:19:46 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Wed, 10 May 2017 21:19:47 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Wed, 10 May 2017 21:19:50 GMT
RUN apk --no-cache add mosquitto=1.4.4-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Wed, 10 May 2017 21:19:51 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Wed, 10 May 2017 21:19:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 21:19:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:957bc456a443ef44db30210ad246824e826a0fadac8b0df55ee5c867b4d31eab`  
		Last Modified: Wed, 10 May 2017 16:40:11 GMT  
		Size: 2.4 MB (2392515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31bb6ea114521e5194e5dee36b1b3cf8cdbb8d27c4a7de4da44204f8d92e800`  
		Last Modified: Thu, 11 May 2017 15:31:28 GMT  
		Size: 151.4 KB (151385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d281b7236651cfb9de6883fb81520acc4bc6ef9c4205c32c49f0a1de0403dd`  
		Last Modified: Thu, 11 May 2017 15:31:27 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
