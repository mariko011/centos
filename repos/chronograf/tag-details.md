<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.6`](#chronograf136)
-	[`chronograf:1.3.6.0`](#chronograf1360)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.6-alpine`](#chronograf136-alpine)
-	[`chronograf:1.3.6.0-alpine`](#chronograf1360-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:0ab16aadab03f96b4d9e823ada465dcbcd1179b5fd640651c9f2ec285d5a9f5a
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc642ad90ae2a6a1d6e4c96894591058cf66ee3bf70a618723281811c9c4227`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 08 Aug 2017 22:15:17 GMT
ENV CHRONOGRAF_VERSION=1.3.6.0
# Tue, 08 Aug 2017 22:15:47 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Aug 2017 22:15:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 22:15:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 22:15:51 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 22:15:52 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 22:15:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 08 Aug 2017 22:15:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 22:15:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357a1e156c1253cf632d3cff5d25c63049663aa53c7ccd27130d26c58ee95916`  
		Last Modified: Tue, 08 Aug 2017 22:16:22 GMT  
		Size: 11.0 MB (10961194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2852595bdc963875b56ee81d27512fb2d03bd053cc80755d49bdcce4a090e63`  
		Last Modified: Tue, 08 Aug 2017 22:16:21 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c33a3766411fe2e54b27482724ef18bf628116cbe10819c96b04c9796a85b1d`  
		Last Modified: Tue, 08 Aug 2017 22:16:21 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6643047f0b8278da99e82083f1b146ca412f7411f64926e71ecd041952e0f3c6`  
		Last Modified: Tue, 08 Aug 2017 22:16:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.6`

```console
$ docker pull chronograf@sha256:0ab16aadab03f96b4d9e823ada465dcbcd1179b5fd640651c9f2ec285d5a9f5a
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc642ad90ae2a6a1d6e4c96894591058cf66ee3bf70a618723281811c9c4227`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 08 Aug 2017 22:15:17 GMT
ENV CHRONOGRAF_VERSION=1.3.6.0
# Tue, 08 Aug 2017 22:15:47 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Aug 2017 22:15:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 22:15:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 22:15:51 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 22:15:52 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 22:15:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 08 Aug 2017 22:15:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 22:15:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357a1e156c1253cf632d3cff5d25c63049663aa53c7ccd27130d26c58ee95916`  
		Last Modified: Tue, 08 Aug 2017 22:16:22 GMT  
		Size: 11.0 MB (10961194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2852595bdc963875b56ee81d27512fb2d03bd053cc80755d49bdcce4a090e63`  
		Last Modified: Tue, 08 Aug 2017 22:16:21 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c33a3766411fe2e54b27482724ef18bf628116cbe10819c96b04c9796a85b1d`  
		Last Modified: Tue, 08 Aug 2017 22:16:21 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6643047f0b8278da99e82083f1b146ca412f7411f64926e71ecd041952e0f3c6`  
		Last Modified: Tue, 08 Aug 2017 22:16:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.6.0`

```console
$ docker pull chronograf@sha256:0ab16aadab03f96b4d9e823ada465dcbcd1179b5fd640651c9f2ec285d5a9f5a
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.6.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc642ad90ae2a6a1d6e4c96894591058cf66ee3bf70a618723281811c9c4227`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 08 Aug 2017 22:15:17 GMT
ENV CHRONOGRAF_VERSION=1.3.6.0
# Tue, 08 Aug 2017 22:15:47 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Aug 2017 22:15:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 22:15:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 22:15:51 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 22:15:52 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 22:15:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 08 Aug 2017 22:15:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 22:15:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357a1e156c1253cf632d3cff5d25c63049663aa53c7ccd27130d26c58ee95916`  
		Last Modified: Tue, 08 Aug 2017 22:16:22 GMT  
		Size: 11.0 MB (10961194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2852595bdc963875b56ee81d27512fb2d03bd053cc80755d49bdcce4a090e63`  
		Last Modified: Tue, 08 Aug 2017 22:16:21 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c33a3766411fe2e54b27482724ef18bf628116cbe10819c96b04c9796a85b1d`  
		Last Modified: Tue, 08 Aug 2017 22:16:21 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6643047f0b8278da99e82083f1b146ca412f7411f64926e71ecd041952e0f3c6`  
		Last Modified: Tue, 08 Aug 2017 22:16:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:0ab16aadab03f96b4d9e823ada465dcbcd1179b5fd640651c9f2ec285d5a9f5a
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc642ad90ae2a6a1d6e4c96894591058cf66ee3bf70a618723281811c9c4227`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 08 Aug 2017 22:15:17 GMT
ENV CHRONOGRAF_VERSION=1.3.6.0
# Tue, 08 Aug 2017 22:15:47 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Aug 2017 22:15:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 22:15:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 22:15:51 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 22:15:52 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 22:15:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 08 Aug 2017 22:15:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 22:15:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357a1e156c1253cf632d3cff5d25c63049663aa53c7ccd27130d26c58ee95916`  
		Last Modified: Tue, 08 Aug 2017 22:16:22 GMT  
		Size: 11.0 MB (10961194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2852595bdc963875b56ee81d27512fb2d03bd053cc80755d49bdcce4a090e63`  
		Last Modified: Tue, 08 Aug 2017 22:16:21 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c33a3766411fe2e54b27482724ef18bf628116cbe10819c96b04c9796a85b1d`  
		Last Modified: Tue, 08 Aug 2017 22:16:21 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6643047f0b8278da99e82083f1b146ca412f7411f64926e71ecd041952e0f3c6`  
		Last Modified: Tue, 08 Aug 2017 22:16:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:b2757ab4f4f907dffdebff2cf484ec87b1f4279c45df61243b6c6fb03c173ddb
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d69551516bf2b5904889f16fadcc1a68647bc4666d599c084f0f2154417b014`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 08 Aug 2017 22:16:00 GMT
ENV CHRONOGRAF_VERSION=1.3.6.0
# Tue, 08 Aug 2017 22:16:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 08 Aug 2017 22:16:08 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 22:16:08 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 22:16:09 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 22:16:09 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 22:16:09 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 08 Aug 2017 22:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 22:16:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96fba74c384bf8fa76da8fdef53a6254f17dc0720c483a7a1c344de51d9c45c`  
		Last Modified: Tue, 08 Aug 2017 22:17:08 GMT  
		Size: 5.8 MB (5775155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b8f73e3673a52c45c66921b806fb47c796351d230a75948d85a1c7cb9a6103`  
		Last Modified: Tue, 08 Aug 2017 22:17:06 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e76725f522d897de0c9c0c1eb1603ace6d63fe7b1a7802b33317fbe159aa24`  
		Last Modified: Tue, 08 Aug 2017 22:17:07 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9540b01014bd25e4cc22ebea8241420c34203b898eb00fd14d9629ead5e57b63`  
		Last Modified: Tue, 08 Aug 2017 22:17:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.6-alpine`

```console
$ docker pull chronograf@sha256:b2757ab4f4f907dffdebff2cf484ec87b1f4279c45df61243b6c6fb03c173ddb
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.6-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d69551516bf2b5904889f16fadcc1a68647bc4666d599c084f0f2154417b014`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 08 Aug 2017 22:16:00 GMT
ENV CHRONOGRAF_VERSION=1.3.6.0
# Tue, 08 Aug 2017 22:16:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 08 Aug 2017 22:16:08 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 22:16:08 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 22:16:09 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 22:16:09 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 22:16:09 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 08 Aug 2017 22:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 22:16:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96fba74c384bf8fa76da8fdef53a6254f17dc0720c483a7a1c344de51d9c45c`  
		Last Modified: Tue, 08 Aug 2017 22:17:08 GMT  
		Size: 5.8 MB (5775155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b8f73e3673a52c45c66921b806fb47c796351d230a75948d85a1c7cb9a6103`  
		Last Modified: Tue, 08 Aug 2017 22:17:06 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e76725f522d897de0c9c0c1eb1603ace6d63fe7b1a7802b33317fbe159aa24`  
		Last Modified: Tue, 08 Aug 2017 22:17:07 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9540b01014bd25e4cc22ebea8241420c34203b898eb00fd14d9629ead5e57b63`  
		Last Modified: Tue, 08 Aug 2017 22:17:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.6.0-alpine`

```console
$ docker pull chronograf@sha256:b2757ab4f4f907dffdebff2cf484ec87b1f4279c45df61243b6c6fb03c173ddb
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.6.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d69551516bf2b5904889f16fadcc1a68647bc4666d599c084f0f2154417b014`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 08 Aug 2017 22:16:00 GMT
ENV CHRONOGRAF_VERSION=1.3.6.0
# Tue, 08 Aug 2017 22:16:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 08 Aug 2017 22:16:08 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 22:16:08 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 22:16:09 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 22:16:09 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 22:16:09 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 08 Aug 2017 22:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 22:16:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96fba74c384bf8fa76da8fdef53a6254f17dc0720c483a7a1c344de51d9c45c`  
		Last Modified: Tue, 08 Aug 2017 22:17:08 GMT  
		Size: 5.8 MB (5775155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b8f73e3673a52c45c66921b806fb47c796351d230a75948d85a1c7cb9a6103`  
		Last Modified: Tue, 08 Aug 2017 22:17:06 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e76725f522d897de0c9c0c1eb1603ace6d63fe7b1a7802b33317fbe159aa24`  
		Last Modified: Tue, 08 Aug 2017 22:17:07 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9540b01014bd25e4cc22ebea8241420c34203b898eb00fd14d9629ead5e57b63`  
		Last Modified: Tue, 08 Aug 2017 22:17:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:b2757ab4f4f907dffdebff2cf484ec87b1f4279c45df61243b6c6fb03c173ddb
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d69551516bf2b5904889f16fadcc1a68647bc4666d599c084f0f2154417b014`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 08 Aug 2017 22:16:00 GMT
ENV CHRONOGRAF_VERSION=1.3.6.0
# Tue, 08 Aug 2017 22:16:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 08 Aug 2017 22:16:08 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 22:16:08 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 22:16:09 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 22:16:09 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 22:16:09 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 08 Aug 2017 22:16:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 22:16:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96fba74c384bf8fa76da8fdef53a6254f17dc0720c483a7a1c344de51d9c45c`  
		Last Modified: Tue, 08 Aug 2017 22:17:08 GMT  
		Size: 5.8 MB (5775155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b8f73e3673a52c45c66921b806fb47c796351d230a75948d85a1c7cb9a6103`  
		Last Modified: Tue, 08 Aug 2017 22:17:06 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e76725f522d897de0c9c0c1eb1603ace6d63fe7b1a7802b33317fbe159aa24`  
		Last Modified: Tue, 08 Aug 2017 22:17:07 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9540b01014bd25e4cc22ebea8241420c34203b898eb00fd14d9629ead5e57b63`  
		Last Modified: Tue, 08 Aug 2017 22:17:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
