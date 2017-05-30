<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.4.10`](#eclipse-mosquitto1410)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)
-	[`eclipse-mosquitto:1.4.8`](#eclipse-mosquitto148)
-	[`eclipse-mosquitto:1.4.4`](#eclipse-mosquitto144)

## `eclipse-mosquitto:1.4.10`

```console
$ docker pull eclipse-mosquitto@sha256:15491ef8e1d3b255d956682620beade92bcab30a89ff72bf353e885152630fad
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5753184f322abaad8e0ecea111ab7324356b7802ab073928bcca3184fa26507`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:11:33 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 30 May 2017 17:12:00 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 30 May 2017 17:12:27 GMT
RUN apk --no-cache add mosquitto=1.4.10-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 30 May 2017 17:12:51 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 30 May 2017 17:12:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 May 2017 17:12:54 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d11cec8b658eb49570fd4aa6bbf7a0c4d6f0fcdedfdfd08a92a9a14c78076dc`  
		Last Modified: Tue, 30 May 2017 17:16:18 GMT  
		Size: 174.6 KB (174629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a19f739dca7066e36d14f124cbbd8f313c605445d2ebf713e30fc4fc55690ad`  
		Last Modified: Tue, 30 May 2017 17:16:18 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:15491ef8e1d3b255d956682620beade92bcab30a89ff72bf353e885152630fad
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5753184f322abaad8e0ecea111ab7324356b7802ab073928bcca3184fa26507`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:11:33 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 30 May 2017 17:12:00 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 30 May 2017 17:12:27 GMT
RUN apk --no-cache add mosquitto=1.4.10-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 30 May 2017 17:12:51 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 30 May 2017 17:12:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 May 2017 17:12:54 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d11cec8b658eb49570fd4aa6bbf7a0c4d6f0fcdedfdfd08a92a9a14c78076dc`  
		Last Modified: Tue, 30 May 2017 17:16:18 GMT  
		Size: 174.6 KB (174629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a19f739dca7066e36d14f124cbbd8f313c605445d2ebf713e30fc4fc55690ad`  
		Last Modified: Tue, 30 May 2017 17:16:18 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.4.8`

```console
$ docker pull eclipse-mosquitto@sha256:8b7d39be5e79dcd1fde098d523ddfc0ed6e4ce88b8bcc7f47d55c08338cad33a
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a86975ac7b6f8c3d32604ce0509bfc3c72281dfe2e26e5eb08b04cc829522b4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:15:12 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 30 May 2017 17:15:14 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 30 May 2017 17:15:19 GMT
RUN apk --no-cache add mosquitto=1.4.8-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 30 May 2017 17:15:50 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 30 May 2017 17:15:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 May 2017 17:15:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58510974d0468bf5dadcfe48abaa2823e13d0a93cc3540294c5ccb405c6d87df`  
		Last Modified: Tue, 30 May 2017 17:18:24 GMT  
		Size: 167.2 KB (167208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d588d9bcda308417c1c405bed42ec6072af80555f9da55db9c036ed62e6ace`  
		Last Modified: Tue, 30 May 2017 17:18:25 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.4.4`

```console
$ docker pull eclipse-mosquitto@sha256:7708a1020dc2952e11163a3c35902c31b335c418ff83295cea9e283fdafeaad2
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2544046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86d22286632e82b18d8373b1ba48f2f6434c53baa05f8ca034a0fb83d30f857`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 25 May 2017 23:31:11 GMT
ADD file:be8974deb8e723cdd5acb55230bbde1f213656a007517f327e42a0603805b68b in / 
# Thu, 25 May 2017 23:31:12 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:13:58 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 30 May 2017 17:13:59 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 30 May 2017 17:14:04 GMT
RUN apk --no-cache add mosquitto=1.4.4-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 30 May 2017 17:14:22 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 30 May 2017 17:14:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 May 2017 17:14:46 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:a00145d6705d15cc09a8e92693337b2329eb41e38c0e797ba38cabba6489784b`  
		Last Modified: Thu, 25 May 2017 23:35:27 GMT  
		Size: 2.4 MB (2392516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb52da89bc340e640bd5ca1a58366e55811bc597b9642a17afb7e6b674f6186a`  
		Last Modified: Tue, 30 May 2017 17:17:42 GMT  
		Size: 151.4 KB (151386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb8cb72b8b676c7d80eb56e80bd964f49a741c22cfd3797a830f4f1999ef598`  
		Last Modified: Tue, 30 May 2017 17:17:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
