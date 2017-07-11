<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.4`](#chronograf134)
-	[`chronograf:1.3.4.0`](#chronograf1340)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.4-alpine`](#chronograf134-alpine)
-	[`chronograf:1.3.4.0-alpine`](#chronograf1340-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:847b0543a8881ab1a180f0ffad7162ea0d259d270bd216c4009f1bd57ae8a1c4
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41028784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a01d962d4eb9071b32ccbff083e9f6b4c11a3d0cec9a0877e9a520021333be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:22:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 10 Jul 2017 23:36:08 GMT
ENV CHRONOGRAF_VERSION=1.3.4.0
# Mon, 10 Jul 2017 23:36:28 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 10 Jul 2017 23:36:30 GMT
EXPOSE 8888/tcp
# Mon, 10 Jul 2017 23:36:30 GMT
VOLUME [/var/lib/chronograf]
# Mon, 10 Jul 2017 23:36:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 10 Jul 2017 23:36:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Jul 2017 23:36:32 GMT
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
	-	`sha256:b70bb5b4a4b5d70e1e6db7411913398709fc56f98fe937c139e61f295b6d44b3`  
		Last Modified: Mon, 10 Jul 2017 23:37:04 GMT  
		Size: 10.9 MB (10867346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feaba91193bdf2efe6398e3fb8948165c95642e99afd8e57ff64e3e82a94740`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c27efa7cdc0595b952121a3c6c0a12e2582a94991af0caf0390588f5e6aa4`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fe785c49466778fdc37bf50ba00d2c29e96e11ff08afc290fa2cddc466f4ba`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.4`

```console
$ docker pull chronograf@sha256:847b0543a8881ab1a180f0ffad7162ea0d259d270bd216c4009f1bd57ae8a1c4
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41028784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a01d962d4eb9071b32ccbff083e9f6b4c11a3d0cec9a0877e9a520021333be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:22:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 10 Jul 2017 23:36:08 GMT
ENV CHRONOGRAF_VERSION=1.3.4.0
# Mon, 10 Jul 2017 23:36:28 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 10 Jul 2017 23:36:30 GMT
EXPOSE 8888/tcp
# Mon, 10 Jul 2017 23:36:30 GMT
VOLUME [/var/lib/chronograf]
# Mon, 10 Jul 2017 23:36:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 10 Jul 2017 23:36:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Jul 2017 23:36:32 GMT
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
	-	`sha256:b70bb5b4a4b5d70e1e6db7411913398709fc56f98fe937c139e61f295b6d44b3`  
		Last Modified: Mon, 10 Jul 2017 23:37:04 GMT  
		Size: 10.9 MB (10867346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feaba91193bdf2efe6398e3fb8948165c95642e99afd8e57ff64e3e82a94740`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c27efa7cdc0595b952121a3c6c0a12e2582a94991af0caf0390588f5e6aa4`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fe785c49466778fdc37bf50ba00d2c29e96e11ff08afc290fa2cddc466f4ba`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.4.0`

```console
$ docker pull chronograf@sha256:847b0543a8881ab1a180f0ffad7162ea0d259d270bd216c4009f1bd57ae8a1c4
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.4.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41028784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a01d962d4eb9071b32ccbff083e9f6b4c11a3d0cec9a0877e9a520021333be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:22:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 10 Jul 2017 23:36:08 GMT
ENV CHRONOGRAF_VERSION=1.3.4.0
# Mon, 10 Jul 2017 23:36:28 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 10 Jul 2017 23:36:30 GMT
EXPOSE 8888/tcp
# Mon, 10 Jul 2017 23:36:30 GMT
VOLUME [/var/lib/chronograf]
# Mon, 10 Jul 2017 23:36:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 10 Jul 2017 23:36:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Jul 2017 23:36:32 GMT
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
	-	`sha256:b70bb5b4a4b5d70e1e6db7411913398709fc56f98fe937c139e61f295b6d44b3`  
		Last Modified: Mon, 10 Jul 2017 23:37:04 GMT  
		Size: 10.9 MB (10867346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feaba91193bdf2efe6398e3fb8948165c95642e99afd8e57ff64e3e82a94740`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c27efa7cdc0595b952121a3c6c0a12e2582a94991af0caf0390588f5e6aa4`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fe785c49466778fdc37bf50ba00d2c29e96e11ff08afc290fa2cddc466f4ba`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:847b0543a8881ab1a180f0ffad7162ea0d259d270bd216c4009f1bd57ae8a1c4
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41028784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a01d962d4eb9071b32ccbff083e9f6b4c11a3d0cec9a0877e9a520021333be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:22:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 10 Jul 2017 23:36:08 GMT
ENV CHRONOGRAF_VERSION=1.3.4.0
# Mon, 10 Jul 2017 23:36:28 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 10 Jul 2017 23:36:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 10 Jul 2017 23:36:30 GMT
EXPOSE 8888/tcp
# Mon, 10 Jul 2017 23:36:30 GMT
VOLUME [/var/lib/chronograf]
# Mon, 10 Jul 2017 23:36:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 10 Jul 2017 23:36:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Jul 2017 23:36:32 GMT
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
	-	`sha256:b70bb5b4a4b5d70e1e6db7411913398709fc56f98fe937c139e61f295b6d44b3`  
		Last Modified: Mon, 10 Jul 2017 23:37:04 GMT  
		Size: 10.9 MB (10867346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feaba91193bdf2efe6398e3fb8948165c95642e99afd8e57ff64e3e82a94740`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c27efa7cdc0595b952121a3c6c0a12e2582a94991af0caf0390588f5e6aa4`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fe785c49466778fdc37bf50ba00d2c29e96e11ff08afc290fa2cddc466f4ba`  
		Last Modified: Mon, 10 Jul 2017 23:37:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:90720f4b6d92b19bcbbff5148b7f56ee75244e370dafbf021fcbd6f9fd6efc0b
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8050353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded90a53ae8711991d0f812e165e06e185eefd08f23e1c6f883986368012b6a3`
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
# Mon, 10 Jul 2017 23:36:40 GMT
ENV CHRONOGRAF_VERSION=1.3.4.0
# Mon, 10 Jul 2017 23:36:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 10 Jul 2017 23:36:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 10 Jul 2017 23:36:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 10 Jul 2017 23:36:49 GMT
EXPOSE 8888/tcp
# Mon, 10 Jul 2017 23:36:49 GMT
VOLUME [/var/lib/chronograf]
# Mon, 10 Jul 2017 23:36:50 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 10 Jul 2017 23:36:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Jul 2017 23:36:51 GMT
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
	-	`sha256:48e97daa3c3ee9a102728fdf3b0af5196c9722ef5bfa24a14eb8fa42dcee6387`  
		Last Modified: Mon, 10 Jul 2017 23:37:45 GMT  
		Size: 5.7 MB (5704927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09321a6bd017a2096cc8678594c5ec42f8659cc1e43f894d5cef8ac3b9be9605`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78359829acc23f26e71edf5ad77aa821b1c592cfd376507865a37fe478c5a8c3`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1a8c43291139587b0f4140509bfd204063085266096a035da8e220fb988602`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.4-alpine`

```console
$ docker pull chronograf@sha256:90720f4b6d92b19bcbbff5148b7f56ee75244e370dafbf021fcbd6f9fd6efc0b
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8050353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded90a53ae8711991d0f812e165e06e185eefd08f23e1c6f883986368012b6a3`
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
# Mon, 10 Jul 2017 23:36:40 GMT
ENV CHRONOGRAF_VERSION=1.3.4.0
# Mon, 10 Jul 2017 23:36:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 10 Jul 2017 23:36:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 10 Jul 2017 23:36:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 10 Jul 2017 23:36:49 GMT
EXPOSE 8888/tcp
# Mon, 10 Jul 2017 23:36:49 GMT
VOLUME [/var/lib/chronograf]
# Mon, 10 Jul 2017 23:36:50 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 10 Jul 2017 23:36:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Jul 2017 23:36:51 GMT
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
	-	`sha256:48e97daa3c3ee9a102728fdf3b0af5196c9722ef5bfa24a14eb8fa42dcee6387`  
		Last Modified: Mon, 10 Jul 2017 23:37:45 GMT  
		Size: 5.7 MB (5704927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09321a6bd017a2096cc8678594c5ec42f8659cc1e43f894d5cef8ac3b9be9605`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78359829acc23f26e71edf5ad77aa821b1c592cfd376507865a37fe478c5a8c3`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1a8c43291139587b0f4140509bfd204063085266096a035da8e220fb988602`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.4.0-alpine`

```console
$ docker pull chronograf@sha256:90720f4b6d92b19bcbbff5148b7f56ee75244e370dafbf021fcbd6f9fd6efc0b
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.4.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8050353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded90a53ae8711991d0f812e165e06e185eefd08f23e1c6f883986368012b6a3`
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
# Mon, 10 Jul 2017 23:36:40 GMT
ENV CHRONOGRAF_VERSION=1.3.4.0
# Mon, 10 Jul 2017 23:36:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 10 Jul 2017 23:36:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 10 Jul 2017 23:36:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 10 Jul 2017 23:36:49 GMT
EXPOSE 8888/tcp
# Mon, 10 Jul 2017 23:36:49 GMT
VOLUME [/var/lib/chronograf]
# Mon, 10 Jul 2017 23:36:50 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 10 Jul 2017 23:36:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Jul 2017 23:36:51 GMT
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
	-	`sha256:48e97daa3c3ee9a102728fdf3b0af5196c9722ef5bfa24a14eb8fa42dcee6387`  
		Last Modified: Mon, 10 Jul 2017 23:37:45 GMT  
		Size: 5.7 MB (5704927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09321a6bd017a2096cc8678594c5ec42f8659cc1e43f894d5cef8ac3b9be9605`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78359829acc23f26e71edf5ad77aa821b1c592cfd376507865a37fe478c5a8c3`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1a8c43291139587b0f4140509bfd204063085266096a035da8e220fb988602`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:90720f4b6d92b19bcbbff5148b7f56ee75244e370dafbf021fcbd6f9fd6efc0b
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8050353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded90a53ae8711991d0f812e165e06e185eefd08f23e1c6f883986368012b6a3`
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
# Mon, 10 Jul 2017 23:36:40 GMT
ENV CHRONOGRAF_VERSION=1.3.4.0
# Mon, 10 Jul 2017 23:36:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 10 Jul 2017 23:36:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 10 Jul 2017 23:36:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 10 Jul 2017 23:36:49 GMT
EXPOSE 8888/tcp
# Mon, 10 Jul 2017 23:36:49 GMT
VOLUME [/var/lib/chronograf]
# Mon, 10 Jul 2017 23:36:50 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 10 Jul 2017 23:36:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Jul 2017 23:36:51 GMT
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
	-	`sha256:48e97daa3c3ee9a102728fdf3b0af5196c9722ef5bfa24a14eb8fa42dcee6387`  
		Last Modified: Mon, 10 Jul 2017 23:37:45 GMT  
		Size: 5.7 MB (5704927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09321a6bd017a2096cc8678594c5ec42f8659cc1e43f894d5cef8ac3b9be9605`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78359829acc23f26e71edf5ad77aa821b1c592cfd376507865a37fe478c5a8c3`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1a8c43291139587b0f4140509bfd204063085266096a035da8e220fb988602`  
		Last Modified: Mon, 10 Jul 2017 23:37:44 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
