<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.4.10`](#eclipse-mosquitto1410)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)
-	[`eclipse-mosquitto:1.4.8`](#eclipse-mosquitto148)
-	[`eclipse-mosquitto:1.4.4`](#eclipse-mosquitto144)

## `eclipse-mosquitto:1.4.10`

```console
$ docker pull eclipse-mosquitto@sha256:9fa2640d6c9c4750a3458307d1ec87651d2018511a5daf4810294e5e7d5dceff
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2071982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7fc98f4b331701d9b50de0e8c866e48d81863a53f63d8c26d4f1948b577a82`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Thu, 05 Jan 2017 23:56:30 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Thu, 05 Jan 2017 23:56:30 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Thu, 05 Jan 2017 23:56:33 GMT
RUN apk --no-cache add mosquitto=1.4.10-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Thu, 05 Jan 2017 23:56:44 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Thu, 05 Jan 2017 23:56:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Jan 2017 23:56:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75f87f0f26d8b12edbe044a0529e1536d2ab3d83c9e24eea1a235b31f738afd`  
		Last Modified: Thu, 05 Jan 2017 23:57:28 GMT  
		Size: 169.8 KB (169773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e1df5087349fdf5c1080fadead75d430821c8812860885dc6db1109268a41f`  
		Last Modified: Thu, 05 Jan 2017 23:57:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:9fa2640d6c9c4750a3458307d1ec87651d2018511a5daf4810294e5e7d5dceff
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2071982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7fc98f4b331701d9b50de0e8c866e48d81863a53f63d8c26d4f1948b577a82`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Thu, 05 Jan 2017 23:56:30 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Thu, 05 Jan 2017 23:56:30 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Thu, 05 Jan 2017 23:56:33 GMT
RUN apk --no-cache add mosquitto=1.4.10-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Thu, 05 Jan 2017 23:56:44 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Thu, 05 Jan 2017 23:56:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Jan 2017 23:56:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75f87f0f26d8b12edbe044a0529e1536d2ab3d83c9e24eea1a235b31f738afd`  
		Last Modified: Thu, 05 Jan 2017 23:57:28 GMT  
		Size: 169.8 KB (169773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e1df5087349fdf5c1080fadead75d430821c8812860885dc6db1109268a41f`  
		Last Modified: Thu, 05 Jan 2017 23:57:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.4.8`

```console
$ docker pull eclipse-mosquitto@sha256:85fcb0339a4f4f14db57b9538506888642476bdf642bd3cd22453add23d1d6af
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2476086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66e76274043e093366285904d067dec05f4a01e2959b1530a93146d29b75a8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:52:21 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 27 Dec 2016 18:52:22 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Thu, 05 Jan 2017 23:56:47 GMT
RUN apk --no-cache add mosquitto=1.4.8-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Thu, 05 Jan 2017 23:56:58 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Thu, 05 Jan 2017 23:56:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Jan 2017 23:56:59 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe79b8d3f3cb747104e122e2115afe05592cf08b8a00b2851273aef0bc26d86`  
		Last Modified: Thu, 05 Jan 2017 23:58:14 GMT  
		Size: 162.9 KB (162852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423713f00b09a3c6e4ac9032100e5975a62207cbcc9c0fd37b2ae09fac71fa7`  
		Last Modified: Thu, 05 Jan 2017 23:58:13 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.4.4`

```console
$ docker pull eclipse-mosquitto@sha256:45f13c5ffa4423160078d78b4728b050dad7578f011870205b417d5f0cdbd36d
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2471182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41fff158ec20b9cec27d8df2892b198af35f5c17881442d364302a7fd43f1a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:01 GMT
ADD file:62421fd56c1160b96b28fc8320ae4332f8578329ea675d45e7c54a4d161d6d89 in / 
# Tue, 27 Dec 2016 18:52:07 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 27 Dec 2016 18:52:07 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Thu, 05 Jan 2017 23:57:01 GMT
RUN apk --no-cache add mosquitto=1.4.4-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Thu, 05 Jan 2017 23:57:12 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Thu, 05 Jan 2017 23:57:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Jan 2017 23:57:12 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5a026b6c49645017324e8db8865843fcea2c8a65a5f7cdf79779b8fe77ae10e5`  
		Last Modified: Tue, 27 Dec 2016 18:18:30 GMT  
		Size: 2.3 MB (2323723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ae984a587c397d0e040f16d88900d7b7afc3b9dfbf52269e59622656c6f238`  
		Last Modified: Thu, 05 Jan 2017 23:58:37 GMT  
		Size: 147.3 KB (147313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2dcc0f5beda164c1576e56e3f04018a0e74e60612b76998e890f4b3fb0f30f`  
		Last Modified: Thu, 05 Jan 2017 23:58:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
