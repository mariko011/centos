<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.10`](#chronograf1310)
-	[`chronograf:1.3.10.0`](#chronograf13100)
-	[`chronograf:1.3.10.0-alpine`](#chronograf13100-alpine)
-	[`chronograf:1.3.10-alpine`](#chronograf1310-alpine)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.4`](#chronograf14)
-	[`chronograf:1.4.0`](#chronograf140)
-	[`chronograf:1.4.0.1`](#chronograf1401)
-	[`chronograf:1.4.0.1-alpine`](#chronograf1401-alpine)
-	[`chronograf:1.4.0-alpine`](#chronograf140-alpine)
-	[`chronograf:1.4-alpine`](#chronograf14-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:8dd84876dfd91071011e7b344cb37d33d24d8f28049f4a53984d4dac37fd5ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3` - linux; amd64

```console
$ docker pull chronograf@sha256:9445d6ed17ccad986247c9e70311d6c0bec9535c08fbdb807525a6696ea85017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40312884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b2cd38520b58350df56fda93ae4e7644ace2e80df08ce60e2c738bc8d8179`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:56:53 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 03:56:53 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Tue, 12 Dec 2017 03:57:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 03:57:04 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Dec 2017 03:57:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Dec 2017 03:57:04 GMT
EXPOSE 8888/tcp
# Tue, 12 Dec 2017 03:57:05 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Dec 2017 03:57:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Dec 2017 03:57:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 03:57:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d5c79d105adf7ea85108c1b312525f1c0ca344849101a049b1a067118636`  
		Last Modified: Tue, 12 Dec 2017 03:57:23 GMT  
		Size: 4.5 MB (4500164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653796862543b972fa1bd521d5272ddd10ea2f57a8533fd456840cfb44803862`  
		Last Modified: Tue, 12 Dec 2017 03:57:25 GMT  
		Size: 13.3 MB (13302605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028d38f6d9d5133110f5833780a4a70f47026861df02a46b644af24288abf95d`  
		Last Modified: Tue, 12 Dec 2017 03:57:22 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab31c9630ae82ce9df09223bdc5097c7416f2ebf5a101e638c08f30fa3f853a`  
		Last Modified: Tue, 12 Dec 2017 03:57:22 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfd0e2b07e68c7c3d76c17dcd8e6549826e893b851e0a2b440d1d8bc9d2330`  
		Last Modified: Tue, 12 Dec 2017 03:57:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:02523412e9d023db715bf6f0d2bb47b13172d4cf23efa709657be56d2071eaf5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35119379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8c7f267f4c8bef0d4827df02a9eb3bee15d57c86f03787221a9eb64c9bd789`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:33 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 14:06:40 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Tue, 12 Dec 2017 14:06:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:07:01 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Dec 2017 14:07:11 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Dec 2017 14:07:20 GMT
EXPOSE 8888/tcp
# Tue, 12 Dec 2017 14:07:21 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Dec 2017 14:07:21 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Dec 2017 14:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 14:07:22 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90883f0b035a290249b13586f6f13f71096b60164a943d952ecda1e1efefc280`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 3.9 MB (3873001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939c27a4aaf65412f1640cdd0d3516ac7684c2125e6baa97329bcdb2f63632c1`  
		Last Modified: Tue, 12 Dec 2017 14:08:00 GMT  
		Size: 12.0 MB (11950950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa2b291da09e5d23b21ebed513b5a8726e63dda1881f14ee6e23b582be1e585`  
		Last Modified: Tue, 12 Dec 2017 14:07:58 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5822037666784aae813617fd22e9c5509817892c745a0097f3c9489470459850`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73844d296577499389dc8a63175971dfb1806b60b75053a9f22802c7b588e43b`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1580944e14eb1f38b61ebf4c53f0d5c9b6df437486c6e706459a07ccd3874b80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36580061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a7d863f44f362d04d1c904884349dfa6f4baba5d472d1d4d58f26b473ebb88`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 23:21:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 19 Dec 2017 23:21:57 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Tue, 19 Dec 2017 23:22:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Dec 2017 23:22:28 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 19 Dec 2017 23:22:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 19 Dec 2017 23:22:30 GMT
EXPOSE 8888/tcp
# Tue, 19 Dec 2017 23:22:31 GMT
VOLUME [/var/lib/chronograf]
# Tue, 19 Dec 2017 23:22:32 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 19 Dec 2017 23:22:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 23:22:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779229a74f0249d7f5a79cedc25be77365759cfd785b2c183b324862baaeeeb6`  
		Last Modified: Tue, 19 Dec 2017 23:22:52 GMT  
		Size: 4.1 MB (4074975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9eb2d7d4a74cc21ed39d440b27c2579551acd5a4ec964378499c6daa557fff`  
		Last Modified: Tue, 19 Dec 2017 23:22:55 GMT  
		Size: 12.1 MB (12149422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ec21ee5d0a5f84c40c9aecea361640ac7c0a101affc5f2ca5a8d1990eb2ccf`  
		Last Modified: Tue, 19 Dec 2017 23:22:51 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0e9c0167abe1cdfed41b1f3bac607f440a62bb0c5be008df518556fba88111`  
		Last Modified: Tue, 19 Dec 2017 23:22:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c083190db174f7feede62b3fe87c0bd6e2af64447e221eac24dcdb551ad6e6`  
		Last Modified: Tue, 19 Dec 2017 23:22:51 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10`

```console
$ docker pull chronograf@sha256:8dd84876dfd91071011e7b344cb37d33d24d8f28049f4a53984d4dac37fd5ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.10` - linux; amd64

```console
$ docker pull chronograf@sha256:9445d6ed17ccad986247c9e70311d6c0bec9535c08fbdb807525a6696ea85017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40312884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b2cd38520b58350df56fda93ae4e7644ace2e80df08ce60e2c738bc8d8179`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:56:53 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 03:56:53 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Tue, 12 Dec 2017 03:57:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 03:57:04 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Dec 2017 03:57:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Dec 2017 03:57:04 GMT
EXPOSE 8888/tcp
# Tue, 12 Dec 2017 03:57:05 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Dec 2017 03:57:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Dec 2017 03:57:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 03:57:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d5c79d105adf7ea85108c1b312525f1c0ca344849101a049b1a067118636`  
		Last Modified: Tue, 12 Dec 2017 03:57:23 GMT  
		Size: 4.5 MB (4500164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653796862543b972fa1bd521d5272ddd10ea2f57a8533fd456840cfb44803862`  
		Last Modified: Tue, 12 Dec 2017 03:57:25 GMT  
		Size: 13.3 MB (13302605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028d38f6d9d5133110f5833780a4a70f47026861df02a46b644af24288abf95d`  
		Last Modified: Tue, 12 Dec 2017 03:57:22 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab31c9630ae82ce9df09223bdc5097c7416f2ebf5a101e638c08f30fa3f853a`  
		Last Modified: Tue, 12 Dec 2017 03:57:22 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfd0e2b07e68c7c3d76c17dcd8e6549826e893b851e0a2b440d1d8bc9d2330`  
		Last Modified: Tue, 12 Dec 2017 03:57:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:02523412e9d023db715bf6f0d2bb47b13172d4cf23efa709657be56d2071eaf5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35119379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8c7f267f4c8bef0d4827df02a9eb3bee15d57c86f03787221a9eb64c9bd789`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:33 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 14:06:40 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Tue, 12 Dec 2017 14:06:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:07:01 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Dec 2017 14:07:11 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Dec 2017 14:07:20 GMT
EXPOSE 8888/tcp
# Tue, 12 Dec 2017 14:07:21 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Dec 2017 14:07:21 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Dec 2017 14:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 14:07:22 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90883f0b035a290249b13586f6f13f71096b60164a943d952ecda1e1efefc280`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 3.9 MB (3873001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939c27a4aaf65412f1640cdd0d3516ac7684c2125e6baa97329bcdb2f63632c1`  
		Last Modified: Tue, 12 Dec 2017 14:08:00 GMT  
		Size: 12.0 MB (11950950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa2b291da09e5d23b21ebed513b5a8726e63dda1881f14ee6e23b582be1e585`  
		Last Modified: Tue, 12 Dec 2017 14:07:58 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5822037666784aae813617fd22e9c5509817892c745a0097f3c9489470459850`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73844d296577499389dc8a63175971dfb1806b60b75053a9f22802c7b588e43b`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1580944e14eb1f38b61ebf4c53f0d5c9b6df437486c6e706459a07ccd3874b80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36580061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a7d863f44f362d04d1c904884349dfa6f4baba5d472d1d4d58f26b473ebb88`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 23:21:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 19 Dec 2017 23:21:57 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Tue, 19 Dec 2017 23:22:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Dec 2017 23:22:28 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 19 Dec 2017 23:22:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 19 Dec 2017 23:22:30 GMT
EXPOSE 8888/tcp
# Tue, 19 Dec 2017 23:22:31 GMT
VOLUME [/var/lib/chronograf]
# Tue, 19 Dec 2017 23:22:32 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 19 Dec 2017 23:22:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 23:22:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779229a74f0249d7f5a79cedc25be77365759cfd785b2c183b324862baaeeeb6`  
		Last Modified: Tue, 19 Dec 2017 23:22:52 GMT  
		Size: 4.1 MB (4074975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9eb2d7d4a74cc21ed39d440b27c2579551acd5a4ec964378499c6daa557fff`  
		Last Modified: Tue, 19 Dec 2017 23:22:55 GMT  
		Size: 12.1 MB (12149422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ec21ee5d0a5f84c40c9aecea361640ac7c0a101affc5f2ca5a8d1990eb2ccf`  
		Last Modified: Tue, 19 Dec 2017 23:22:51 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0e9c0167abe1cdfed41b1f3bac607f440a62bb0c5be008df518556fba88111`  
		Last Modified: Tue, 19 Dec 2017 23:22:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c083190db174f7feede62b3fe87c0bd6e2af64447e221eac24dcdb551ad6e6`  
		Last Modified: Tue, 19 Dec 2017 23:22:51 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10.0`

```console
$ docker pull chronograf@sha256:8dd84876dfd91071011e7b344cb37d33d24d8f28049f4a53984d4dac37fd5ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.10.0` - linux; amd64

```console
$ docker pull chronograf@sha256:9445d6ed17ccad986247c9e70311d6c0bec9535c08fbdb807525a6696ea85017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40312884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8b2cd38520b58350df56fda93ae4e7644ace2e80df08ce60e2c738bc8d8179`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:56:53 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 03:56:53 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Tue, 12 Dec 2017 03:57:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 03:57:04 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Dec 2017 03:57:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Dec 2017 03:57:04 GMT
EXPOSE 8888/tcp
# Tue, 12 Dec 2017 03:57:05 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Dec 2017 03:57:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Dec 2017 03:57:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 03:57:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d5c79d105adf7ea85108c1b312525f1c0ca344849101a049b1a067118636`  
		Last Modified: Tue, 12 Dec 2017 03:57:23 GMT  
		Size: 4.5 MB (4500164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653796862543b972fa1bd521d5272ddd10ea2f57a8533fd456840cfb44803862`  
		Last Modified: Tue, 12 Dec 2017 03:57:25 GMT  
		Size: 13.3 MB (13302605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028d38f6d9d5133110f5833780a4a70f47026861df02a46b644af24288abf95d`  
		Last Modified: Tue, 12 Dec 2017 03:57:22 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab31c9630ae82ce9df09223bdc5097c7416f2ebf5a101e638c08f30fa3f853a`  
		Last Modified: Tue, 12 Dec 2017 03:57:22 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfd0e2b07e68c7c3d76c17dcd8e6549826e893b851e0a2b440d1d8bc9d2330`  
		Last Modified: Tue, 12 Dec 2017 03:57:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:02523412e9d023db715bf6f0d2bb47b13172d4cf23efa709657be56d2071eaf5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35119379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8c7f267f4c8bef0d4827df02a9eb3bee15d57c86f03787221a9eb64c9bd789`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:33 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 14:06:40 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Tue, 12 Dec 2017 14:06:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:07:01 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 12 Dec 2017 14:07:11 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 12 Dec 2017 14:07:20 GMT
EXPOSE 8888/tcp
# Tue, 12 Dec 2017 14:07:21 GMT
VOLUME [/var/lib/chronograf]
# Tue, 12 Dec 2017 14:07:21 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 12 Dec 2017 14:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 14:07:22 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90883f0b035a290249b13586f6f13f71096b60164a943d952ecda1e1efefc280`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 3.9 MB (3873001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939c27a4aaf65412f1640cdd0d3516ac7684c2125e6baa97329bcdb2f63632c1`  
		Last Modified: Tue, 12 Dec 2017 14:08:00 GMT  
		Size: 12.0 MB (11950950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa2b291da09e5d23b21ebed513b5a8726e63dda1881f14ee6e23b582be1e585`  
		Last Modified: Tue, 12 Dec 2017 14:07:58 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5822037666784aae813617fd22e9c5509817892c745a0097f3c9489470459850`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73844d296577499389dc8a63175971dfb1806b60b75053a9f22802c7b588e43b`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1580944e14eb1f38b61ebf4c53f0d5c9b6df437486c6e706459a07ccd3874b80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36580061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a7d863f44f362d04d1c904884349dfa6f4baba5d472d1d4d58f26b473ebb88`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 23:21:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 19 Dec 2017 23:21:57 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Tue, 19 Dec 2017 23:22:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Dec 2017 23:22:28 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 19 Dec 2017 23:22:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 19 Dec 2017 23:22:30 GMT
EXPOSE 8888/tcp
# Tue, 19 Dec 2017 23:22:31 GMT
VOLUME [/var/lib/chronograf]
# Tue, 19 Dec 2017 23:22:32 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 19 Dec 2017 23:22:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 23:22:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779229a74f0249d7f5a79cedc25be77365759cfd785b2c183b324862baaeeeb6`  
		Last Modified: Tue, 19 Dec 2017 23:22:52 GMT  
		Size: 4.1 MB (4074975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9eb2d7d4a74cc21ed39d440b27c2579551acd5a4ec964378499c6daa557fff`  
		Last Modified: Tue, 19 Dec 2017 23:22:55 GMT  
		Size: 12.1 MB (12149422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ec21ee5d0a5f84c40c9aecea361640ac7c0a101affc5f2ca5a8d1990eb2ccf`  
		Last Modified: Tue, 19 Dec 2017 23:22:51 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0e9c0167abe1cdfed41b1f3bac607f440a62bb0c5be008df518556fba88111`  
		Last Modified: Tue, 19 Dec 2017 23:22:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c083190db174f7feede62b3fe87c0bd6e2af64447e221eac24dcdb551ad6e6`  
		Last Modified: Tue, 19 Dec 2017 23:22:51 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10.0-alpine`

```console
$ docker pull chronograf@sha256:01644a16b4dff59b49d1e4862dbbf9fbbce99f8effd8dd60ce08c921fe150f4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.10.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:819580e5d5fc1c6e672bf3315c6f1eb9262aed082277c9bf043240acb36c05a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8409267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5db72929addc033a8807b6782518c52567aa3cd50c8dc67064afc15a1b9a9fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 Jan 2018 01:48:35 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 10 Jan 2018 01:48:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 Jan 2018 01:48:44 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 Jan 2018 01:48:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 Jan 2018 01:48:45 GMT
EXPOSE 8888/tcp
# Wed, 10 Jan 2018 01:48:45 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 Jan 2018 01:48:46 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:48:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:48:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01418b42f1b42437973898cc58c39761661814d31429888254e6f6de9f97c124`  
		Last Modified: Wed, 10 Jan 2018 01:54:40 GMT  
		Size: 6.0 MB (6041976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed031fc1bb3b15c7127227ece5d3bcb1fd8a0e3431ad404f6957d81e7c1bb5c`  
		Last Modified: Wed, 10 Jan 2018 01:54:39 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e5fcb39b5ae8e3979287780e0788af856f76cfe1a09c767df2e397d7f3de3f`  
		Last Modified: Wed, 10 Jan 2018 01:54:39 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ce3e2d8754ab360d0320f1e704ba866a68336855f146a495a78ae6d72fcb7c`  
		Last Modified: Wed, 10 Jan 2018 01:54:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10-alpine`

```console
$ docker pull chronograf@sha256:01644a16b4dff59b49d1e4862dbbf9fbbce99f8effd8dd60ce08c921fe150f4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:819580e5d5fc1c6e672bf3315c6f1eb9262aed082277c9bf043240acb36c05a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8409267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5db72929addc033a8807b6782518c52567aa3cd50c8dc67064afc15a1b9a9fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 Jan 2018 01:48:35 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 10 Jan 2018 01:48:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 Jan 2018 01:48:44 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 Jan 2018 01:48:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 Jan 2018 01:48:45 GMT
EXPOSE 8888/tcp
# Wed, 10 Jan 2018 01:48:45 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 Jan 2018 01:48:46 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:48:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:48:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01418b42f1b42437973898cc58c39761661814d31429888254e6f6de9f97c124`  
		Last Modified: Wed, 10 Jan 2018 01:54:40 GMT  
		Size: 6.0 MB (6041976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed031fc1bb3b15c7127227ece5d3bcb1fd8a0e3431ad404f6957d81e7c1bb5c`  
		Last Modified: Wed, 10 Jan 2018 01:54:39 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e5fcb39b5ae8e3979287780e0788af856f76cfe1a09c767df2e397d7f3de3f`  
		Last Modified: Wed, 10 Jan 2018 01:54:39 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ce3e2d8754ab360d0320f1e704ba866a68336855f146a495a78ae6d72fcb7c`  
		Last Modified: Wed, 10 Jan 2018 01:54:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:01644a16b4dff59b49d1e4862dbbf9fbbce99f8effd8dd60ce08c921fe150f4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:819580e5d5fc1c6e672bf3315c6f1eb9262aed082277c9bf043240acb36c05a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8409267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5db72929addc033a8807b6782518c52567aa3cd50c8dc67064afc15a1b9a9fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 Jan 2018 01:48:35 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 10 Jan 2018 01:48:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 Jan 2018 01:48:44 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 Jan 2018 01:48:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 Jan 2018 01:48:45 GMT
EXPOSE 8888/tcp
# Wed, 10 Jan 2018 01:48:45 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 Jan 2018 01:48:46 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:48:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:48:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01418b42f1b42437973898cc58c39761661814d31429888254e6f6de9f97c124`  
		Last Modified: Wed, 10 Jan 2018 01:54:40 GMT  
		Size: 6.0 MB (6041976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed031fc1bb3b15c7127227ece5d3bcb1fd8a0e3431ad404f6957d81e7c1bb5c`  
		Last Modified: Wed, 10 Jan 2018 01:54:39 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e5fcb39b5ae8e3979287780e0788af856f76cfe1a09c767df2e397d7f3de3f`  
		Last Modified: Wed, 10 Jan 2018 01:54:39 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ce3e2d8754ab360d0320f1e704ba866a68336855f146a495a78ae6d72fcb7c`  
		Last Modified: Wed, 10 Jan 2018 01:54:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4`

```console
$ docker pull chronograf@sha256:e2036e13164c738e7d26f73fa9ee72ee69b1b9a470dbe7314a32ee08f745b2e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4` - linux; amd64

```console
$ docker pull chronograf@sha256:37e86868e69f89eaf2873e27dabd5c8a6f711c4befa362c600c4a0f8f79924a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40863354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a739e736a81e78fb8f8830d8e360d6f4e0eb4c9a14dad7a5d9ad070999ccb5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:56:53 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 03 Jan 2018 00:16:12 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Wed, 03 Jan 2018 00:16:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 03 Jan 2018 00:16:24 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 03 Jan 2018 00:16:24 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 03 Jan 2018 00:16:25 GMT
EXPOSE 8888/tcp
# Wed, 03 Jan 2018 00:16:25 GMT
VOLUME [/var/lib/chronograf]
# Wed, 03 Jan 2018 00:16:25 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 03 Jan 2018 00:16:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 00:16:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d5c79d105adf7ea85108c1b312525f1c0ca344849101a049b1a067118636`  
		Last Modified: Tue, 12 Dec 2017 03:57:23 GMT  
		Size: 4.5 MB (4500164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8f687851bd80a95d6accdc0ef33bddb77a09b0f62cdbaf21bcebbc96dfe709`  
		Last Modified: Wed, 03 Jan 2018 00:17:05 GMT  
		Size: 13.9 MB (13853073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce41d626fa59dbcd5537ca7a8069c50e42b4836f7c68e2d30de86d65db934fb0`  
		Last Modified: Wed, 03 Jan 2018 00:17:00 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5d2000247c07c09e2638dda080a89435fb11e5e61700d5ff424c8b80ca0012`  
		Last Modified: Wed, 03 Jan 2018 00:17:00 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab895bbaf38fec8af41079f435206c02b3b2aaf1efde3e3bc0b67f3f1db1984`  
		Last Modified: Wed, 03 Jan 2018 00:17:00 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:bc68eb8dc81719bfdd23c4ef6e74b8be1d62e8cafd1dbcc579492de3bf60fd10
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35579204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ae871abd54e1bc6bbf9945d27ffa653f3b558303958b00da241a09367a7fe9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:33 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 02 Jan 2018 23:59:32 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Tue, 02 Jan 2018 23:59:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Jan 2018 23:59:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 02 Jan 2018 23:59:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 02 Jan 2018 23:59:50 GMT
EXPOSE 8888/tcp
# Tue, 02 Jan 2018 23:59:50 GMT
VOLUME [/var/lib/chronograf]
# Tue, 02 Jan 2018 23:59:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 02 Jan 2018 23:59:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 23:59:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90883f0b035a290249b13586f6f13f71096b60164a943d952ecda1e1efefc280`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 3.9 MB (3873001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31016d1fba4f96213d4f4bc0d8318f375697d8179386fc537914ec26dab65b8c`  
		Last Modified: Wed, 03 Jan 2018 00:00:08 GMT  
		Size: 12.4 MB (12410774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6d71bf80689b3b4da764729b18e1b92f650807aaae5033015eb24ba1366a3d`  
		Last Modified: Wed, 03 Jan 2018 00:00:04 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add55476773d05ea6338c31e6d41b14024fa84b220704b7a8482af726c2df687`  
		Last Modified: Wed, 03 Jan 2018 00:00:09 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf2a7961ca9c9754e3f008d52403d070ddfc2f32ecf512e60dd3f214f7c0d26`  
		Last Modified: Wed, 03 Jan 2018 00:00:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:dbe34b063ef274ed571de24b94c3af3c11c74a3890c9bea212e1fa2f7b7e66a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37044528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6406434107af0baa7923e4f237bde4896f848ffbaeedbb1c4f7ad193e078ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 23:21:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 02 Jan 2018 23:21:42 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Tue, 02 Jan 2018 23:22:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Jan 2018 23:22:21 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 02 Jan 2018 23:22:22 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 02 Jan 2018 23:22:22 GMT
EXPOSE 8888/tcp
# Tue, 02 Jan 2018 23:22:23 GMT
VOLUME [/var/lib/chronograf]
# Tue, 02 Jan 2018 23:22:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 02 Jan 2018 23:22:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 23:22:25 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779229a74f0249d7f5a79cedc25be77365759cfd785b2c183b324862baaeeeb6`  
		Last Modified: Tue, 19 Dec 2017 23:22:52 GMT  
		Size: 4.1 MB (4074975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c8706f683c49d0647404bc1d1064d15d2254da7ed7a0ff77bdf5b5d3c72e7e`  
		Last Modified: Tue, 02 Jan 2018 23:22:50 GMT  
		Size: 12.6 MB (12613890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa7f758dc109299d11301636597bbdd112d0578a6aa1c1d863355651c2e39d1`  
		Last Modified: Tue, 02 Jan 2018 23:22:45 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf75bcb2a80911a84cfd9e945b0848f63bc3071023884a08951732c14219d84`  
		Last Modified: Tue, 02 Jan 2018 23:22:45 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712118295f43971c29d7231f5f768d9116cd39a6495cd205c2e2c9fbecf8ec6f`  
		Last Modified: Tue, 02 Jan 2018 23:22:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.0`

```console
$ docker pull chronograf@sha256:e2036e13164c738e7d26f73fa9ee72ee69b1b9a470dbe7314a32ee08f745b2e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4.0` - linux; amd64

```console
$ docker pull chronograf@sha256:37e86868e69f89eaf2873e27dabd5c8a6f711c4befa362c600c4a0f8f79924a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40863354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a739e736a81e78fb8f8830d8e360d6f4e0eb4c9a14dad7a5d9ad070999ccb5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:56:53 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 03 Jan 2018 00:16:12 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Wed, 03 Jan 2018 00:16:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 03 Jan 2018 00:16:24 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 03 Jan 2018 00:16:24 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 03 Jan 2018 00:16:25 GMT
EXPOSE 8888/tcp
# Wed, 03 Jan 2018 00:16:25 GMT
VOLUME [/var/lib/chronograf]
# Wed, 03 Jan 2018 00:16:25 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 03 Jan 2018 00:16:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 00:16:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d5c79d105adf7ea85108c1b312525f1c0ca344849101a049b1a067118636`  
		Last Modified: Tue, 12 Dec 2017 03:57:23 GMT  
		Size: 4.5 MB (4500164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8f687851bd80a95d6accdc0ef33bddb77a09b0f62cdbaf21bcebbc96dfe709`  
		Last Modified: Wed, 03 Jan 2018 00:17:05 GMT  
		Size: 13.9 MB (13853073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce41d626fa59dbcd5537ca7a8069c50e42b4836f7c68e2d30de86d65db934fb0`  
		Last Modified: Wed, 03 Jan 2018 00:17:00 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5d2000247c07c09e2638dda080a89435fb11e5e61700d5ff424c8b80ca0012`  
		Last Modified: Wed, 03 Jan 2018 00:17:00 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab895bbaf38fec8af41079f435206c02b3b2aaf1efde3e3bc0b67f3f1db1984`  
		Last Modified: Wed, 03 Jan 2018 00:17:00 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:bc68eb8dc81719bfdd23c4ef6e74b8be1d62e8cafd1dbcc579492de3bf60fd10
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35579204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ae871abd54e1bc6bbf9945d27ffa653f3b558303958b00da241a09367a7fe9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:33 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 02 Jan 2018 23:59:32 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Tue, 02 Jan 2018 23:59:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Jan 2018 23:59:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 02 Jan 2018 23:59:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 02 Jan 2018 23:59:50 GMT
EXPOSE 8888/tcp
# Tue, 02 Jan 2018 23:59:50 GMT
VOLUME [/var/lib/chronograf]
# Tue, 02 Jan 2018 23:59:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 02 Jan 2018 23:59:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 23:59:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90883f0b035a290249b13586f6f13f71096b60164a943d952ecda1e1efefc280`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 3.9 MB (3873001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31016d1fba4f96213d4f4bc0d8318f375697d8179386fc537914ec26dab65b8c`  
		Last Modified: Wed, 03 Jan 2018 00:00:08 GMT  
		Size: 12.4 MB (12410774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6d71bf80689b3b4da764729b18e1b92f650807aaae5033015eb24ba1366a3d`  
		Last Modified: Wed, 03 Jan 2018 00:00:04 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add55476773d05ea6338c31e6d41b14024fa84b220704b7a8482af726c2df687`  
		Last Modified: Wed, 03 Jan 2018 00:00:09 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf2a7961ca9c9754e3f008d52403d070ddfc2f32ecf512e60dd3f214f7c0d26`  
		Last Modified: Wed, 03 Jan 2018 00:00:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:dbe34b063ef274ed571de24b94c3af3c11c74a3890c9bea212e1fa2f7b7e66a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37044528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6406434107af0baa7923e4f237bde4896f848ffbaeedbb1c4f7ad193e078ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 23:21:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 02 Jan 2018 23:21:42 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Tue, 02 Jan 2018 23:22:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Jan 2018 23:22:21 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 02 Jan 2018 23:22:22 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 02 Jan 2018 23:22:22 GMT
EXPOSE 8888/tcp
# Tue, 02 Jan 2018 23:22:23 GMT
VOLUME [/var/lib/chronograf]
# Tue, 02 Jan 2018 23:22:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 02 Jan 2018 23:22:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 23:22:25 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779229a74f0249d7f5a79cedc25be77365759cfd785b2c183b324862baaeeeb6`  
		Last Modified: Tue, 19 Dec 2017 23:22:52 GMT  
		Size: 4.1 MB (4074975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c8706f683c49d0647404bc1d1064d15d2254da7ed7a0ff77bdf5b5d3c72e7e`  
		Last Modified: Tue, 02 Jan 2018 23:22:50 GMT  
		Size: 12.6 MB (12613890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa7f758dc109299d11301636597bbdd112d0578a6aa1c1d863355651c2e39d1`  
		Last Modified: Tue, 02 Jan 2018 23:22:45 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf75bcb2a80911a84cfd9e945b0848f63bc3071023884a08951732c14219d84`  
		Last Modified: Tue, 02 Jan 2018 23:22:45 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712118295f43971c29d7231f5f768d9116cd39a6495cd205c2e2c9fbecf8ec6f`  
		Last Modified: Tue, 02 Jan 2018 23:22:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.0.1`

**does not exist** (yet?)

## `chronograf:1.4.0.1-alpine`

**does not exist** (yet?)

## `chronograf:1.4.0-alpine`

```console
$ docker pull chronograf@sha256:fb87185dbeafeca943ef0d19f147145da6858d8dc1996363a36945234df4ec4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:592d05970b90090e5a7747eef15fb93235dd952b97de18046c2944b81f83550f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8865255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923e524d43d068bbf56a1660827ae2080bbc3187201004b31c66223fbcdb0e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 Jan 2018 01:49:07 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Wed, 10 Jan 2018 01:49:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 Jan 2018 01:49:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 Jan 2018 01:49:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 Jan 2018 01:49:16 GMT
EXPOSE 8888/tcp
# Wed, 10 Jan 2018 01:49:17 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 Jan 2018 01:49:17 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:49:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:49:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708446924fe6385e56d3787e3ea991d099f4de7fd0c660b6737ba746b19e8c67`  
		Last Modified: Wed, 10 Jan 2018 02:01:10 GMT  
		Size: 6.5 MB (6497964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5a85505273b1e661bd2ee724b246e120c5692fef1b9fc28b3f75bef89b3aa1`  
		Last Modified: Wed, 10 Jan 2018 02:01:09 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0088f032cab411d4158693459e228989f4939f4067cee20063a3965c70db8730`  
		Last Modified: Wed, 10 Jan 2018 02:01:09 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f450b502ab1ae29f536ce0beb22f849b10636a1ce2d5c96bf684aee59fc4c673`  
		Last Modified: Wed, 10 Jan 2018 02:01:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4-alpine`

```console
$ docker pull chronograf@sha256:fb87185dbeafeca943ef0d19f147145da6858d8dc1996363a36945234df4ec4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:592d05970b90090e5a7747eef15fb93235dd952b97de18046c2944b81f83550f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8865255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923e524d43d068bbf56a1660827ae2080bbc3187201004b31c66223fbcdb0e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 Jan 2018 01:49:07 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Wed, 10 Jan 2018 01:49:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 Jan 2018 01:49:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 Jan 2018 01:49:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 Jan 2018 01:49:16 GMT
EXPOSE 8888/tcp
# Wed, 10 Jan 2018 01:49:17 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 Jan 2018 01:49:17 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:49:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:49:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708446924fe6385e56d3787e3ea991d099f4de7fd0c660b6737ba746b19e8c67`  
		Last Modified: Wed, 10 Jan 2018 02:01:10 GMT  
		Size: 6.5 MB (6497964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5a85505273b1e661bd2ee724b246e120c5692fef1b9fc28b3f75bef89b3aa1`  
		Last Modified: Wed, 10 Jan 2018 02:01:09 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0088f032cab411d4158693459e228989f4939f4067cee20063a3965c70db8730`  
		Last Modified: Wed, 10 Jan 2018 02:01:09 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f450b502ab1ae29f536ce0beb22f849b10636a1ce2d5c96bf684aee59fc4c673`  
		Last Modified: Wed, 10 Jan 2018 02:01:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:fb87185dbeafeca943ef0d19f147145da6858d8dc1996363a36945234df4ec4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:592d05970b90090e5a7747eef15fb93235dd952b97de18046c2944b81f83550f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8865255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923e524d43d068bbf56a1660827ae2080bbc3187201004b31c66223fbcdb0e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 Jan 2018 01:49:07 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Wed, 10 Jan 2018 01:49:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 Jan 2018 01:49:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 Jan 2018 01:49:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 Jan 2018 01:49:16 GMT
EXPOSE 8888/tcp
# Wed, 10 Jan 2018 01:49:17 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 Jan 2018 01:49:17 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:49:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:49:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708446924fe6385e56d3787e3ea991d099f4de7fd0c660b6737ba746b19e8c67`  
		Last Modified: Wed, 10 Jan 2018 02:01:10 GMT  
		Size: 6.5 MB (6497964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5a85505273b1e661bd2ee724b246e120c5692fef1b9fc28b3f75bef89b3aa1`  
		Last Modified: Wed, 10 Jan 2018 02:01:09 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0088f032cab411d4158693459e228989f4939f4067cee20063a3965c70db8730`  
		Last Modified: Wed, 10 Jan 2018 02:01:09 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f450b502ab1ae29f536ce0beb22f849b10636a1ce2d5c96bf684aee59fc4c673`  
		Last Modified: Wed, 10 Jan 2018 02:01:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:e2036e13164c738e7d26f73fa9ee72ee69b1b9a470dbe7314a32ee08f745b2e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:37e86868e69f89eaf2873e27dabd5c8a6f711c4befa362c600c4a0f8f79924a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40863354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a739e736a81e78fb8f8830d8e360d6f4e0eb4c9a14dad7a5d9ad070999ccb5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:56:53 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 03 Jan 2018 00:16:12 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Wed, 03 Jan 2018 00:16:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 03 Jan 2018 00:16:24 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 03 Jan 2018 00:16:24 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 03 Jan 2018 00:16:25 GMT
EXPOSE 8888/tcp
# Wed, 03 Jan 2018 00:16:25 GMT
VOLUME [/var/lib/chronograf]
# Wed, 03 Jan 2018 00:16:25 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 03 Jan 2018 00:16:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 00:16:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d5c79d105adf7ea85108c1b312525f1c0ca344849101a049b1a067118636`  
		Last Modified: Tue, 12 Dec 2017 03:57:23 GMT  
		Size: 4.5 MB (4500164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8f687851bd80a95d6accdc0ef33bddb77a09b0f62cdbaf21bcebbc96dfe709`  
		Last Modified: Wed, 03 Jan 2018 00:17:05 GMT  
		Size: 13.9 MB (13853073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce41d626fa59dbcd5537ca7a8069c50e42b4836f7c68e2d30de86d65db934fb0`  
		Last Modified: Wed, 03 Jan 2018 00:17:00 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5d2000247c07c09e2638dda080a89435fb11e5e61700d5ff424c8b80ca0012`  
		Last Modified: Wed, 03 Jan 2018 00:17:00 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab895bbaf38fec8af41079f435206c02b3b2aaf1efde3e3bc0b67f3f1db1984`  
		Last Modified: Wed, 03 Jan 2018 00:17:00 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:bc68eb8dc81719bfdd23c4ef6e74b8be1d62e8cafd1dbcc579492de3bf60fd10
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35579204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ae871abd54e1bc6bbf9945d27ffa653f3b558303958b00da241a09367a7fe9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:33 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 02 Jan 2018 23:59:32 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Tue, 02 Jan 2018 23:59:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Jan 2018 23:59:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 02 Jan 2018 23:59:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 02 Jan 2018 23:59:50 GMT
EXPOSE 8888/tcp
# Tue, 02 Jan 2018 23:59:50 GMT
VOLUME [/var/lib/chronograf]
# Tue, 02 Jan 2018 23:59:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 02 Jan 2018 23:59:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 23:59:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90883f0b035a290249b13586f6f13f71096b60164a943d952ecda1e1efefc280`  
		Last Modified: Tue, 12 Dec 2017 14:07:56 GMT  
		Size: 3.9 MB (3873001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31016d1fba4f96213d4f4bc0d8318f375697d8179386fc537914ec26dab65b8c`  
		Last Modified: Wed, 03 Jan 2018 00:00:08 GMT  
		Size: 12.4 MB (12410774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6d71bf80689b3b4da764729b18e1b92f650807aaae5033015eb24ba1366a3d`  
		Last Modified: Wed, 03 Jan 2018 00:00:04 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add55476773d05ea6338c31e6d41b14024fa84b220704b7a8482af726c2df687`  
		Last Modified: Wed, 03 Jan 2018 00:00:09 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf2a7961ca9c9754e3f008d52403d070ddfc2f32ecf512e60dd3f214f7c0d26`  
		Last Modified: Wed, 03 Jan 2018 00:00:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:dbe34b063ef274ed571de24b94c3af3c11c74a3890c9bea212e1fa2f7b7e66a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37044528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6406434107af0baa7923e4f237bde4896f848ffbaeedbb1c4f7ad193e078ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 23:21:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 02 Jan 2018 23:21:42 GMT
ENV CHRONOGRAF_VERSION=1.4.0.0
# Tue, 02 Jan 2018 23:22:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Jan 2018 23:22:21 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 02 Jan 2018 23:22:22 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 02 Jan 2018 23:22:22 GMT
EXPOSE 8888/tcp
# Tue, 02 Jan 2018 23:22:23 GMT
VOLUME [/var/lib/chronograf]
# Tue, 02 Jan 2018 23:22:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 02 Jan 2018 23:22:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 23:22:25 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779229a74f0249d7f5a79cedc25be77365759cfd785b2c183b324862baaeeeb6`  
		Last Modified: Tue, 19 Dec 2017 23:22:52 GMT  
		Size: 4.1 MB (4074975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c8706f683c49d0647404bc1d1064d15d2254da7ed7a0ff77bdf5b5d3c72e7e`  
		Last Modified: Tue, 02 Jan 2018 23:22:50 GMT  
		Size: 12.6 MB (12613890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa7f758dc109299d11301636597bbdd112d0578a6aa1c1d863355651c2e39d1`  
		Last Modified: Tue, 02 Jan 2018 23:22:45 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf75bcb2a80911a84cfd9e945b0848f63bc3071023884a08951732c14219d84`  
		Last Modified: Tue, 02 Jan 2018 23:22:45 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712118295f43971c29d7231f5f768d9116cd39a6495cd205c2e2c9fbecf8ec6f`  
		Last Modified: Tue, 02 Jan 2018 23:22:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
