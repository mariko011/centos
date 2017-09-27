<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.8`](#chronograf138)
-	[`chronograf:1.3.8.2`](#chronograf1382)
-	[`chronograf:1.3.8.2-alpine`](#chronograf1382-alpine)
-	[`chronograf:1.3.8-alpine`](#chronograf138-alpine)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:b3a179b7c44687cc1f594328aa0430e2c316b9679f87a0bf70f78e26adb28a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3` - linux; amd64

```console
$ docker pull chronograf@sha256:9234599174c891409cc40ddceb55ac29ae2806ad4a2ea7e18964eabf5e9625c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40137694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0640367eafc6c7383414c459193ef7bd29983b74603392ceaa2e2c44f078260`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 25 Sep 2017 17:28:01 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:28:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 25 Sep 2017 17:28:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:28:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:28:16 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:28:16 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:28:17 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 25 Sep 2017 17:28:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:28:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cda3a2afb9308b46ed3feaf7952d4ebae42b6bc1dfa7c64004b1b228e28a9b`  
		Last Modified: Thu, 21 Sep 2017 16:40:52 GMT  
		Size: 4.5 MB (4505228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589c7c811983fc4f5ab07410d91bb6b22a994738ba23cd1dc2712e4323974b7e`  
		Last Modified: Mon, 25 Sep 2017 17:28:59 GMT  
		Size: 13.1 MB (13120012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655ff8510f4b4d262780ce93371105055817a5e4eaef3dcf303d5a4797aa7f39`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439a4c5e10124dbc9378f7f48895f3967c18278fd17484799c5c8adfc7801724`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3244113028bf7018756d6d9c4be9002a6b8d20867855c50ef377fcc82b7f252b`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:04c57a48913fb0ae076ca71eab625fe0cd3898b8b67566f105710dc230453fe8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34950196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc2748858c47d4bfc680651be7e479b9791432aaec5a7ead564944217ccabc23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 01:05:51 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Sep 2017 01:05:52 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Wed, 27 Sep 2017 01:06:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Sep 2017 01:06:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Sep 2017 01:06:05 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Sep 2017 01:06:05 GMT
EXPOSE 8888/tcp
# Wed, 27 Sep 2017 01:06:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Sep 2017 01:06:06 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Sep 2017 01:06:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 01:06:06 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ffb5173bf9bab2e515f94485271cdade02dd8d543ccb949eb71c2563c930ee`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 3.9 MB (3879149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022bff997c96cd2972cd14a23ae561b3a32fc87280baa67077d172311dc683a7`  
		Last Modified: Wed, 27 Sep 2017 03:01:00 GMT  
		Size: 11.8 MB (11768743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c3af3d5d7b42a89c3b00c4bebfb90b7158b6d97e5406bf29d5ff1447cd904c`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ec9322c5fd02ae2222a459aa9e0ecb7e7bf065b92b7741ab9303bf42ae5420`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babec4d3c3aad9b433f83d450c6dfc1d2ed50e03e649fe03c226c7cd9b5ff335`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:292436acc6fcb58ee006d6a05d1a84d6a5315736be6bb80abe9d8ecc6a435925
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36408395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40152a460e2deed3d42dbfd7320e3291260ca882a1bd164eece0600fb7c23840`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 25 Sep 2017 17:34:25 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:35:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 25 Sep 2017 17:35:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:35:02 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:35:03 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:35:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:35:04 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 25 Sep 2017 17:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:35:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19ed626981ca362f27b5346771ee9943f3e6b7cc14c832ac502651cfa0f55e0`  
		Last Modified: Thu, 21 Sep 2017 16:53:54 GMT  
		Size: 4.1 MB (4079139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29ad4f845524935ac171fc4d9d9549e28279c798508ad1cdcc954c5b8cf9162`  
		Last Modified: Mon, 25 Sep 2017 17:35:27 GMT  
		Size: 12.0 MB (11967584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae766e1ada448b8a0946835818ef2c68fc5c694b6e4fa792d3e2d6210d013ff`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b3a7e2c5af8804d7b4f8c3111d369354c3b0588f3d8c53302668cd6db4d108`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa270f112bf4e63afd2064eaeb734cea89040f3d2e81b4ed0c3c2d5fe231687`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8`

```console
$ docker pull chronograf@sha256:b3a179b7c44687cc1f594328aa0430e2c316b9679f87a0bf70f78e26adb28a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.8` - linux; amd64

```console
$ docker pull chronograf@sha256:9234599174c891409cc40ddceb55ac29ae2806ad4a2ea7e18964eabf5e9625c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40137694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0640367eafc6c7383414c459193ef7bd29983b74603392ceaa2e2c44f078260`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 25 Sep 2017 17:28:01 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:28:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 25 Sep 2017 17:28:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:28:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:28:16 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:28:16 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:28:17 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 25 Sep 2017 17:28:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:28:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cda3a2afb9308b46ed3feaf7952d4ebae42b6bc1dfa7c64004b1b228e28a9b`  
		Last Modified: Thu, 21 Sep 2017 16:40:52 GMT  
		Size: 4.5 MB (4505228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589c7c811983fc4f5ab07410d91bb6b22a994738ba23cd1dc2712e4323974b7e`  
		Last Modified: Mon, 25 Sep 2017 17:28:59 GMT  
		Size: 13.1 MB (13120012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655ff8510f4b4d262780ce93371105055817a5e4eaef3dcf303d5a4797aa7f39`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439a4c5e10124dbc9378f7f48895f3967c18278fd17484799c5c8adfc7801724`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3244113028bf7018756d6d9c4be9002a6b8d20867855c50ef377fcc82b7f252b`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.8` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:04c57a48913fb0ae076ca71eab625fe0cd3898b8b67566f105710dc230453fe8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34950196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc2748858c47d4bfc680651be7e479b9791432aaec5a7ead564944217ccabc23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 01:05:51 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Sep 2017 01:05:52 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Wed, 27 Sep 2017 01:06:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Sep 2017 01:06:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Sep 2017 01:06:05 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Sep 2017 01:06:05 GMT
EXPOSE 8888/tcp
# Wed, 27 Sep 2017 01:06:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Sep 2017 01:06:06 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Sep 2017 01:06:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 01:06:06 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ffb5173bf9bab2e515f94485271cdade02dd8d543ccb949eb71c2563c930ee`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 3.9 MB (3879149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022bff997c96cd2972cd14a23ae561b3a32fc87280baa67077d172311dc683a7`  
		Last Modified: Wed, 27 Sep 2017 03:01:00 GMT  
		Size: 11.8 MB (11768743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c3af3d5d7b42a89c3b00c4bebfb90b7158b6d97e5406bf29d5ff1447cd904c`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ec9322c5fd02ae2222a459aa9e0ecb7e7bf065b92b7741ab9303bf42ae5420`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babec4d3c3aad9b433f83d450c6dfc1d2ed50e03e649fe03c226c7cd9b5ff335`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.8` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:292436acc6fcb58ee006d6a05d1a84d6a5315736be6bb80abe9d8ecc6a435925
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36408395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40152a460e2deed3d42dbfd7320e3291260ca882a1bd164eece0600fb7c23840`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 25 Sep 2017 17:34:25 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:35:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 25 Sep 2017 17:35:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:35:02 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:35:03 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:35:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:35:04 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 25 Sep 2017 17:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:35:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19ed626981ca362f27b5346771ee9943f3e6b7cc14c832ac502651cfa0f55e0`  
		Last Modified: Thu, 21 Sep 2017 16:53:54 GMT  
		Size: 4.1 MB (4079139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29ad4f845524935ac171fc4d9d9549e28279c798508ad1cdcc954c5b8cf9162`  
		Last Modified: Mon, 25 Sep 2017 17:35:27 GMT  
		Size: 12.0 MB (11967584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae766e1ada448b8a0946835818ef2c68fc5c694b6e4fa792d3e2d6210d013ff`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b3a7e2c5af8804d7b4f8c3111d369354c3b0588f3d8c53302668cd6db4d108`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa270f112bf4e63afd2064eaeb734cea89040f3d2e81b4ed0c3c2d5fe231687`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8.2`

```console
$ docker pull chronograf@sha256:b3a179b7c44687cc1f594328aa0430e2c316b9679f87a0bf70f78e26adb28a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.8.2` - linux; amd64

```console
$ docker pull chronograf@sha256:9234599174c891409cc40ddceb55ac29ae2806ad4a2ea7e18964eabf5e9625c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40137694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0640367eafc6c7383414c459193ef7bd29983b74603392ceaa2e2c44f078260`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 25 Sep 2017 17:28:01 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:28:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 25 Sep 2017 17:28:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:28:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:28:16 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:28:16 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:28:17 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 25 Sep 2017 17:28:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:28:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cda3a2afb9308b46ed3feaf7952d4ebae42b6bc1dfa7c64004b1b228e28a9b`  
		Last Modified: Thu, 21 Sep 2017 16:40:52 GMT  
		Size: 4.5 MB (4505228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589c7c811983fc4f5ab07410d91bb6b22a994738ba23cd1dc2712e4323974b7e`  
		Last Modified: Mon, 25 Sep 2017 17:28:59 GMT  
		Size: 13.1 MB (13120012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655ff8510f4b4d262780ce93371105055817a5e4eaef3dcf303d5a4797aa7f39`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439a4c5e10124dbc9378f7f48895f3967c18278fd17484799c5c8adfc7801724`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3244113028bf7018756d6d9c4be9002a6b8d20867855c50ef377fcc82b7f252b`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.8.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:04c57a48913fb0ae076ca71eab625fe0cd3898b8b67566f105710dc230453fe8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34950196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc2748858c47d4bfc680651be7e479b9791432aaec5a7ead564944217ccabc23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 01:05:51 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Sep 2017 01:05:52 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Wed, 27 Sep 2017 01:06:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Sep 2017 01:06:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Sep 2017 01:06:05 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Sep 2017 01:06:05 GMT
EXPOSE 8888/tcp
# Wed, 27 Sep 2017 01:06:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Sep 2017 01:06:06 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Sep 2017 01:06:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 01:06:06 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ffb5173bf9bab2e515f94485271cdade02dd8d543ccb949eb71c2563c930ee`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 3.9 MB (3879149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022bff997c96cd2972cd14a23ae561b3a32fc87280baa67077d172311dc683a7`  
		Last Modified: Wed, 27 Sep 2017 03:01:00 GMT  
		Size: 11.8 MB (11768743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c3af3d5d7b42a89c3b00c4bebfb90b7158b6d97e5406bf29d5ff1447cd904c`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ec9322c5fd02ae2222a459aa9e0ecb7e7bf065b92b7741ab9303bf42ae5420`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babec4d3c3aad9b433f83d450c6dfc1d2ed50e03e649fe03c226c7cd9b5ff335`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.8.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:292436acc6fcb58ee006d6a05d1a84d6a5315736be6bb80abe9d8ecc6a435925
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36408395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40152a460e2deed3d42dbfd7320e3291260ca882a1bd164eece0600fb7c23840`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 25 Sep 2017 17:34:25 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:35:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 25 Sep 2017 17:35:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:35:02 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:35:03 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:35:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:35:04 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 25 Sep 2017 17:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:35:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19ed626981ca362f27b5346771ee9943f3e6b7cc14c832ac502651cfa0f55e0`  
		Last Modified: Thu, 21 Sep 2017 16:53:54 GMT  
		Size: 4.1 MB (4079139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29ad4f845524935ac171fc4d9d9549e28279c798508ad1cdcc954c5b8cf9162`  
		Last Modified: Mon, 25 Sep 2017 17:35:27 GMT  
		Size: 12.0 MB (11967584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae766e1ada448b8a0946835818ef2c68fc5c694b6e4fa792d3e2d6210d013ff`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b3a7e2c5af8804d7b4f8c3111d369354c3b0588f3d8c53302668cd6db4d108`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa270f112bf4e63afd2064eaeb734cea89040f3d2e81b4ed0c3c2d5fe231687`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8.2-alpine`

```console
$ docker pull chronograf@sha256:87e3276291888c0a203e46ba2cf9695e20b7bcff6b1796cb62588faeedee64ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:91c6b3ebfa88ff8c624d98b19c25b5c88dc4dc74f1d84aa466ba2a787f65accf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907d45cd97809be772c8301fa7f5612f6f713626b7a8df32169a1e64046178a2`
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
# Mon, 25 Sep 2017 17:28:29 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:28:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 25 Sep 2017 17:28:44 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:28:45 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:28:45 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:28:45 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:28:45 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 25 Sep 2017 17:28:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:28:46 GMT
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
	-	`sha256:8d4fe8a5dfb7531a53c84c750d1fd76b1f853c15f28020fd2444d5f1664f923e`  
		Last Modified: Mon, 25 Sep 2017 17:29:29 GMT  
		Size: 5.9 MB (5862993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23f78f17645f5008d681301baafaa6075f4bd1d6f7eaccda2a5100d219a9bff`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a00798eb6850648672b9ff00b9e358a09da32f83f5f448392e9186f3cfe400`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c349bdc1901e7e612aa66368e515912a7672202e77c17fe4d75a5595f3d9c198`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.8-alpine`

```console
$ docker pull chronograf@sha256:87e3276291888c0a203e46ba2cf9695e20b7bcff6b1796cb62588faeedee64ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.8-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:91c6b3ebfa88ff8c624d98b19c25b5c88dc4dc74f1d84aa466ba2a787f65accf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907d45cd97809be772c8301fa7f5612f6f713626b7a8df32169a1e64046178a2`
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
# Mon, 25 Sep 2017 17:28:29 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:28:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 25 Sep 2017 17:28:44 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:28:45 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:28:45 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:28:45 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:28:45 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 25 Sep 2017 17:28:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:28:46 GMT
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
	-	`sha256:8d4fe8a5dfb7531a53c84c750d1fd76b1f853c15f28020fd2444d5f1664f923e`  
		Last Modified: Mon, 25 Sep 2017 17:29:29 GMT  
		Size: 5.9 MB (5862993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23f78f17645f5008d681301baafaa6075f4bd1d6f7eaccda2a5100d219a9bff`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a00798eb6850648672b9ff00b9e358a09da32f83f5f448392e9186f3cfe400`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c349bdc1901e7e612aa66368e515912a7672202e77c17fe4d75a5595f3d9c198`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:87e3276291888c0a203e46ba2cf9695e20b7bcff6b1796cb62588faeedee64ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:91c6b3ebfa88ff8c624d98b19c25b5c88dc4dc74f1d84aa466ba2a787f65accf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907d45cd97809be772c8301fa7f5612f6f713626b7a8df32169a1e64046178a2`
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
# Mon, 25 Sep 2017 17:28:29 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:28:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 25 Sep 2017 17:28:44 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:28:45 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:28:45 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:28:45 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:28:45 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 25 Sep 2017 17:28:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:28:46 GMT
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
	-	`sha256:8d4fe8a5dfb7531a53c84c750d1fd76b1f853c15f28020fd2444d5f1664f923e`  
		Last Modified: Mon, 25 Sep 2017 17:29:29 GMT  
		Size: 5.9 MB (5862993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23f78f17645f5008d681301baafaa6075f4bd1d6f7eaccda2a5100d219a9bff`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a00798eb6850648672b9ff00b9e358a09da32f83f5f448392e9186f3cfe400`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c349bdc1901e7e612aa66368e515912a7672202e77c17fe4d75a5595f3d9c198`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:87e3276291888c0a203e46ba2cf9695e20b7bcff6b1796cb62588faeedee64ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:91c6b3ebfa88ff8c624d98b19c25b5c88dc4dc74f1d84aa466ba2a787f65accf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8208478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907d45cd97809be772c8301fa7f5612f6f713626b7a8df32169a1e64046178a2`
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
# Mon, 25 Sep 2017 17:28:29 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:28:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 25 Sep 2017 17:28:44 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:28:45 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:28:45 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:28:45 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:28:45 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Mon, 25 Sep 2017 17:28:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:28:46 GMT
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
	-	`sha256:8d4fe8a5dfb7531a53c84c750d1fd76b1f853c15f28020fd2444d5f1664f923e`  
		Last Modified: Mon, 25 Sep 2017 17:29:29 GMT  
		Size: 5.9 MB (5862993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23f78f17645f5008d681301baafaa6075f4bd1d6f7eaccda2a5100d219a9bff`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a00798eb6850648672b9ff00b9e358a09da32f83f5f448392e9186f3cfe400`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c349bdc1901e7e612aa66368e515912a7672202e77c17fe4d75a5595f3d9c198`  
		Last Modified: Mon, 25 Sep 2017 17:29:28 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:b3a179b7c44687cc1f594328aa0430e2c316b9679f87a0bf70f78e26adb28a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:9234599174c891409cc40ddceb55ac29ae2806ad4a2ea7e18964eabf5e9625c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40137694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0640367eafc6c7383414c459193ef7bd29983b74603392ceaa2e2c44f078260`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 25 Sep 2017 17:28:01 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:28:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 25 Sep 2017 17:28:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:28:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:28:16 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:28:16 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:28:17 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 25 Sep 2017 17:28:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:28:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cda3a2afb9308b46ed3feaf7952d4ebae42b6bc1dfa7c64004b1b228e28a9b`  
		Last Modified: Thu, 21 Sep 2017 16:40:52 GMT  
		Size: 4.5 MB (4505228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589c7c811983fc4f5ab07410d91bb6b22a994738ba23cd1dc2712e4323974b7e`  
		Last Modified: Mon, 25 Sep 2017 17:28:59 GMT  
		Size: 13.1 MB (13120012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655ff8510f4b4d262780ce93371105055817a5e4eaef3dcf303d5a4797aa7f39`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439a4c5e10124dbc9378f7f48895f3967c18278fd17484799c5c8adfc7801724`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3244113028bf7018756d6d9c4be9002a6b8d20867855c50ef377fcc82b7f252b`  
		Last Modified: Mon, 25 Sep 2017 17:28:57 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:04c57a48913fb0ae076ca71eab625fe0cd3898b8b67566f105710dc230453fe8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34950196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc2748858c47d4bfc680651be7e479b9791432aaec5a7ead564944217ccabc23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 01:05:51 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Sep 2017 01:05:52 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Wed, 27 Sep 2017 01:06:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Sep 2017 01:06:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Sep 2017 01:06:05 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Sep 2017 01:06:05 GMT
EXPOSE 8888/tcp
# Wed, 27 Sep 2017 01:06:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Sep 2017 01:06:06 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Sep 2017 01:06:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 01:06:06 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ffb5173bf9bab2e515f94485271cdade02dd8d543ccb949eb71c2563c930ee`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 3.9 MB (3879149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022bff997c96cd2972cd14a23ae561b3a32fc87280baa67077d172311dc683a7`  
		Last Modified: Wed, 27 Sep 2017 03:01:00 GMT  
		Size: 11.8 MB (11768743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c3af3d5d7b42a89c3b00c4bebfb90b7158b6d97e5406bf29d5ff1447cd904c`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ec9322c5fd02ae2222a459aa9e0ecb7e7bf065b92b7741ab9303bf42ae5420`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babec4d3c3aad9b433f83d450c6dfc1d2ed50e03e649fe03c226c7cd9b5ff335`  
		Last Modified: Wed, 27 Sep 2017 03:00:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:292436acc6fcb58ee006d6a05d1a84d6a5315736be6bb80abe9d8ecc6a435925
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36408395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40152a460e2deed3d42dbfd7320e3291260ca882a1bd164eece0600fb7c23840`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 25 Sep 2017 17:34:25 GMT
ENV CHRONOGRAF_VERSION=1.3.8.2
# Mon, 25 Sep 2017 17:35:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 25 Sep 2017 17:35:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 25 Sep 2017 17:35:02 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 25 Sep 2017 17:35:03 GMT
EXPOSE 8888/tcp
# Mon, 25 Sep 2017 17:35:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 25 Sep 2017 17:35:04 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 25 Sep 2017 17:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 25 Sep 2017 17:35:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19ed626981ca362f27b5346771ee9943f3e6b7cc14c832ac502651cfa0f55e0`  
		Last Modified: Thu, 21 Sep 2017 16:53:54 GMT  
		Size: 4.1 MB (4079139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29ad4f845524935ac171fc4d9d9549e28279c798508ad1cdcc954c5b8cf9162`  
		Last Modified: Mon, 25 Sep 2017 17:35:27 GMT  
		Size: 12.0 MB (11967584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae766e1ada448b8a0946835818ef2c68fc5c694b6e4fa792d3e2d6210d013ff`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b3a7e2c5af8804d7b4f8c3111d369354c3b0588f3d8c53302668cd6db4d108`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa270f112bf4e63afd2064eaeb734cea89040f3d2e81b4ed0c3c2d5fe231687`  
		Last Modified: Mon, 25 Sep 2017 17:35:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
