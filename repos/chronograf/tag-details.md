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
$ docker pull chronograf@sha256:5ed47479e0b2b41258ad2a9166e011f6228d1ed7ad1feadea9e7d37953591a7b
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41007672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8e29b93527543397e049384349619a56370e8f667b2414d38183738b5d24ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:22:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 21 Jun 2017 01:22:20 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Wed, 21 Jun 2017 01:22:42 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Jun 2017 01:23:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 21 Jun 2017 01:23:07 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 21 Jun 2017 01:23:07 GMT
EXPOSE 8888/tcp
# Wed, 21 Jun 2017 01:23:08 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Jun 2017 01:23:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 21 Jun 2017 01:23:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Jun 2017 01:23:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac15120ad01b24533b5a5b037d3fe200194d9fa1509ea6a73d2eacb92bf8b8ff`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c08ae9a816d6ae29dcaa023340ce526a91c6b0f05dc898eee8f2e133da1da7f`  
		Last Modified: Sat, 24 Jun 2017 06:27:41 GMT  
		Size: 10.8 MB (10846233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb2af0c4ebc484db8d280a381cb8ec733498a67b96a84c5a8be5c34a945a427`  
		Last Modified: Sat, 24 Jun 2017 06:27:40 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a2734576155846a7806c1b36f70cd26823bcd4936102a15c3ea1b56c63a243`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 11.9 KB (11892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f19303f5f2e1d116d386b3bde9a32c94f0a4dacae35782780d08a059806434`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.3`

```console
$ docker pull chronograf@sha256:5ed47479e0b2b41258ad2a9166e011f6228d1ed7ad1feadea9e7d37953591a7b
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41007672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8e29b93527543397e049384349619a56370e8f667b2414d38183738b5d24ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:22:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 21 Jun 2017 01:22:20 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Wed, 21 Jun 2017 01:22:42 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Jun 2017 01:23:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 21 Jun 2017 01:23:07 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 21 Jun 2017 01:23:07 GMT
EXPOSE 8888/tcp
# Wed, 21 Jun 2017 01:23:08 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Jun 2017 01:23:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 21 Jun 2017 01:23:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Jun 2017 01:23:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac15120ad01b24533b5a5b037d3fe200194d9fa1509ea6a73d2eacb92bf8b8ff`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c08ae9a816d6ae29dcaa023340ce526a91c6b0f05dc898eee8f2e133da1da7f`  
		Last Modified: Sat, 24 Jun 2017 06:27:41 GMT  
		Size: 10.8 MB (10846233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb2af0c4ebc484db8d280a381cb8ec733498a67b96a84c5a8be5c34a945a427`  
		Last Modified: Sat, 24 Jun 2017 06:27:40 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a2734576155846a7806c1b36f70cd26823bcd4936102a15c3ea1b56c63a243`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 11.9 KB (11892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f19303f5f2e1d116d386b3bde9a32c94f0a4dacae35782780d08a059806434`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.3.0`

```console
$ docker pull chronograf@sha256:5ed47479e0b2b41258ad2a9166e011f6228d1ed7ad1feadea9e7d37953591a7b
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41007672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8e29b93527543397e049384349619a56370e8f667b2414d38183738b5d24ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:22:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 21 Jun 2017 01:22:20 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Wed, 21 Jun 2017 01:22:42 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Jun 2017 01:23:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 21 Jun 2017 01:23:07 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 21 Jun 2017 01:23:07 GMT
EXPOSE 8888/tcp
# Wed, 21 Jun 2017 01:23:08 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Jun 2017 01:23:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 21 Jun 2017 01:23:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Jun 2017 01:23:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac15120ad01b24533b5a5b037d3fe200194d9fa1509ea6a73d2eacb92bf8b8ff`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c08ae9a816d6ae29dcaa023340ce526a91c6b0f05dc898eee8f2e133da1da7f`  
		Last Modified: Sat, 24 Jun 2017 06:27:41 GMT  
		Size: 10.8 MB (10846233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb2af0c4ebc484db8d280a381cb8ec733498a67b96a84c5a8be5c34a945a427`  
		Last Modified: Sat, 24 Jun 2017 06:27:40 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a2734576155846a7806c1b36f70cd26823bcd4936102a15c3ea1b56c63a243`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 11.9 KB (11892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f19303f5f2e1d116d386b3bde9a32c94f0a4dacae35782780d08a059806434`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:5ed47479e0b2b41258ad2a9166e011f6228d1ed7ad1feadea9e7d37953591a7b
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41007672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8e29b93527543397e049384349619a56370e8f667b2414d38183738b5d24ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:22:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 21 Jun 2017 01:22:20 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Wed, 21 Jun 2017 01:22:42 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Jun 2017 01:23:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 21 Jun 2017 01:23:07 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 21 Jun 2017 01:23:07 GMT
EXPOSE 8888/tcp
# Wed, 21 Jun 2017 01:23:08 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Jun 2017 01:23:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 21 Jun 2017 01:23:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Jun 2017 01:23:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac15120ad01b24533b5a5b037d3fe200194d9fa1509ea6a73d2eacb92bf8b8ff`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c08ae9a816d6ae29dcaa023340ce526a91c6b0f05dc898eee8f2e133da1da7f`  
		Last Modified: Sat, 24 Jun 2017 06:27:41 GMT  
		Size: 10.8 MB (10846233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb2af0c4ebc484db8d280a381cb8ec733498a67b96a84c5a8be5c34a945a427`  
		Last Modified: Sat, 24 Jun 2017 06:27:40 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a2734576155846a7806c1b36f70cd26823bcd4936102a15c3ea1b56c63a243`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 11.9 KB (11892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f19303f5f2e1d116d386b3bde9a32c94f0a4dacae35782780d08a059806434`  
		Last Modified: Sat, 24 Jun 2017 06:27:39 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:b625096b08cf306f19bc441bf1c2255c918736ea1beb16d7600d17dd6c7e83fd
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8034354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498b4fe953ce84474625d23be019040a0d8dde6f4d43eaa02ce35aca9115053a`
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
# Tue, 27 Jun 2017 20:01:04 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 27 Jun 2017 20:01:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Jun 2017 20:01:33 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 27 Jun 2017 20:01:35 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 27 Jun 2017 20:01:35 GMT
EXPOSE 8888/tcp
# Tue, 27 Jun 2017 20:01:36 GMT
VOLUME [/var/lib/chronograf]
# Tue, 27 Jun 2017 20:02:02 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 27 Jun 2017 20:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Jun 2017 20:02:04 GMT
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
	-	`sha256:4ff40238f18c4b43116b2ed52bcf88b2ad52c6c3fe450f2bbd235848cc9d6679`  
		Last Modified: Thu, 29 Jun 2017 18:36:24 GMT  
		Size: 5.7 MB (5688915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278763359774d2d8b21b230b66c58f60f0427d80e747a791be20ffa358fa1c45`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f7cc001eaee015a11ca05a4268744b82cc6b2e8f27cb0e064e4313a123e4a`  
		Last Modified: Thu, 29 Jun 2017 18:36:21 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac937a73d8b3ff731a978e0517f488c2b35b0bd2ce465661d60f67ec93395b2`  
		Last Modified: Thu, 29 Jun 2017 18:36:21 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.3-alpine`

```console
$ docker pull chronograf@sha256:b625096b08cf306f19bc441bf1c2255c918736ea1beb16d7600d17dd6c7e83fd
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8034354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498b4fe953ce84474625d23be019040a0d8dde6f4d43eaa02ce35aca9115053a`
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
# Tue, 27 Jun 2017 20:01:04 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 27 Jun 2017 20:01:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Jun 2017 20:01:33 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 27 Jun 2017 20:01:35 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 27 Jun 2017 20:01:35 GMT
EXPOSE 8888/tcp
# Tue, 27 Jun 2017 20:01:36 GMT
VOLUME [/var/lib/chronograf]
# Tue, 27 Jun 2017 20:02:02 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 27 Jun 2017 20:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Jun 2017 20:02:04 GMT
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
	-	`sha256:4ff40238f18c4b43116b2ed52bcf88b2ad52c6c3fe450f2bbd235848cc9d6679`  
		Last Modified: Thu, 29 Jun 2017 18:36:24 GMT  
		Size: 5.7 MB (5688915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278763359774d2d8b21b230b66c58f60f0427d80e747a791be20ffa358fa1c45`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f7cc001eaee015a11ca05a4268744b82cc6b2e8f27cb0e064e4313a123e4a`  
		Last Modified: Thu, 29 Jun 2017 18:36:21 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac937a73d8b3ff731a978e0517f488c2b35b0bd2ce465661d60f67ec93395b2`  
		Last Modified: Thu, 29 Jun 2017 18:36:21 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.3.0-alpine`

```console
$ docker pull chronograf@sha256:b625096b08cf306f19bc441bf1c2255c918736ea1beb16d7600d17dd6c7e83fd
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8034354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498b4fe953ce84474625d23be019040a0d8dde6f4d43eaa02ce35aca9115053a`
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
# Tue, 27 Jun 2017 20:01:04 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 27 Jun 2017 20:01:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Jun 2017 20:01:33 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 27 Jun 2017 20:01:35 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 27 Jun 2017 20:01:35 GMT
EXPOSE 8888/tcp
# Tue, 27 Jun 2017 20:01:36 GMT
VOLUME [/var/lib/chronograf]
# Tue, 27 Jun 2017 20:02:02 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 27 Jun 2017 20:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Jun 2017 20:02:04 GMT
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
	-	`sha256:4ff40238f18c4b43116b2ed52bcf88b2ad52c6c3fe450f2bbd235848cc9d6679`  
		Last Modified: Thu, 29 Jun 2017 18:36:24 GMT  
		Size: 5.7 MB (5688915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278763359774d2d8b21b230b66c58f60f0427d80e747a791be20ffa358fa1c45`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f7cc001eaee015a11ca05a4268744b82cc6b2e8f27cb0e064e4313a123e4a`  
		Last Modified: Thu, 29 Jun 2017 18:36:21 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac937a73d8b3ff731a978e0517f488c2b35b0bd2ce465661d60f67ec93395b2`  
		Last Modified: Thu, 29 Jun 2017 18:36:21 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:b625096b08cf306f19bc441bf1c2255c918736ea1beb16d7600d17dd6c7e83fd
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8034354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498b4fe953ce84474625d23be019040a0d8dde6f4d43eaa02ce35aca9115053a`
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
# Tue, 27 Jun 2017 20:01:04 GMT
ENV CHRONOGRAF_VERSION=1.3.3.0
# Tue, 27 Jun 2017 20:01:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Jun 2017 20:01:33 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 27 Jun 2017 20:01:35 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 27 Jun 2017 20:01:35 GMT
EXPOSE 8888/tcp
# Tue, 27 Jun 2017 20:01:36 GMT
VOLUME [/var/lib/chronograf]
# Tue, 27 Jun 2017 20:02:02 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 27 Jun 2017 20:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Jun 2017 20:02:04 GMT
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
	-	`sha256:4ff40238f18c4b43116b2ed52bcf88b2ad52c6c3fe450f2bbd235848cc9d6679`  
		Last Modified: Thu, 29 Jun 2017 18:36:24 GMT  
		Size: 5.7 MB (5688915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278763359774d2d8b21b230b66c58f60f0427d80e747a791be20ffa358fa1c45`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f7cc001eaee015a11ca05a4268744b82cc6b2e8f27cb0e064e4313a123e4a`  
		Last Modified: Thu, 29 Jun 2017 18:36:21 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac937a73d8b3ff731a978e0517f488c2b35b0bd2ce465661d60f67ec93395b2`  
		Last Modified: Thu, 29 Jun 2017 18:36:21 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
