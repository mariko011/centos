<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.8`](#chronograf138)
-	[`chronograf:1.3.8.0`](#chronograf1380)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.8-alpine`](#chronograf138-alpine)
-	[`chronograf:1.3.8.0-alpine`](#chronograf1380-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:820a63f54c286306ae99efaa5dbd5d56de7ca71671daa05abe21dbdeb9a4a617
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41197531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e54ced67dc19453d0427f376de50fa5f296f55a7aecf93c9c92638961d17f75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Sep 2017 19:51:14 GMT
ENV CHRONOGRAF_VERSION=1.3.8.0
# Fri, 08 Sep 2017 19:51:46 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 19:51:48 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 08 Sep 2017 19:51:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Sep 2017 19:51:48 GMT
EXPOSE 8888/tcp
# Fri, 08 Sep 2017 19:51:49 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Sep 2017 19:51:49 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 08 Sep 2017 19:51:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:51:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fd8a122348eac1b78a758ae613295762bab87db0f05d28d6f10fe0f65ef573`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e415046fd9c1a63843bb53ad484ffb1e2e6f7af33fe5bf34ee51feef4ed429`  
		Last Modified: Fri, 08 Sep 2017 19:52:30 GMT  
		Size: 11.1 MB (11053240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e599d9007003f9aeb76799a007be490a85397c2d3e08fec938ab6251c488907`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0182c43e508bc5d78dafefa0fba8cd3f283826e259c4d716f45477fe6e1505`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82c4c3cccd87c11139dd1a856173a94e3fbeca836909b96738433673810508f`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8`

```console
$ docker pull chronograf@sha256:820a63f54c286306ae99efaa5dbd5d56de7ca71671daa05abe21dbdeb9a4a617
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41197531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e54ced67dc19453d0427f376de50fa5f296f55a7aecf93c9c92638961d17f75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Sep 2017 19:51:14 GMT
ENV CHRONOGRAF_VERSION=1.3.8.0
# Fri, 08 Sep 2017 19:51:46 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 19:51:48 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 08 Sep 2017 19:51:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Sep 2017 19:51:48 GMT
EXPOSE 8888/tcp
# Fri, 08 Sep 2017 19:51:49 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Sep 2017 19:51:49 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 08 Sep 2017 19:51:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:51:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fd8a122348eac1b78a758ae613295762bab87db0f05d28d6f10fe0f65ef573`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e415046fd9c1a63843bb53ad484ffb1e2e6f7af33fe5bf34ee51feef4ed429`  
		Last Modified: Fri, 08 Sep 2017 19:52:30 GMT  
		Size: 11.1 MB (11053240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e599d9007003f9aeb76799a007be490a85397c2d3e08fec938ab6251c488907`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0182c43e508bc5d78dafefa0fba8cd3f283826e259c4d716f45477fe6e1505`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82c4c3cccd87c11139dd1a856173a94e3fbeca836909b96738433673810508f`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8.0`

```console
$ docker pull chronograf@sha256:820a63f54c286306ae99efaa5dbd5d56de7ca71671daa05abe21dbdeb9a4a617
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41197531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e54ced67dc19453d0427f376de50fa5f296f55a7aecf93c9c92638961d17f75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Sep 2017 19:51:14 GMT
ENV CHRONOGRAF_VERSION=1.3.8.0
# Fri, 08 Sep 2017 19:51:46 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 19:51:48 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 08 Sep 2017 19:51:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Sep 2017 19:51:48 GMT
EXPOSE 8888/tcp
# Fri, 08 Sep 2017 19:51:49 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Sep 2017 19:51:49 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 08 Sep 2017 19:51:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:51:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fd8a122348eac1b78a758ae613295762bab87db0f05d28d6f10fe0f65ef573`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e415046fd9c1a63843bb53ad484ffb1e2e6f7af33fe5bf34ee51feef4ed429`  
		Last Modified: Fri, 08 Sep 2017 19:52:30 GMT  
		Size: 11.1 MB (11053240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e599d9007003f9aeb76799a007be490a85397c2d3e08fec938ab6251c488907`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0182c43e508bc5d78dafefa0fba8cd3f283826e259c4d716f45477fe6e1505`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82c4c3cccd87c11139dd1a856173a94e3fbeca836909b96738433673810508f`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:820a63f54c286306ae99efaa5dbd5d56de7ca71671daa05abe21dbdeb9a4a617
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41197531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e54ced67dc19453d0427f376de50fa5f296f55a7aecf93c9c92638961d17f75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Sep 2017 19:51:14 GMT
ENV CHRONOGRAF_VERSION=1.3.8.0
# Fri, 08 Sep 2017 19:51:46 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 19:51:48 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 08 Sep 2017 19:51:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Sep 2017 19:51:48 GMT
EXPOSE 8888/tcp
# Fri, 08 Sep 2017 19:51:49 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Sep 2017 19:51:49 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 08 Sep 2017 19:51:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:51:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fd8a122348eac1b78a758ae613295762bab87db0f05d28d6f10fe0f65ef573`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e415046fd9c1a63843bb53ad484ffb1e2e6f7af33fe5bf34ee51feef4ed429`  
		Last Modified: Fri, 08 Sep 2017 19:52:30 GMT  
		Size: 11.1 MB (11053240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e599d9007003f9aeb76799a007be490a85397c2d3e08fec938ab6251c488907`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0182c43e508bc5d78dafefa0fba8cd3f283826e259c4d716f45477fe6e1505`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82c4c3cccd87c11139dd1a856173a94e3fbeca836909b96738433673810508f`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:a791c09d5d4ff6912981eaa38afb73ed1a8a05be5693c6d6a91ceefcfeb4f255
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8207650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79da5768ee4cc46874e2386fea71067e70214ff2cb211ffc4faffe731a33e7df`
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
# Fri, 08 Sep 2017 19:52:07 GMT
ENV CHRONOGRAF_VERSION=1.3.8.0
# Fri, 08 Sep 2017 19:52:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Sep 2017 19:52:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 08 Sep 2017 19:52:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Sep 2017 19:52:16 GMT
EXPOSE 8888/tcp
# Fri, 08 Sep 2017 19:52:16 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Sep 2017 19:52:17 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 08 Sep 2017 19:52:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:52:18 GMT
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
	-	`sha256:4d6185423a0201d2fe66ec7917474504a1d99d3cb045f31b5c7196d18d85168a`  
		Last Modified: Fri, 08 Sep 2017 19:53:15 GMT  
		Size: 5.9 MB (5862217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea66bcb188de4f1e439148835a527be8416b4fa6b916c11e59893e91f35afc`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db41460226cc68bd9db1f190dc55a2fddc8a7546f46c921db0d68f2252536c01`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b02101b87706e2db80d0a4c0b4c52c1a044ca9f4a7ae97b0e4282846cbf818a`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8-alpine`

```console
$ docker pull chronograf@sha256:a791c09d5d4ff6912981eaa38afb73ed1a8a05be5693c6d6a91ceefcfeb4f255
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8207650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79da5768ee4cc46874e2386fea71067e70214ff2cb211ffc4faffe731a33e7df`
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
# Fri, 08 Sep 2017 19:52:07 GMT
ENV CHRONOGRAF_VERSION=1.3.8.0
# Fri, 08 Sep 2017 19:52:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Sep 2017 19:52:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 08 Sep 2017 19:52:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Sep 2017 19:52:16 GMT
EXPOSE 8888/tcp
# Fri, 08 Sep 2017 19:52:16 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Sep 2017 19:52:17 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 08 Sep 2017 19:52:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:52:18 GMT
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
	-	`sha256:4d6185423a0201d2fe66ec7917474504a1d99d3cb045f31b5c7196d18d85168a`  
		Last Modified: Fri, 08 Sep 2017 19:53:15 GMT  
		Size: 5.9 MB (5862217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea66bcb188de4f1e439148835a527be8416b4fa6b916c11e59893e91f35afc`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db41460226cc68bd9db1f190dc55a2fddc8a7546f46c921db0d68f2252536c01`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b02101b87706e2db80d0a4c0b4c52c1a044ca9f4a7ae97b0e4282846cbf818a`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8.0-alpine`

```console
$ docker pull chronograf@sha256:a791c09d5d4ff6912981eaa38afb73ed1a8a05be5693c6d6a91ceefcfeb4f255
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8207650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79da5768ee4cc46874e2386fea71067e70214ff2cb211ffc4faffe731a33e7df`
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
# Fri, 08 Sep 2017 19:52:07 GMT
ENV CHRONOGRAF_VERSION=1.3.8.0
# Fri, 08 Sep 2017 19:52:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Sep 2017 19:52:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 08 Sep 2017 19:52:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Sep 2017 19:52:16 GMT
EXPOSE 8888/tcp
# Fri, 08 Sep 2017 19:52:16 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Sep 2017 19:52:17 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 08 Sep 2017 19:52:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:52:18 GMT
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
	-	`sha256:4d6185423a0201d2fe66ec7917474504a1d99d3cb045f31b5c7196d18d85168a`  
		Last Modified: Fri, 08 Sep 2017 19:53:15 GMT  
		Size: 5.9 MB (5862217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea66bcb188de4f1e439148835a527be8416b4fa6b916c11e59893e91f35afc`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db41460226cc68bd9db1f190dc55a2fddc8a7546f46c921db0d68f2252536c01`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b02101b87706e2db80d0a4c0b4c52c1a044ca9f4a7ae97b0e4282846cbf818a`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:a791c09d5d4ff6912981eaa38afb73ed1a8a05be5693c6d6a91ceefcfeb4f255
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8207650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79da5768ee4cc46874e2386fea71067e70214ff2cb211ffc4faffe731a33e7df`
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
# Fri, 08 Sep 2017 19:52:07 GMT
ENV CHRONOGRAF_VERSION=1.3.8.0
# Fri, 08 Sep 2017 19:52:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Sep 2017 19:52:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 08 Sep 2017 19:52:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Sep 2017 19:52:16 GMT
EXPOSE 8888/tcp
# Fri, 08 Sep 2017 19:52:16 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Sep 2017 19:52:17 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 08 Sep 2017 19:52:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:52:18 GMT
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
	-	`sha256:4d6185423a0201d2fe66ec7917474504a1d99d3cb045f31b5c7196d18d85168a`  
		Last Modified: Fri, 08 Sep 2017 19:53:15 GMT  
		Size: 5.9 MB (5862217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea66bcb188de4f1e439148835a527be8416b4fa6b916c11e59893e91f35afc`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db41460226cc68bd9db1f190dc55a2fddc8a7546f46c921db0d68f2252536c01`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b02101b87706e2db80d0a4c0b4c52c1a044ca9f4a7ae97b0e4282846cbf818a`  
		Last Modified: Fri, 08 Sep 2017 19:53:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
