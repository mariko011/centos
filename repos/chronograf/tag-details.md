<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.10`](#chronograf1310)
-	[`chronograf:1.3.10.0`](#chronograf13100)
-	[`chronograf:1.3.10.0-alpine`](#chronograf13100-alpine)
-	[`chronograf:1.3.10-alpine`](#chronograf1310-alpine)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:fc898e6e097bcee01463c72a8212b7bf8771d4275cdfa03c75de99824fa4fccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3` - linux; amd64

```console
$ docker pull chronograf@sha256:f8a7be6f78c3e378a70b56484e72c671dd6105d8bdd426f3ae7eaa82867a4425
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40268352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a52f28b74d03e5e8bba0d6453aeef5c2fcee8297f0f10c7fe69a2e868608fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:43 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 22:19:43 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 22:19:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:19:54 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 22:19:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 22:19:54 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 22:19:55 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 22:19:55 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 22:19:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:19:55 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd295b22e91927dbf790e00e037d2501b82b2be13767fbb134ce41321921ee5`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 4.5 MB (4500171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dbfb7a1f850ae5bde86c795942c7365dc9fdfb5ee3532f1e4d7fd451775a9e`  
		Last Modified: Mon, 09 Oct 2017 22:20:14 GMT  
		Size: 13.3 MB (13251446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f33f2b6ac259338ecb80db2a4995bb364f94e2634d0e78e646be106d71f383`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7aaae11bafebc442af72015da768ef52ff783c3c4a5cd4ec41fa52e05c1ff77`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4818101a55a88732133ef73b24748b703914ad13ce86d28daffb1c2c7c172bf`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:b79856a8ea9838e0722241ae3a1c6c68e93343cf056a98968216303deb05f973
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35073776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225f7a1328b26172dc3cc8f7994aa3394991bf10952848090eaf61b78b866815`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 22:15:22 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 22:15:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:15:37 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 22:15:37 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 22:15:37 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 22:15:38 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 22:15:38 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 22:15:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:15:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd8c94f71bf0bcd46939e01cbedea0e689f323d9f6d10c3da1d184d30113ff`  
		Last Modified: Mon, 09 Oct 2017 22:15:50 GMT  
		Size: 3.9 MB (3872931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87a699696a82b65172c9001b64b0b8b0cad012af1466c8536da8471ccfa9aa6`  
		Last Modified: Mon, 09 Oct 2017 22:15:53 GMT  
		Size: 11.9 MB (11899316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2458284b579fd2a5869f6bed062b7f21bab7714895d0c9a95ad21abf868c6fed`  
		Last Modified: Mon, 09 Oct 2017 22:15:49 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1d90f5d015bedf678874af9f0924f406e0e2096543a811feb87eaf54acdea8`  
		Last Modified: Mon, 09 Oct 2017 22:15:50 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ffa75084b2f38d8e5188a196ca6d9caf3ef522cc100d141054716570e74a54`  
		Last Modified: Mon, 09 Oct 2017 22:15:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:05319978868509851f7ba1fee52fdf3574151db1046d37b0846d0fc0bc07303e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36536420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:242f6c762e07ee7c839173f98de208700121c1836f86aaf718f12b73c0def668`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:01 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 22:22:02 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 22:22:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:22:35 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 22:22:36 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 22:22:43 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 22:22:44 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 22:22:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 22:22:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:23:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d7be4d812a26e639a04fc29deed41244c3f25985f89afb3eccf00e11cb4639`  
		Last Modified: Mon, 09 Oct 2017 22:23:21 GMT  
		Size: 4.1 MB (4074960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286865c3a7e6f2fc249ca6a7d6cbc6c6852ffe330fdeac58e8c00dcdfc97a217`  
		Last Modified: Mon, 09 Oct 2017 22:23:24 GMT  
		Size: 12.1 MB (12099928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b808da333f20584f0f32a2e313b331c2fd3c81a9036e57f9567217066df83f`  
		Last Modified: Mon, 09 Oct 2017 22:23:19 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52eea5564a30a355c528fcbc3f3887502546d4bc894209a75ea58d7e6f2d6437`  
		Last Modified: Mon, 09 Oct 2017 22:23:20 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc99775ff59ce576e07fb779e2ec2fc910c7f72ca1b9878f87f174461a61188d`  
		Last Modified: Mon, 09 Oct 2017 22:23:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10`

**does not exist** (yet?)

## `chronograf:1.3.10.0`

**does not exist** (yet?)

## `chronograf:1.3.10.0-alpine`

**does not exist** (yet?)

## `chronograf:1.3.10-alpine`

**does not exist** (yet?)

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:66bf983ff192effa12190d733c6a2a5bc356abfadb507abba83a8ae34ba8d1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:9eb871c983efe5cf64b8791f21ea054436c2015b433066207ad37a65e3d9f0a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8336912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d6f365bfc3990ba481288cdeb5255c8c13e1e14f82c96e588444164445a411`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Mon, 09 Oct 2017 18:16:13 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 18:16:29 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 09 Oct 2017 18:16:32 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 18:16:33 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 18:16:33 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 18:16:33 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 18:16:33 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 09 Oct 2017 18:16:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 18:16:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8283a37a165e8c3c7e48284c0675e7a7bbe975c4a1dee3661e6ea7362d5391`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 350.7 KB (350693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bbb0fb2dc89b62ae7c549d6cc9dfb84b797b8b7a24666d1cc2af0c65129b22`  
		Last Modified: Mon, 09 Oct 2017 18:17:21 GMT  
		Size: 6.0 MB (5991413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f3c8b4b00b2352ffb13bfd91349a8a06c6c99076967c06dfc07490d6d70828`  
		Last Modified: Mon, 09 Oct 2017 18:17:20 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619c0773426606006550b7f2377dce3f4f877f53d2c909bb8b96116ea6e1f884`  
		Last Modified: Mon, 09 Oct 2017 18:17:20 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d199258f7febc0af29b233a2cf69bbc2f154f640143c3493c42e461dfb4ddb4`  
		Last Modified: Mon, 09 Oct 2017 18:17:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:66bf983ff192effa12190d733c6a2a5bc356abfadb507abba83a8ae34ba8d1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:9eb871c983efe5cf64b8791f21ea054436c2015b433066207ad37a65e3d9f0a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8336912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d6f365bfc3990ba481288cdeb5255c8c13e1e14f82c96e588444164445a411`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Mon, 09 Oct 2017 18:16:13 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 18:16:29 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 09 Oct 2017 18:16:32 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 18:16:33 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 18:16:33 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 18:16:33 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 18:16:33 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 09 Oct 2017 18:16:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 18:16:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8283a37a165e8c3c7e48284c0675e7a7bbe975c4a1dee3661e6ea7362d5391`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 350.7 KB (350693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bbb0fb2dc89b62ae7c549d6cc9dfb84b797b8b7a24666d1cc2af0c65129b22`  
		Last Modified: Mon, 09 Oct 2017 18:17:21 GMT  
		Size: 6.0 MB (5991413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f3c8b4b00b2352ffb13bfd91349a8a06c6c99076967c06dfc07490d6d70828`  
		Last Modified: Mon, 09 Oct 2017 18:17:20 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619c0773426606006550b7f2377dce3f4f877f53d2c909bb8b96116ea6e1f884`  
		Last Modified: Mon, 09 Oct 2017 18:17:20 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d199258f7febc0af29b233a2cf69bbc2f154f640143c3493c42e461dfb4ddb4`  
		Last Modified: Mon, 09 Oct 2017 18:17:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:fc898e6e097bcee01463c72a8212b7bf8771d4275cdfa03c75de99824fa4fccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:f8a7be6f78c3e378a70b56484e72c671dd6105d8bdd426f3ae7eaa82867a4425
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40268352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a52f28b74d03e5e8bba0d6453aeef5c2fcee8297f0f10c7fe69a2e868608fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:43 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 22:19:43 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 22:19:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:19:54 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 22:19:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 22:19:54 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 22:19:55 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 22:19:55 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 22:19:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:19:55 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd295b22e91927dbf790e00e037d2501b82b2be13767fbb134ce41321921ee5`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 4.5 MB (4500171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dbfb7a1f850ae5bde86c795942c7365dc9fdfb5ee3532f1e4d7fd451775a9e`  
		Last Modified: Mon, 09 Oct 2017 22:20:14 GMT  
		Size: 13.3 MB (13251446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f33f2b6ac259338ecb80db2a4995bb364f94e2634d0e78e646be106d71f383`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7aaae11bafebc442af72015da768ef52ff783c3c4a5cd4ec41fa52e05c1ff77`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4818101a55a88732133ef73b24748b703914ad13ce86d28daffb1c2c7c172bf`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:b79856a8ea9838e0722241ae3a1c6c68e93343cf056a98968216303deb05f973
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35073776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225f7a1328b26172dc3cc8f7994aa3394991bf10952848090eaf61b78b866815`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 22:15:22 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 22:15:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:15:37 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 22:15:37 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 22:15:37 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 22:15:38 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 22:15:38 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 22:15:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:15:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd8c94f71bf0bcd46939e01cbedea0e689f323d9f6d10c3da1d184d30113ff`  
		Last Modified: Mon, 09 Oct 2017 22:15:50 GMT  
		Size: 3.9 MB (3872931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87a699696a82b65172c9001b64b0b8b0cad012af1466c8536da8471ccfa9aa6`  
		Last Modified: Mon, 09 Oct 2017 22:15:53 GMT  
		Size: 11.9 MB (11899316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2458284b579fd2a5869f6bed062b7f21bab7714895d0c9a95ad21abf868c6fed`  
		Last Modified: Mon, 09 Oct 2017 22:15:49 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1d90f5d015bedf678874af9f0924f406e0e2096543a811feb87eaf54acdea8`  
		Last Modified: Mon, 09 Oct 2017 22:15:50 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ffa75084b2f38d8e5188a196ca6d9caf3ef522cc100d141054716570e74a54`  
		Last Modified: Mon, 09 Oct 2017 22:15:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:05319978868509851f7ba1fee52fdf3574151db1046d37b0846d0fc0bc07303e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36536420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:242f6c762e07ee7c839173f98de208700121c1836f86aaf718f12b73c0def668`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:01 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 22:22:02 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 22:22:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:22:35 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 22:22:36 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 22:22:43 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 22:22:44 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 22:22:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 22:22:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:23:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d7be4d812a26e639a04fc29deed41244c3f25985f89afb3eccf00e11cb4639`  
		Last Modified: Mon, 09 Oct 2017 22:23:21 GMT  
		Size: 4.1 MB (4074960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286865c3a7e6f2fc249ca6a7d6cbc6c6852ffe330fdeac58e8c00dcdfc97a217`  
		Last Modified: Mon, 09 Oct 2017 22:23:24 GMT  
		Size: 12.1 MB (12099928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b808da333f20584f0f32a2e313b331c2fd3c81a9036e57f9567217066df83f`  
		Last Modified: Mon, 09 Oct 2017 22:23:19 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52eea5564a30a355c528fcbc3f3887502546d4bc894209a75ea58d7e6f2d6437`  
		Last Modified: Mon, 09 Oct 2017 22:23:20 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc99775ff59ce576e07fb779e2ec2fc910c7f72ca1b9878f87f174461a61188d`  
		Last Modified: Mon, 09 Oct 2017 22:23:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
