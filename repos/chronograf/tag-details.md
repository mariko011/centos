<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.3`](#chronograf133)
-	[`chronograf:1.3.3.0`](#chronograf1330)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.3-alpine`](#chronograf133-alpine)
-	[`chronograf:1.3.3.0-alpine`](#chronograf1330-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:bc4615b6a9c514ff45015cdf80c00015d7db1523cf935d2b3149937dcd19e908
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40974503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c27db6c634d6d32ad91b1bbed8379ff9647785b407defc57d894dab29a55fea`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 20 Jun 2017 14:43:30 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 20 Jun 2017 14:43:53 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 20 Jun 2017 14:43:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 20 Jun 2017 14:43:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 20 Jun 2017 14:44:00 GMT
EXPOSE 8888/tcp
# Tue, 20 Jun 2017 14:44:01 GMT
VOLUME [/var/lib/chronograf]
# Tue, 20 Jun 2017 14:44:02 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 20 Jun 2017 14:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:44:04 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ca4b952ec9f4b78385c496e943f27323a9c274010b4bfbaca2f50b12729528`  
		Last Modified: Wed, 07 Jun 2017 19:49:43 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e00a2393e1fd9568ee2d1e9898cd0ae40f5d6d87fa70409ef24bb9e46eddbd9`  
		Last Modified: Tue, 20 Jun 2017 14:46:40 GMT  
		Size: 10.8 MB (10844753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef397d88144a1723949bec2e4a5d994e4b60b2c4b6d2ffe3b3be04cfcc7fa3a`  
		Last Modified: Tue, 20 Jun 2017 14:46:38 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edbacc2132ec40b982f3a57c51673b5eebc8fe14ebc13490054b44fd590c691`  
		Last Modified: Tue, 20 Jun 2017 14:46:39 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c55c0897e4618ed9710b535f8c0d075106eb5d3fd01e16d960f2139478c8bca`  
		Last Modified: Tue, 20 Jun 2017 14:46:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.3`

```console
$ docker pull chronograf@sha256:bc4615b6a9c514ff45015cdf80c00015d7db1523cf935d2b3149937dcd19e908
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40974503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c27db6c634d6d32ad91b1bbed8379ff9647785b407defc57d894dab29a55fea`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 20 Jun 2017 14:43:30 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 20 Jun 2017 14:43:53 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 20 Jun 2017 14:43:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 20 Jun 2017 14:43:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 20 Jun 2017 14:44:00 GMT
EXPOSE 8888/tcp
# Tue, 20 Jun 2017 14:44:01 GMT
VOLUME [/var/lib/chronograf]
# Tue, 20 Jun 2017 14:44:02 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 20 Jun 2017 14:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:44:04 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ca4b952ec9f4b78385c496e943f27323a9c274010b4bfbaca2f50b12729528`  
		Last Modified: Wed, 07 Jun 2017 19:49:43 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e00a2393e1fd9568ee2d1e9898cd0ae40f5d6d87fa70409ef24bb9e46eddbd9`  
		Last Modified: Tue, 20 Jun 2017 14:46:40 GMT  
		Size: 10.8 MB (10844753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef397d88144a1723949bec2e4a5d994e4b60b2c4b6d2ffe3b3be04cfcc7fa3a`  
		Last Modified: Tue, 20 Jun 2017 14:46:38 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edbacc2132ec40b982f3a57c51673b5eebc8fe14ebc13490054b44fd590c691`  
		Last Modified: Tue, 20 Jun 2017 14:46:39 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c55c0897e4618ed9710b535f8c0d075106eb5d3fd01e16d960f2139478c8bca`  
		Last Modified: Tue, 20 Jun 2017 14:46:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.3.0`

```console
$ docker pull chronograf@sha256:bc4615b6a9c514ff45015cdf80c00015d7db1523cf935d2b3149937dcd19e908
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40974503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c27db6c634d6d32ad91b1bbed8379ff9647785b407defc57d894dab29a55fea`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 20 Jun 2017 14:43:30 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 20 Jun 2017 14:43:53 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 20 Jun 2017 14:43:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 20 Jun 2017 14:43:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 20 Jun 2017 14:44:00 GMT
EXPOSE 8888/tcp
# Tue, 20 Jun 2017 14:44:01 GMT
VOLUME [/var/lib/chronograf]
# Tue, 20 Jun 2017 14:44:02 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 20 Jun 2017 14:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:44:04 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ca4b952ec9f4b78385c496e943f27323a9c274010b4bfbaca2f50b12729528`  
		Last Modified: Wed, 07 Jun 2017 19:49:43 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e00a2393e1fd9568ee2d1e9898cd0ae40f5d6d87fa70409ef24bb9e46eddbd9`  
		Last Modified: Tue, 20 Jun 2017 14:46:40 GMT  
		Size: 10.8 MB (10844753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef397d88144a1723949bec2e4a5d994e4b60b2c4b6d2ffe3b3be04cfcc7fa3a`  
		Last Modified: Tue, 20 Jun 2017 14:46:38 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edbacc2132ec40b982f3a57c51673b5eebc8fe14ebc13490054b44fd590c691`  
		Last Modified: Tue, 20 Jun 2017 14:46:39 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c55c0897e4618ed9710b535f8c0d075106eb5d3fd01e16d960f2139478c8bca`  
		Last Modified: Tue, 20 Jun 2017 14:46:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:bc4615b6a9c514ff45015cdf80c00015d7db1523cf935d2b3149937dcd19e908
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40974503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c27db6c634d6d32ad91b1bbed8379ff9647785b407defc57d894dab29a55fea`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 20 Jun 2017 14:43:30 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 20 Jun 2017 14:43:53 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 20 Jun 2017 14:43:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 20 Jun 2017 14:43:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 20 Jun 2017 14:44:00 GMT
EXPOSE 8888/tcp
# Tue, 20 Jun 2017 14:44:01 GMT
VOLUME [/var/lib/chronograf]
# Tue, 20 Jun 2017 14:44:02 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 20 Jun 2017 14:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:44:04 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ca4b952ec9f4b78385c496e943f27323a9c274010b4bfbaca2f50b12729528`  
		Last Modified: Wed, 07 Jun 2017 19:49:43 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e00a2393e1fd9568ee2d1e9898cd0ae40f5d6d87fa70409ef24bb9e46eddbd9`  
		Last Modified: Tue, 20 Jun 2017 14:46:40 GMT  
		Size: 10.8 MB (10844753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef397d88144a1723949bec2e4a5d994e4b60b2c4b6d2ffe3b3be04cfcc7fa3a`  
		Last Modified: Tue, 20 Jun 2017 14:46:38 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edbacc2132ec40b982f3a57c51673b5eebc8fe14ebc13490054b44fd590c691`  
		Last Modified: Tue, 20 Jun 2017 14:46:39 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c55c0897e4618ed9710b535f8c0d075106eb5d3fd01e16d960f2139478c8bca`  
		Last Modified: Tue, 20 Jun 2017 14:46:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:4f18dead8a1a2933bb32ec1cdc13a80b8eae1e2d72e9ddd8dd94bde6e95b586f
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8034381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e5896fabc1abff1b13d6078e52b28ff6b1c7d3cde8202ba36253fddebb5d68`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 20 Jun 2017 14:44:51 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 20 Jun 2017 14:44:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Jun 2017 14:45:18 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 20 Jun 2017 14:45:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 20 Jun 2017 14:45:20 GMT
EXPOSE 8888/tcp
# Tue, 20 Jun 2017 14:45:44 GMT
VOLUME [/var/lib/chronograf]
# Tue, 20 Jun 2017 14:45:45 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 20 Jun 2017 14:45:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:45:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c09a0741c03052f1beab00a6a5d26c299c2001a0a1a58d3f89d9e5e13ac84a9`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 5.7 MB (5688912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b6ea6e51bece3a30e3d1e86c9d8dc0bcc13af2bba14f517cb046899417f0bc`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69b91494eb8054157c9068fc34b9dd8bb604a31412317a60c17de8f8c0cc64e`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c6d7765eae0ced7f17605d3abb2c1715e2b98dc0a5dedb2269de978e2af96f`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.3-alpine`

```console
$ docker pull chronograf@sha256:4f18dead8a1a2933bb32ec1cdc13a80b8eae1e2d72e9ddd8dd94bde6e95b586f
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8034381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e5896fabc1abff1b13d6078e52b28ff6b1c7d3cde8202ba36253fddebb5d68`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 20 Jun 2017 14:44:51 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 20 Jun 2017 14:44:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Jun 2017 14:45:18 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 20 Jun 2017 14:45:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 20 Jun 2017 14:45:20 GMT
EXPOSE 8888/tcp
# Tue, 20 Jun 2017 14:45:44 GMT
VOLUME [/var/lib/chronograf]
# Tue, 20 Jun 2017 14:45:45 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 20 Jun 2017 14:45:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:45:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c09a0741c03052f1beab00a6a5d26c299c2001a0a1a58d3f89d9e5e13ac84a9`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 5.7 MB (5688912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b6ea6e51bece3a30e3d1e86c9d8dc0bcc13af2bba14f517cb046899417f0bc`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69b91494eb8054157c9068fc34b9dd8bb604a31412317a60c17de8f8c0cc64e`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c6d7765eae0ced7f17605d3abb2c1715e2b98dc0a5dedb2269de978e2af96f`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.3.0-alpine`

```console
$ docker pull chronograf@sha256:4f18dead8a1a2933bb32ec1cdc13a80b8eae1e2d72e9ddd8dd94bde6e95b586f
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8034381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e5896fabc1abff1b13d6078e52b28ff6b1c7d3cde8202ba36253fddebb5d68`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 20 Jun 2017 14:44:51 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 20 Jun 2017 14:44:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Jun 2017 14:45:18 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 20 Jun 2017 14:45:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 20 Jun 2017 14:45:20 GMT
EXPOSE 8888/tcp
# Tue, 20 Jun 2017 14:45:44 GMT
VOLUME [/var/lib/chronograf]
# Tue, 20 Jun 2017 14:45:45 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 20 Jun 2017 14:45:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:45:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c09a0741c03052f1beab00a6a5d26c299c2001a0a1a58d3f89d9e5e13ac84a9`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 5.7 MB (5688912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b6ea6e51bece3a30e3d1e86c9d8dc0bcc13af2bba14f517cb046899417f0bc`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69b91494eb8054157c9068fc34b9dd8bb604a31412317a60c17de8f8c0cc64e`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c6d7765eae0ced7f17605d3abb2c1715e2b98dc0a5dedb2269de978e2af96f`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:4f18dead8a1a2933bb32ec1cdc13a80b8eae1e2d72e9ddd8dd94bde6e95b586f
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8034381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e5896fabc1abff1b13d6078e52b28ff6b1c7d3cde8202ba36253fddebb5d68`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 20 Jun 2017 14:44:51 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 20 Jun 2017 14:44:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Jun 2017 14:45:18 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 20 Jun 2017 14:45:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 20 Jun 2017 14:45:20 GMT
EXPOSE 8888/tcp
# Tue, 20 Jun 2017 14:45:44 GMT
VOLUME [/var/lib/chronograf]
# Tue, 20 Jun 2017 14:45:45 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 20 Jun 2017 14:45:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:45:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c09a0741c03052f1beab00a6a5d26c299c2001a0a1a58d3f89d9e5e13ac84a9`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 5.7 MB (5688912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b6ea6e51bece3a30e3d1e86c9d8dc0bcc13af2bba14f517cb046899417f0bc`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69b91494eb8054157c9068fc34b9dd8bb604a31412317a60c17de8f8c0cc64e`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c6d7765eae0ced7f17605d3abb2c1715e2b98dc0a5dedb2269de978e2af96f`  
		Last Modified: Tue, 20 Jun 2017 14:49:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
