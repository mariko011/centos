<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.7`](#chronograf137)
-	[`chronograf:1.3.7.0`](#chronograf1370)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.7-alpine`](#chronograf137-alpine)
-	[`chronograf:1.3.7.0-alpine`](#chronograf1370-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:f4bdbf988b1ec52d5e88c9b44a7c99b88bd6d638eed96032f17f460701f63be7
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41161175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1dd7c041b60da3bdcb9381321bf8d7f1b0ab7b34e19d8c5b5557cefd6891b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Sep 2017 23:59:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 07 Sep 2017 23:59:46 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Sep 2017 23:59:47 GMT
EXPOSE 8888/tcp
# Thu, 07 Sep 2017 23:59:48 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Sep 2017 23:59:48 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 07 Sep 2017 23:59:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:59:49 GMT
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
	-	`sha256:a22e70b527dc9a9437888cc4adf9289793201cc5015e7dab7fe2fd26b72b1cad`  
		Last Modified: Fri, 08 Sep 2017 18:05:37 GMT  
		Size: 11.0 MB (11016887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f93bc1ea077925c53535ce5772a79a3ca27bc5744ed0dc97b1551b5803f6ae`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f9fc745575db19727415321204c1f1ec4ac7b7b4b164812fd19ccb1b838a05`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a12411b4d9fbd52b540c0999cca1a326ce0bdce184abf584037c7e7479e7f4d`  
		Last Modified: Fri, 08 Sep 2017 18:05:36 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.7`

```console
$ docker pull chronograf@sha256:f4bdbf988b1ec52d5e88c9b44a7c99b88bd6d638eed96032f17f460701f63be7
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41161175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1dd7c041b60da3bdcb9381321bf8d7f1b0ab7b34e19d8c5b5557cefd6891b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Sep 2017 23:59:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 07 Sep 2017 23:59:46 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Sep 2017 23:59:47 GMT
EXPOSE 8888/tcp
# Thu, 07 Sep 2017 23:59:48 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Sep 2017 23:59:48 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 07 Sep 2017 23:59:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:59:49 GMT
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
	-	`sha256:a22e70b527dc9a9437888cc4adf9289793201cc5015e7dab7fe2fd26b72b1cad`  
		Last Modified: Fri, 08 Sep 2017 18:05:37 GMT  
		Size: 11.0 MB (11016887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f93bc1ea077925c53535ce5772a79a3ca27bc5744ed0dc97b1551b5803f6ae`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f9fc745575db19727415321204c1f1ec4ac7b7b4b164812fd19ccb1b838a05`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a12411b4d9fbd52b540c0999cca1a326ce0bdce184abf584037c7e7479e7f4d`  
		Last Modified: Fri, 08 Sep 2017 18:05:36 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.7.0`

```console
$ docker pull chronograf@sha256:f4bdbf988b1ec52d5e88c9b44a7c99b88bd6d638eed96032f17f460701f63be7
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.7.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41161175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1dd7c041b60da3bdcb9381321bf8d7f1b0ab7b34e19d8c5b5557cefd6891b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Sep 2017 23:59:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 07 Sep 2017 23:59:46 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Sep 2017 23:59:47 GMT
EXPOSE 8888/tcp
# Thu, 07 Sep 2017 23:59:48 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Sep 2017 23:59:48 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 07 Sep 2017 23:59:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:59:49 GMT
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
	-	`sha256:a22e70b527dc9a9437888cc4adf9289793201cc5015e7dab7fe2fd26b72b1cad`  
		Last Modified: Fri, 08 Sep 2017 18:05:37 GMT  
		Size: 11.0 MB (11016887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f93bc1ea077925c53535ce5772a79a3ca27bc5744ed0dc97b1551b5803f6ae`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f9fc745575db19727415321204c1f1ec4ac7b7b4b164812fd19ccb1b838a05`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a12411b4d9fbd52b540c0999cca1a326ce0bdce184abf584037c7e7479e7f4d`  
		Last Modified: Fri, 08 Sep 2017 18:05:36 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:f4bdbf988b1ec52d5e88c9b44a7c99b88bd6d638eed96032f17f460701f63be7
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41161175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1dd7c041b60da3bdcb9381321bf8d7f1b0ab7b34e19d8c5b5557cefd6891b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:59:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Sep 2017 23:59:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 07 Sep 2017 23:59:46 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 07 Sep 2017 23:59:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Sep 2017 23:59:47 GMT
EXPOSE 8888/tcp
# Thu, 07 Sep 2017 23:59:48 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Sep 2017 23:59:48 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 07 Sep 2017 23:59:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:59:49 GMT
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
	-	`sha256:a22e70b527dc9a9437888cc4adf9289793201cc5015e7dab7fe2fd26b72b1cad`  
		Last Modified: Fri, 08 Sep 2017 18:05:37 GMT  
		Size: 11.0 MB (11016887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f93bc1ea077925c53535ce5772a79a3ca27bc5744ed0dc97b1551b5803f6ae`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f9fc745575db19727415321204c1f1ec4ac7b7b4b164812fd19ccb1b838a05`  
		Last Modified: Fri, 08 Sep 2017 18:05:34 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a12411b4d9fbd52b540c0999cca1a326ce0bdce184abf584037c7e7479e7f4d`  
		Last Modified: Fri, 08 Sep 2017 18:05:36 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:b6b5849195c8dbcca4dd48fc563cf3c2fe53192e5e12c313888e0bbf9db5b219
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8173769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8233ee14a84e31668bb1ce77d0d2fe45a158bd01978da0052e08202049899293`
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
# Thu, 24 Aug 2017 18:00:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:27 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:28 GMT
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
	-	`sha256:d9856b44ba9861a978243755b5a13e20b59cffdb406771c6dc183a362ad9a766`  
		Last Modified: Thu, 24 Aug 2017 18:01:08 GMT  
		Size: 5.8 MB (5828347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea729eb8c52a0bd77532f6e73fa27b1fb7c76ec82b8d7b0bfd47258ed02f2e`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3336c1a8ab29031421e4e01cb04ed2a96377182ccbc615282fa1270e98995ec`  
		Last Modified: Thu, 24 Aug 2017 18:01:07 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb03ef7536954610916777f5109ee513d99a3f9736a616a75fb5bfbc07f9413`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.7-alpine`

```console
$ docker pull chronograf@sha256:b6b5849195c8dbcca4dd48fc563cf3c2fe53192e5e12c313888e0bbf9db5b219
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8173769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8233ee14a84e31668bb1ce77d0d2fe45a158bd01978da0052e08202049899293`
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
# Thu, 24 Aug 2017 18:00:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:27 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:28 GMT
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
	-	`sha256:d9856b44ba9861a978243755b5a13e20b59cffdb406771c6dc183a362ad9a766`  
		Last Modified: Thu, 24 Aug 2017 18:01:08 GMT  
		Size: 5.8 MB (5828347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea729eb8c52a0bd77532f6e73fa27b1fb7c76ec82b8d7b0bfd47258ed02f2e`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3336c1a8ab29031421e4e01cb04ed2a96377182ccbc615282fa1270e98995ec`  
		Last Modified: Thu, 24 Aug 2017 18:01:07 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb03ef7536954610916777f5109ee513d99a3f9736a616a75fb5bfbc07f9413`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.7.0-alpine`

```console
$ docker pull chronograf@sha256:b6b5849195c8dbcca4dd48fc563cf3c2fe53192e5e12c313888e0bbf9db5b219
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.7.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8173769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8233ee14a84e31668bb1ce77d0d2fe45a158bd01978da0052e08202049899293`
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
# Thu, 24 Aug 2017 18:00:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:27 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:28 GMT
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
	-	`sha256:d9856b44ba9861a978243755b5a13e20b59cffdb406771c6dc183a362ad9a766`  
		Last Modified: Thu, 24 Aug 2017 18:01:08 GMT  
		Size: 5.8 MB (5828347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea729eb8c52a0bd77532f6e73fa27b1fb7c76ec82b8d7b0bfd47258ed02f2e`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3336c1a8ab29031421e4e01cb04ed2a96377182ccbc615282fa1270e98995ec`  
		Last Modified: Thu, 24 Aug 2017 18:01:07 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb03ef7536954610916777f5109ee513d99a3f9736a616a75fb5bfbc07f9413`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:b6b5849195c8dbcca4dd48fc563cf3c2fe53192e5e12c313888e0bbf9db5b219
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8173769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8233ee14a84e31668bb1ce77d0d2fe45a158bd01978da0052e08202049899293`
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
# Thu, 24 Aug 2017 18:00:19 GMT
ENV CHRONOGRAF_VERSION=1.3.7.0
# Thu, 24 Aug 2017 18:00:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 24 Aug 2017 18:00:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 24 Aug 2017 18:00:27 GMT
EXPOSE 8888/tcp
# Thu, 24 Aug 2017 18:00:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 24 Aug 2017 18:00:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 24 Aug 2017 18:00:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Aug 2017 18:00:28 GMT
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
	-	`sha256:d9856b44ba9861a978243755b5a13e20b59cffdb406771c6dc183a362ad9a766`  
		Last Modified: Thu, 24 Aug 2017 18:01:08 GMT  
		Size: 5.8 MB (5828347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea729eb8c52a0bd77532f6e73fa27b1fb7c76ec82b8d7b0bfd47258ed02f2e`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3336c1a8ab29031421e4e01cb04ed2a96377182ccbc615282fa1270e98995ec`  
		Last Modified: Thu, 24 Aug 2017 18:01:07 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb03ef7536954610916777f5109ee513d99a3f9736a616a75fb5bfbc07f9413`  
		Last Modified: Thu, 24 Aug 2017 18:01:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
