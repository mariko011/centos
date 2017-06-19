<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.2`](#chronograf132)
-	[`chronograf:1.3.2.1`](#chronograf1321)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.2-alpine`](#chronograf132-alpine)
-	[`chronograf:1.3.2.1-alpine`](#chronograf1321-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:edabf2553ba61cdcad1dab899028afab865a89d1aeb8182676fa94dd2f5e012e
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40971516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd4f76220e5d7dc8cda7737c4b65aeeef3669aeab27d4b797d453f87f2cb0ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 07 Jun 2017 19:55:18 GMT
ENV CHRONOGRAF_VERSION=1.3.2.1
# Wed, 07 Jun 2017 19:55:33 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Jun 2017 19:55:35 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 07 Jun 2017 19:55:36 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 07 Jun 2017 19:55:37 GMT
EXPOSE 8888/tcp
# Wed, 07 Jun 2017 19:55:38 GMT
VOLUME [/var/lib/chronograf]
# Mon, 19 Jun 2017 17:22:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 19 Jun 2017 17:22:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 17:22:33 GMT
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
	-	`sha256:1c2e47c8f2d7247cb9ec8b63b8396c188ba13524b646730d049bee2e03468577`  
		Last Modified: Wed, 07 Jun 2017 19:56:47 GMT  
		Size: 10.8 MB (10841767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5066957b27c5be5f68dfeaa425f7283d22211a9afda6e88269c5cb5f5f750`  
		Last Modified: Wed, 07 Jun 2017 19:56:45 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b6c0c7025c88551118eec747e4bdf07d6774b59d4cc4d7fdd68197a592d340`  
		Last Modified: Wed, 07 Jun 2017 19:56:45 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf1445618e86797f2f3d9cf47b6264d96e16176e9cc8b550e4432a0809f6d36`  
		Last Modified: Mon, 19 Jun 2017 17:25:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.2`

```console
$ docker pull chronograf@sha256:edabf2553ba61cdcad1dab899028afab865a89d1aeb8182676fa94dd2f5e012e
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40971516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd4f76220e5d7dc8cda7737c4b65aeeef3669aeab27d4b797d453f87f2cb0ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 07 Jun 2017 19:55:18 GMT
ENV CHRONOGRAF_VERSION=1.3.2.1
# Wed, 07 Jun 2017 19:55:33 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Jun 2017 19:55:35 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 07 Jun 2017 19:55:36 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 07 Jun 2017 19:55:37 GMT
EXPOSE 8888/tcp
# Wed, 07 Jun 2017 19:55:38 GMT
VOLUME [/var/lib/chronograf]
# Mon, 19 Jun 2017 17:22:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 19 Jun 2017 17:22:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 17:22:33 GMT
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
	-	`sha256:1c2e47c8f2d7247cb9ec8b63b8396c188ba13524b646730d049bee2e03468577`  
		Last Modified: Wed, 07 Jun 2017 19:56:47 GMT  
		Size: 10.8 MB (10841767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5066957b27c5be5f68dfeaa425f7283d22211a9afda6e88269c5cb5f5f750`  
		Last Modified: Wed, 07 Jun 2017 19:56:45 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b6c0c7025c88551118eec747e4bdf07d6774b59d4cc4d7fdd68197a592d340`  
		Last Modified: Wed, 07 Jun 2017 19:56:45 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf1445618e86797f2f3d9cf47b6264d96e16176e9cc8b550e4432a0809f6d36`  
		Last Modified: Mon, 19 Jun 2017 17:25:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.2.1`

```console
$ docker pull chronograf@sha256:edabf2553ba61cdcad1dab899028afab865a89d1aeb8182676fa94dd2f5e012e
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40971516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd4f76220e5d7dc8cda7737c4b65aeeef3669aeab27d4b797d453f87f2cb0ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 07 Jun 2017 19:55:18 GMT
ENV CHRONOGRAF_VERSION=1.3.2.1
# Wed, 07 Jun 2017 19:55:33 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Jun 2017 19:55:35 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 07 Jun 2017 19:55:36 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 07 Jun 2017 19:55:37 GMT
EXPOSE 8888/tcp
# Wed, 07 Jun 2017 19:55:38 GMT
VOLUME [/var/lib/chronograf]
# Mon, 19 Jun 2017 17:22:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 19 Jun 2017 17:22:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 17:22:33 GMT
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
	-	`sha256:1c2e47c8f2d7247cb9ec8b63b8396c188ba13524b646730d049bee2e03468577`  
		Last Modified: Wed, 07 Jun 2017 19:56:47 GMT  
		Size: 10.8 MB (10841767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5066957b27c5be5f68dfeaa425f7283d22211a9afda6e88269c5cb5f5f750`  
		Last Modified: Wed, 07 Jun 2017 19:56:45 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b6c0c7025c88551118eec747e4bdf07d6774b59d4cc4d7fdd68197a592d340`  
		Last Modified: Wed, 07 Jun 2017 19:56:45 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf1445618e86797f2f3d9cf47b6264d96e16176e9cc8b550e4432a0809f6d36`  
		Last Modified: Mon, 19 Jun 2017 17:25:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:edabf2553ba61cdcad1dab899028afab865a89d1aeb8182676fa94dd2f5e012e
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40971516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd4f76220e5d7dc8cda7737c4b65aeeef3669aeab27d4b797d453f87f2cb0ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 07 Jun 2017 19:55:18 GMT
ENV CHRONOGRAF_VERSION=1.3.2.1
# Wed, 07 Jun 2017 19:55:33 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Jun 2017 19:55:35 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 07 Jun 2017 19:55:36 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 07 Jun 2017 19:55:37 GMT
EXPOSE 8888/tcp
# Wed, 07 Jun 2017 19:55:38 GMT
VOLUME [/var/lib/chronograf]
# Mon, 19 Jun 2017 17:22:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 19 Jun 2017 17:22:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 17:22:33 GMT
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
	-	`sha256:1c2e47c8f2d7247cb9ec8b63b8396c188ba13524b646730d049bee2e03468577`  
		Last Modified: Wed, 07 Jun 2017 19:56:47 GMT  
		Size: 10.8 MB (10841767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5066957b27c5be5f68dfeaa425f7283d22211a9afda6e88269c5cb5f5f750`  
		Last Modified: Wed, 07 Jun 2017 19:56:45 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b6c0c7025c88551118eec747e4bdf07d6774b59d4cc4d7fdd68197a592d340`  
		Last Modified: Wed, 07 Jun 2017 19:56:45 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf1445618e86797f2f3d9cf47b6264d96e16176e9cc8b550e4432a0809f6d36`  
		Last Modified: Mon, 19 Jun 2017 17:25:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:1779890169cb91a9618e2402fe237bf5f786e4019c0e686eeb5bc4bbcdf0ea76
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8033340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521b5992a47b287e903155120c97d8afca2c9f4e7fec7c917429777c1a0b3210`
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
# Mon, 19 Jun 2017 17:24:10 GMT
ENV CHRONOGRAF_VERSION=1.3.2.1
# Mon, 19 Jun 2017 17:24:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 17:24:36 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 19 Jun 2017 17:24:38 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 19 Jun 2017 17:25:02 GMT
EXPOSE 8888/tcp
# Mon, 19 Jun 2017 17:25:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 19 Jun 2017 17:25:04 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 19 Jun 2017 17:25:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 17:25:28 GMT
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
	-	`sha256:44f8abf13bf88f174bbf565a6ec1771e45e5e8a24a7c6d5f562809b0a792323d`  
		Last Modified: Mon, 19 Jun 2017 17:29:02 GMT  
		Size: 5.7 MB (5687862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b7b9a84650418f75e51a425b5b7cb9f3a0750d79c1589917797fb1615ec9a6`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf1ce6d80fd212bce41924d7780fdf0b10d5a633585b53036ced5277192a9c4`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775122edd3a3ec4d3c748640c8cd4610b2a684b3b56dc49d22b85160c9a9939c`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.2-alpine`

```console
$ docker pull chronograf@sha256:1779890169cb91a9618e2402fe237bf5f786e4019c0e686eeb5bc4bbcdf0ea76
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8033340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521b5992a47b287e903155120c97d8afca2c9f4e7fec7c917429777c1a0b3210`
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
# Mon, 19 Jun 2017 17:24:10 GMT
ENV CHRONOGRAF_VERSION=1.3.2.1
# Mon, 19 Jun 2017 17:24:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 17:24:36 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 19 Jun 2017 17:24:38 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 19 Jun 2017 17:25:02 GMT
EXPOSE 8888/tcp
# Mon, 19 Jun 2017 17:25:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 19 Jun 2017 17:25:04 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 19 Jun 2017 17:25:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 17:25:28 GMT
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
	-	`sha256:44f8abf13bf88f174bbf565a6ec1771e45e5e8a24a7c6d5f562809b0a792323d`  
		Last Modified: Mon, 19 Jun 2017 17:29:02 GMT  
		Size: 5.7 MB (5687862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b7b9a84650418f75e51a425b5b7cb9f3a0750d79c1589917797fb1615ec9a6`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf1ce6d80fd212bce41924d7780fdf0b10d5a633585b53036ced5277192a9c4`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775122edd3a3ec4d3c748640c8cd4610b2a684b3b56dc49d22b85160c9a9939c`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.2.1-alpine`

```console
$ docker pull chronograf@sha256:1779890169cb91a9618e2402fe237bf5f786e4019c0e686eeb5bc4bbcdf0ea76
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.2.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8033340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521b5992a47b287e903155120c97d8afca2c9f4e7fec7c917429777c1a0b3210`
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
# Mon, 19 Jun 2017 17:24:10 GMT
ENV CHRONOGRAF_VERSION=1.3.2.1
# Mon, 19 Jun 2017 17:24:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 17:24:36 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 19 Jun 2017 17:24:38 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 19 Jun 2017 17:25:02 GMT
EXPOSE 8888/tcp
# Mon, 19 Jun 2017 17:25:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 19 Jun 2017 17:25:04 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 19 Jun 2017 17:25:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 17:25:28 GMT
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
	-	`sha256:44f8abf13bf88f174bbf565a6ec1771e45e5e8a24a7c6d5f562809b0a792323d`  
		Last Modified: Mon, 19 Jun 2017 17:29:02 GMT  
		Size: 5.7 MB (5687862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b7b9a84650418f75e51a425b5b7cb9f3a0750d79c1589917797fb1615ec9a6`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf1ce6d80fd212bce41924d7780fdf0b10d5a633585b53036ced5277192a9c4`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775122edd3a3ec4d3c748640c8cd4610b2a684b3b56dc49d22b85160c9a9939c`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:1779890169cb91a9618e2402fe237bf5f786e4019c0e686eeb5bc4bbcdf0ea76
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8033340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521b5992a47b287e903155120c97d8afca2c9f4e7fec7c917429777c1a0b3210`
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
# Mon, 19 Jun 2017 17:24:10 GMT
ENV CHRONOGRAF_VERSION=1.3.2.1
# Mon, 19 Jun 2017 17:24:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 17:24:36 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 19 Jun 2017 17:24:38 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 19 Jun 2017 17:25:02 GMT
EXPOSE 8888/tcp
# Mon, 19 Jun 2017 17:25:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 19 Jun 2017 17:25:04 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 19 Jun 2017 17:25:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 17:25:28 GMT
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
	-	`sha256:44f8abf13bf88f174bbf565a6ec1771e45e5e8a24a7c6d5f562809b0a792323d`  
		Last Modified: Mon, 19 Jun 2017 17:29:02 GMT  
		Size: 5.7 MB (5687862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b7b9a84650418f75e51a425b5b7cb9f3a0750d79c1589917797fb1615ec9a6`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf1ce6d80fd212bce41924d7780fdf0b10d5a633585b53036ced5277192a9c4`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775122edd3a3ec4d3c748640c8cd4610b2a684b3b56dc49d22b85160c9a9939c`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
