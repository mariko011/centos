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
$ docker pull chronograf@sha256:e76a0065916b06232bcad77af64738c5dab849a5836e3aecf3e57a9ee1a7a5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3` - linux; amd64

```console
$ docker pull chronograf@sha256:ac240d0bebe6f5887707f8966fbe28450a9b497fd1a9d96bdb2b71edb7aea75d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40319531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b13d7b847b3f888d411b61df98793b3624e703b05c4bd05039b0eccdc707d2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:43 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 04:25:34 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 04:25:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 04:25:53 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 04:25:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 04:25:53 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 04:25:53 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 04:25:54 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 04:25:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 04:25:54 GMT
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
	-	`sha256:ef21a420cbf46dc006ca32b8410d5266f075602a2d4a6f1291057d36eb3bec72`  
		Last Modified: Thu, 26 Oct 2017 04:26:34 GMT  
		Size: 13.3 MB (13302617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2772066c04a3e0b313f1bf172a4e04cc34641d0b7c88e147aa931ea7cc9b4356`  
		Last Modified: Thu, 26 Oct 2017 04:26:31 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed27b3da4b1acc915d6544ea5e5313bf004db075e0923e102fe9d13ce406d8a5`  
		Last Modified: Thu, 26 Oct 2017 04:26:32 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebdb804f84a88bb468056e5a261d71618001f31fe6508d3c57c96ce77c0602`  
		Last Modified: Thu, 26 Oct 2017 04:26:31 GMT  
		Size: 239.0 B  
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

```console
$ docker pull chronograf@sha256:e76a0065916b06232bcad77af64738c5dab849a5836e3aecf3e57a9ee1a7a5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.10` - linux; amd64

```console
$ docker pull chronograf@sha256:ac240d0bebe6f5887707f8966fbe28450a9b497fd1a9d96bdb2b71edb7aea75d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40319531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b13d7b847b3f888d411b61df98793b3624e703b05c4bd05039b0eccdc707d2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:43 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 04:25:34 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 04:25:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 04:25:53 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 04:25:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 04:25:53 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 04:25:53 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 04:25:54 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 04:25:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 04:25:54 GMT
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
	-	`sha256:ef21a420cbf46dc006ca32b8410d5266f075602a2d4a6f1291057d36eb3bec72`  
		Last Modified: Thu, 26 Oct 2017 04:26:34 GMT  
		Size: 13.3 MB (13302617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2772066c04a3e0b313f1bf172a4e04cc34641d0b7c88e147aa931ea7cc9b4356`  
		Last Modified: Thu, 26 Oct 2017 04:26:31 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed27b3da4b1acc915d6544ea5e5313bf004db075e0923e102fe9d13ce406d8a5`  
		Last Modified: Thu, 26 Oct 2017 04:26:32 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebdb804f84a88bb468056e5a261d71618001f31fe6508d3c57c96ce77c0602`  
		Last Modified: Thu, 26 Oct 2017 04:26:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10` - linux; arm variant v7

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

### `chronograf:1.3.10` - linux; arm64 variant v8

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

## `chronograf:1.3.10.0`

```console
$ docker pull chronograf@sha256:e76a0065916b06232bcad77af64738c5dab849a5836e3aecf3e57a9ee1a7a5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.10.0` - linux; amd64

```console
$ docker pull chronograf@sha256:ac240d0bebe6f5887707f8966fbe28450a9b497fd1a9d96bdb2b71edb7aea75d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40319531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b13d7b847b3f888d411b61df98793b3624e703b05c4bd05039b0eccdc707d2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:43 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 04:25:34 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 04:25:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 04:25:53 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 04:25:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 04:25:53 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 04:25:53 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 04:25:54 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 04:25:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 04:25:54 GMT
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
	-	`sha256:ef21a420cbf46dc006ca32b8410d5266f075602a2d4a6f1291057d36eb3bec72`  
		Last Modified: Thu, 26 Oct 2017 04:26:34 GMT  
		Size: 13.3 MB (13302617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2772066c04a3e0b313f1bf172a4e04cc34641d0b7c88e147aa931ea7cc9b4356`  
		Last Modified: Thu, 26 Oct 2017 04:26:31 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed27b3da4b1acc915d6544ea5e5313bf004db075e0923e102fe9d13ce406d8a5`  
		Last Modified: Thu, 26 Oct 2017 04:26:32 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebdb804f84a88bb468056e5a261d71618001f31fe6508d3c57c96ce77c0602`  
		Last Modified: Thu, 26 Oct 2017 04:26:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10.0` - linux; arm variant v7

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

### `chronograf:1.3.10.0` - linux; arm64 variant v8

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

## `chronograf:1.3.10.0-alpine`

```console
$ docker pull chronograf@sha256:5b4e4b27c3d32486e23622fb32765778cf0b14154ec981ce24c4a98c978ad7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.10.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e8b1607f7b360174341ed6c80fc48ad2854ce3a60b8aa78cf826f3f280db1e7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8387294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a029dfc3dbe36448ee9762468206d49ecf2ab8fb8f760158c57fedf17b17e057`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:47:18 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 26 Oct 2017 04:26:02 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 04:26:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 04:26:18 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 04:26:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 04:26:18 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 04:26:18 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 04:26:19 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 26 Oct 2017 04:26:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 04:26:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09bd96a359cddeebdbd24afdfc8a3bb37642b8f895469de7b59cf259968dee1`  
		Last Modified: Wed, 25 Oct 2017 23:47:51 GMT  
		Size: 350.7 KB (350694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c34b736776c687bf31f87fc0ac11b946ff76b8527eabb788ef5e9c0b46039f`  
		Last Modified: Thu, 26 Oct 2017 04:27:27 GMT  
		Size: 6.0 MB (6041824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b728cbbf21f07a6a96b0626bb45da5bc52d760d2efe5c4e56efa27c0a7ad89`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc01dfffdffaa8fd0655d9cc7e3ceef6a07a05e2f0bedf65ff5269010473fc38`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d9c4f95b89d8ec95ba4c25d84055dea8bbfaf323bcad8e4a9633f4dafb790`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10-alpine`

```console
$ docker pull chronograf@sha256:5b4e4b27c3d32486e23622fb32765778cf0b14154ec981ce24c4a98c978ad7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e8b1607f7b360174341ed6c80fc48ad2854ce3a60b8aa78cf826f3f280db1e7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8387294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a029dfc3dbe36448ee9762468206d49ecf2ab8fb8f760158c57fedf17b17e057`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:47:18 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 26 Oct 2017 04:26:02 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 04:26:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 04:26:18 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 04:26:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 04:26:18 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 04:26:18 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 04:26:19 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 26 Oct 2017 04:26:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 04:26:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09bd96a359cddeebdbd24afdfc8a3bb37642b8f895469de7b59cf259968dee1`  
		Last Modified: Wed, 25 Oct 2017 23:47:51 GMT  
		Size: 350.7 KB (350694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c34b736776c687bf31f87fc0ac11b946ff76b8527eabb788ef5e9c0b46039f`  
		Last Modified: Thu, 26 Oct 2017 04:27:27 GMT  
		Size: 6.0 MB (6041824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b728cbbf21f07a6a96b0626bb45da5bc52d760d2efe5c4e56efa27c0a7ad89`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc01dfffdffaa8fd0655d9cc7e3ceef6a07a05e2f0bedf65ff5269010473fc38`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d9c4f95b89d8ec95ba4c25d84055dea8bbfaf323bcad8e4a9633f4dafb790`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:5b4e4b27c3d32486e23622fb32765778cf0b14154ec981ce24c4a98c978ad7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e8b1607f7b360174341ed6c80fc48ad2854ce3a60b8aa78cf826f3f280db1e7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8387294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a029dfc3dbe36448ee9762468206d49ecf2ab8fb8f760158c57fedf17b17e057`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:47:18 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 26 Oct 2017 04:26:02 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 04:26:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 04:26:18 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 04:26:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 04:26:18 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 04:26:18 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 04:26:19 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 26 Oct 2017 04:26:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 04:26:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09bd96a359cddeebdbd24afdfc8a3bb37642b8f895469de7b59cf259968dee1`  
		Last Modified: Wed, 25 Oct 2017 23:47:51 GMT  
		Size: 350.7 KB (350694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c34b736776c687bf31f87fc0ac11b946ff76b8527eabb788ef5e9c0b46039f`  
		Last Modified: Thu, 26 Oct 2017 04:27:27 GMT  
		Size: 6.0 MB (6041824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b728cbbf21f07a6a96b0626bb45da5bc52d760d2efe5c4e56efa27c0a7ad89`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc01dfffdffaa8fd0655d9cc7e3ceef6a07a05e2f0bedf65ff5269010473fc38`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d9c4f95b89d8ec95ba4c25d84055dea8bbfaf323bcad8e4a9633f4dafb790`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:5b4e4b27c3d32486e23622fb32765778cf0b14154ec981ce24c4a98c978ad7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e8b1607f7b360174341ed6c80fc48ad2854ce3a60b8aa78cf826f3f280db1e7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8387294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a029dfc3dbe36448ee9762468206d49ecf2ab8fb8f760158c57fedf17b17e057`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:47:18 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 26 Oct 2017 04:26:02 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 04:26:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 04:26:18 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 04:26:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 04:26:18 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 04:26:18 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 04:26:19 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 26 Oct 2017 04:26:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 04:26:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09bd96a359cddeebdbd24afdfc8a3bb37642b8f895469de7b59cf259968dee1`  
		Last Modified: Wed, 25 Oct 2017 23:47:51 GMT  
		Size: 350.7 KB (350694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c34b736776c687bf31f87fc0ac11b946ff76b8527eabb788ef5e9c0b46039f`  
		Last Modified: Thu, 26 Oct 2017 04:27:27 GMT  
		Size: 6.0 MB (6041824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b728cbbf21f07a6a96b0626bb45da5bc52d760d2efe5c4e56efa27c0a7ad89`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc01dfffdffaa8fd0655d9cc7e3ceef6a07a05e2f0bedf65ff5269010473fc38`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d9c4f95b89d8ec95ba4c25d84055dea8bbfaf323bcad8e4a9633f4dafb790`  
		Last Modified: Thu, 26 Oct 2017 04:27:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:e76a0065916b06232bcad77af64738c5dab849a5836e3aecf3e57a9ee1a7a5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:ac240d0bebe6f5887707f8966fbe28450a9b497fd1a9d96bdb2b71edb7aea75d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40319531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b13d7b847b3f888d411b61df98793b3624e703b05c4bd05039b0eccdc707d2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:43 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 04:25:34 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 04:25:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 04:25:53 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 04:25:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 04:25:53 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 04:25:53 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 04:25:54 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 04:25:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 04:25:54 GMT
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
	-	`sha256:ef21a420cbf46dc006ca32b8410d5266f075602a2d4a6f1291057d36eb3bec72`  
		Last Modified: Thu, 26 Oct 2017 04:26:34 GMT  
		Size: 13.3 MB (13302617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2772066c04a3e0b313f1bf172a4e04cc34641d0b7c88e147aa931ea7cc9b4356`  
		Last Modified: Thu, 26 Oct 2017 04:26:31 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed27b3da4b1acc915d6544ea5e5313bf004db075e0923e102fe9d13ce406d8a5`  
		Last Modified: Thu, 26 Oct 2017 04:26:32 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebdb804f84a88bb468056e5a261d71618001f31fe6508d3c57c96ce77c0602`  
		Last Modified: Thu, 26 Oct 2017 04:26:31 GMT  
		Size: 239.0 B  
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
