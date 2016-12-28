<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.4.8`](#eclipse-mosquitto148)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)
-	[`eclipse-mosquitto:1.4.4`](#eclipse-mosquitto144)

## `eclipse-mosquitto:1.4.8`

```console
$ docker pull eclipse-mosquitto@sha256:de5480803fd3dd2d6dfc897f73c439e6196d79aed9201295c8f8763a8c7c8113
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3241954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a1acd4fcd548e751af7107b2a56bc11f932475d2f61f4fec7e282741b88a7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:52:21 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 27 Dec 2016 18:52:22 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 27 Dec 2016 18:52:24 GMT
RUN apk --no-cache --update add mosquitto=1.4.8-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 27 Dec 2016 18:52:35 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 27 Dec 2016 18:52:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:52:36 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caafb570bc05276659103ec98225e8e729471aedc399a6289b7f357463399be5`  
		Last Modified: Tue, 27 Dec 2016 18:53:13 GMT  
		Size: 928.7 KB (928718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523fcb4c9e9d4dc5c66010a4fad38e075f1eed36125ec19264e63f0dae3af20b`  
		Last Modified: Tue, 27 Dec 2016 18:53:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:de5480803fd3dd2d6dfc897f73c439e6196d79aed9201295c8f8763a8c7c8113
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3241954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a1acd4fcd548e751af7107b2a56bc11f932475d2f61f4fec7e282741b88a7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:52:21 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 27 Dec 2016 18:52:22 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 27 Dec 2016 18:52:24 GMT
RUN apk --no-cache --update add mosquitto=1.4.8-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 27 Dec 2016 18:52:35 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 27 Dec 2016 18:52:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:52:36 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caafb570bc05276659103ec98225e8e729471aedc399a6289b7f357463399be5`  
		Last Modified: Tue, 27 Dec 2016 18:53:13 GMT  
		Size: 928.7 KB (928718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523fcb4c9e9d4dc5c66010a4fad38e075f1eed36125ec19264e63f0dae3af20b`  
		Last Modified: Tue, 27 Dec 2016 18:53:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.4.4`

```console
$ docker pull eclipse-mosquitto@sha256:62537e643b3d8af32ba672a60ce893ca128b1fbaf03c90188074223e6ae1764f
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3224065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb0a4c8bc274658d854d94470d8b33305d54563a52829102d283bd3c008ef30`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:01 GMT
ADD file:62421fd56c1160b96b28fc8320ae4332f8578329ea675d45e7c54a4d161d6d89 in / 
# Tue, 27 Dec 2016 18:52:07 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 27 Dec 2016 18:52:07 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 27 Dec 2016 18:52:09 GMT
RUN apk --no-cache --update add mosquitto=1.4.4-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 27 Dec 2016 18:52:20 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 27 Dec 2016 18:52:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:52:21 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5a026b6c49645017324e8db8865843fcea2c8a65a5f7cdf79779b8fe77ae10e5`  
		Last Modified: Tue, 27 Dec 2016 18:18:30 GMT  
		Size: 2.3 MB (2323723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a662763e0df6f10b43274ae6cdb0c6825b699d0f5c72a3483c58536ee384374f`  
		Last Modified: Tue, 27 Dec 2016 18:52:53 GMT  
		Size: 900.2 KB (900196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4659f535102dc4854720006ce42a092ae8fe9b8d870d00be3f5bc9250f895230`  
		Last Modified: Tue, 27 Dec 2016 18:52:50 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
