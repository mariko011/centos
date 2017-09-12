<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.8`](#chronograf138)
-	[`chronograf:1.3.8.1`](#chronograf1381)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.8-alpine`](#chronograf138-alpine)
-	[`chronograf:1.3.8.1-alpine`](#chronograf1381-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:d036fbeb0fe698a995f211288c46d3002ce9949d4929e97931f8b1dc79a9fa06
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41198472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea3d6e2e73d85a70d02fb0cb2928f5d4730604aa50046ddabb87a08dc4718dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 17:42:52 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 12 Sep 2017 17:43:24 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 17:43:24 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Sep 2017 17:43:25 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Sep 2017 17:43:25 GMT
EXPOSE 8888/tcp
# Tue, 12 Sep 2017 17:43:26 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Sep 2017 17:43:26 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Sep 2017 17:43:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 17:43:27 GMT
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
	-	`sha256:9717857beda4ace8783aecec8a362838fec39586203973e589aeefbbc7e0a9cc`  
		Last Modified: Tue, 12 Sep 2017 17:43:56 GMT  
		Size: 11.1 MB (11054191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b54ab8507e7a43e0f82a57219f12a72808146fdc90a7ef83cb2c8218efd`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64018c3f7048c9e2cbec6d298294546dc6ee643ce5149dfbf9eeeac0c8e6773`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 11.9 KB (11890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f875fc874f7f7fd1c357b245506fe65b6bb7e66629870afc23605b7a56a73ff`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8`

```console
$ docker pull chronograf@sha256:d036fbeb0fe698a995f211288c46d3002ce9949d4929e97931f8b1dc79a9fa06
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41198472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea3d6e2e73d85a70d02fb0cb2928f5d4730604aa50046ddabb87a08dc4718dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 17:42:52 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 12 Sep 2017 17:43:24 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 17:43:24 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Sep 2017 17:43:25 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Sep 2017 17:43:25 GMT
EXPOSE 8888/tcp
# Tue, 12 Sep 2017 17:43:26 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Sep 2017 17:43:26 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Sep 2017 17:43:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 17:43:27 GMT
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
	-	`sha256:9717857beda4ace8783aecec8a362838fec39586203973e589aeefbbc7e0a9cc`  
		Last Modified: Tue, 12 Sep 2017 17:43:56 GMT  
		Size: 11.1 MB (11054191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b54ab8507e7a43e0f82a57219f12a72808146fdc90a7ef83cb2c8218efd`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64018c3f7048c9e2cbec6d298294546dc6ee643ce5149dfbf9eeeac0c8e6773`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 11.9 KB (11890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f875fc874f7f7fd1c357b245506fe65b6bb7e66629870afc23605b7a56a73ff`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8.1`

```console
$ docker pull chronograf@sha256:d036fbeb0fe698a995f211288c46d3002ce9949d4929e97931f8b1dc79a9fa06
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41198472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea3d6e2e73d85a70d02fb0cb2928f5d4730604aa50046ddabb87a08dc4718dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 17:42:52 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 12 Sep 2017 17:43:24 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 17:43:24 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Sep 2017 17:43:25 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Sep 2017 17:43:25 GMT
EXPOSE 8888/tcp
# Tue, 12 Sep 2017 17:43:26 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Sep 2017 17:43:26 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Sep 2017 17:43:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 17:43:27 GMT
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
	-	`sha256:9717857beda4ace8783aecec8a362838fec39586203973e589aeefbbc7e0a9cc`  
		Last Modified: Tue, 12 Sep 2017 17:43:56 GMT  
		Size: 11.1 MB (11054191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b54ab8507e7a43e0f82a57219f12a72808146fdc90a7ef83cb2c8218efd`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64018c3f7048c9e2cbec6d298294546dc6ee643ce5149dfbf9eeeac0c8e6773`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 11.9 KB (11890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f875fc874f7f7fd1c357b245506fe65b6bb7e66629870afc23605b7a56a73ff`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d036fbeb0fe698a995f211288c46d3002ce9949d4929e97931f8b1dc79a9fa06
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41198472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea3d6e2e73d85a70d02fb0cb2928f5d4730604aa50046ddabb87a08dc4718dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 17:42:52 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 12 Sep 2017 17:43:24 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 17:43:24 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Sep 2017 17:43:25 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Sep 2017 17:43:25 GMT
EXPOSE 8888/tcp
# Tue, 12 Sep 2017 17:43:26 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Sep 2017 17:43:26 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Sep 2017 17:43:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 17:43:27 GMT
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
	-	`sha256:9717857beda4ace8783aecec8a362838fec39586203973e589aeefbbc7e0a9cc`  
		Last Modified: Tue, 12 Sep 2017 17:43:56 GMT  
		Size: 11.1 MB (11054191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b54ab8507e7a43e0f82a57219f12a72808146fdc90a7ef83cb2c8218efd`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64018c3f7048c9e2cbec6d298294546dc6ee643ce5149dfbf9eeeac0c8e6773`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 11.9 KB (11890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f875fc874f7f7fd1c357b245506fe65b6bb7e66629870afc23605b7a56a73ff`  
		Last Modified: Tue, 12 Sep 2017 17:43:54 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:5b895d78dc0d199be8edb1ac172e7972a0dafeb227518e254e6a4e01596b2a32
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5db702ca2bc046d73c23b1ed193e5d368477f1264a2eefdff782cc0970bd2d`
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
# Tue, 12 Sep 2017 17:43:34 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 12 Sep 2017 17:43:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 12 Sep 2017 17:43:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 12 Sep 2017 17:43:42 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Sep 2017 17:43:42 GMT
EXPOSE 8888/tcp
# Tue, 12 Sep 2017 17:43:43 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Sep 2017 17:43:43 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 12 Sep 2017 17:43:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 17:43:44 GMT
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
	-	`sha256:7e8fa97b50b926c31ff473f96b4cac5cf7977a2f779f3d6f6ebb9e4697852e51`  
		Last Modified: Tue, 12 Sep 2017 17:44:35 GMT  
		Size: 5.9 MB (5862720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8833901dc7c89a1fd4c95b0c43cc02290936c900074b4aa950f8a6da06c727`  
		Last Modified: Tue, 12 Sep 2017 17:44:35 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7755aa97657554291d1b63de8f8aff6fcb98b358e8763d73a221ee90c91da96a`  
		Last Modified: Tue, 12 Sep 2017 17:44:34 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7306dc61a079bfdce8154c9d0886526230121187b966efa8cf3c4f52f636456`  
		Last Modified: Tue, 12 Sep 2017 17:44:34 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8-alpine`

```console
$ docker pull chronograf@sha256:5b895d78dc0d199be8edb1ac172e7972a0dafeb227518e254e6a4e01596b2a32
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5db702ca2bc046d73c23b1ed193e5d368477f1264a2eefdff782cc0970bd2d`
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
# Tue, 12 Sep 2017 17:43:34 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 12 Sep 2017 17:43:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 12 Sep 2017 17:43:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 12 Sep 2017 17:43:42 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Sep 2017 17:43:42 GMT
EXPOSE 8888/tcp
# Tue, 12 Sep 2017 17:43:43 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Sep 2017 17:43:43 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 12 Sep 2017 17:43:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 17:43:44 GMT
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
	-	`sha256:7e8fa97b50b926c31ff473f96b4cac5cf7977a2f779f3d6f6ebb9e4697852e51`  
		Last Modified: Tue, 12 Sep 2017 17:44:35 GMT  
		Size: 5.9 MB (5862720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8833901dc7c89a1fd4c95b0c43cc02290936c900074b4aa950f8a6da06c727`  
		Last Modified: Tue, 12 Sep 2017 17:44:35 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7755aa97657554291d1b63de8f8aff6fcb98b358e8763d73a221ee90c91da96a`  
		Last Modified: Tue, 12 Sep 2017 17:44:34 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7306dc61a079bfdce8154c9d0886526230121187b966efa8cf3c4f52f636456`  
		Last Modified: Tue, 12 Sep 2017 17:44:34 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8.1-alpine`

```console
$ docker pull chronograf@sha256:5b895d78dc0d199be8edb1ac172e7972a0dafeb227518e254e6a4e01596b2a32
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8.1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5db702ca2bc046d73c23b1ed193e5d368477f1264a2eefdff782cc0970bd2d`
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
# Tue, 12 Sep 2017 17:43:34 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 12 Sep 2017 17:43:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 12 Sep 2017 17:43:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 12 Sep 2017 17:43:42 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Sep 2017 17:43:42 GMT
EXPOSE 8888/tcp
# Tue, 12 Sep 2017 17:43:43 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Sep 2017 17:43:43 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 12 Sep 2017 17:43:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 17:43:44 GMT
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
	-	`sha256:7e8fa97b50b926c31ff473f96b4cac5cf7977a2f779f3d6f6ebb9e4697852e51`  
		Last Modified: Tue, 12 Sep 2017 17:44:35 GMT  
		Size: 5.9 MB (5862720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8833901dc7c89a1fd4c95b0c43cc02290936c900074b4aa950f8a6da06c727`  
		Last Modified: Tue, 12 Sep 2017 17:44:35 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7755aa97657554291d1b63de8f8aff6fcb98b358e8763d73a221ee90c91da96a`  
		Last Modified: Tue, 12 Sep 2017 17:44:34 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7306dc61a079bfdce8154c9d0886526230121187b966efa8cf3c4f52f636456`  
		Last Modified: Tue, 12 Sep 2017 17:44:34 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:5b895d78dc0d199be8edb1ac172e7972a0dafeb227518e254e6a4e01596b2a32
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5db702ca2bc046d73c23b1ed193e5d368477f1264a2eefdff782cc0970bd2d`
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
# Tue, 12 Sep 2017 17:43:34 GMT
ENV CHRONOGRAF_VERSION=1.3.8.1
# Tue, 12 Sep 2017 17:43:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 12 Sep 2017 17:43:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 12 Sep 2017 17:43:42 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Sep 2017 17:43:42 GMT
EXPOSE 8888/tcp
# Tue, 12 Sep 2017 17:43:43 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Sep 2017 17:43:43 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 12 Sep 2017 17:43:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 17:43:44 GMT
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
	-	`sha256:7e8fa97b50b926c31ff473f96b4cac5cf7977a2f779f3d6f6ebb9e4697852e51`  
		Last Modified: Tue, 12 Sep 2017 17:44:35 GMT  
		Size: 5.9 MB (5862720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8833901dc7c89a1fd4c95b0c43cc02290936c900074b4aa950f8a6da06c727`  
		Last Modified: Tue, 12 Sep 2017 17:44:35 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7755aa97657554291d1b63de8f8aff6fcb98b358e8763d73a221ee90c91da96a`  
		Last Modified: Tue, 12 Sep 2017 17:44:34 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7306dc61a079bfdce8154c9d0886526230121187b966efa8cf3c4f52f636456`  
		Last Modified: Tue, 12 Sep 2017 17:44:34 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
