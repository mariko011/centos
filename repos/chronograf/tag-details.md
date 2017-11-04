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
$ docker pull chronograf@sha256:46731764360d0032da63d4fbc3179a6bdf46bf6dff4f0724b977f7823ac9ed40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3` - linux; amd64

```console
$ docker pull chronograf@sha256:49b1f156a8c25cb41959ba0b23ec75c7ec47c2ccfe253767dc3b8c2367e8baa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40319599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40b111d3ea0ae6d5f726e770951b089de4c79a19593912e5f3b97f48adbfe84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:50:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Nov 2017 17:50:34 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Sat, 04 Nov 2017 17:50:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 17:50:50 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Nov 2017 17:50:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Nov 2017 17:50:50 GMT
EXPOSE 8888/tcp
# Sat, 04 Nov 2017 17:50:50 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Nov 2017 17:50:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Nov 2017 17:50:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 17:50:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30158386b9572f821c8177c4b0ce45899dd21bbf1e0466aa1fc2bbb020d651da`  
		Last Modified: Sat, 04 Nov 2017 17:51:52 GMT  
		Size: 4.5 MB (4500232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4f4a043b0f5d382413f95c08cab3fe764269903600fb8e6f7b1d4c822ec2f`  
		Last Modified: Sat, 04 Nov 2017 17:51:55 GMT  
		Size: 13.3 MB (13302623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8410dd17c76f250980f80868d48fef8c392b93edcb8208fdb25b7e4b99fe54b0`  
		Last Modified: Sat, 04 Nov 2017 17:51:51 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9196db112ed960331ee9e240c4b307cebedfa8800f9c5f727085f3aa9ecbb2b6`  
		Last Modified: Sat, 04 Nov 2017 17:51:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90735b158c67ee3e1410a300663f5ce6aa8fbbc6341ea2256d9ca4bbeed4718f`  
		Last Modified: Sat, 04 Nov 2017 17:51:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:f376c55197f7b82ea71bd7e46441658cf5af103be9fc9eefeb4ad72895df8324
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35125339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ce1934d99a4df4942d126bf0f771ba91b72dae694c5698321453d5e59f6a37`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 22:59:29 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 22:59:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 22:59:44 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 22:59:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 22:59:45 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 22:59:45 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 22:59:45 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 22:59:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 22:59:46 GMT
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
	-	`sha256:66d8c37e38a4a1116136b6ffa9a0ba9650ae87fca8d46067bcaea4d9725bc9e2`  
		Last Modified: Thu, 26 Oct 2017 23:00:02 GMT  
		Size: 12.0 MB (11950885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc845c6105793f80787d284240946eb8b78b449d7f7768e56462cf81d152e0a`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57506983616de545b69b25bdbc1680cd53458a0e5ad8e7e51f4a255220c50c5f`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba43344e08496ec783dfb50a320c69f2b34f9fcc7456ffedd9567dd570420490`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:cb4178cd3d281095919efdc15dcd1d1eac4970f4c8f43693bfc419a6893eef00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36585973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e5233f13e31b725c59bc519874c3ef8048518a6487bcf897d78dd6a6b11f19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:01 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 17:41:18 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 17:41:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 17:41:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 17:41:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 17:41:54 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 17:41:55 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 17:41:55 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 17:41:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 17:41:57 GMT
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
	-	`sha256:f020de0ef829e2012b36c08c6a0d30906d975307b9e104aa899d2ceb64c0ef29`  
		Last Modified: Thu, 26 Oct 2017 17:42:44 GMT  
		Size: 12.1 MB (12149471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20247f6aebb12253162b6a79cb375aebcc3e9add3e96ecc8cd3a057e209aaf51`  
		Last Modified: Thu, 26 Oct 2017 17:42:39 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfccf0b40246be90c017192b7e670e6d2bb4d65f766f89f7e9d4725ff5b899a`  
		Last Modified: Thu, 26 Oct 2017 17:42:39 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9108a70214e51a9b35e8ee4e9dd0ab2e5e1df9bce50556c06a24a5ad0659c1`  
		Last Modified: Thu, 26 Oct 2017 17:42:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10`

```console
$ docker pull chronograf@sha256:46731764360d0032da63d4fbc3179a6bdf46bf6dff4f0724b977f7823ac9ed40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.10` - linux; amd64

```console
$ docker pull chronograf@sha256:49b1f156a8c25cb41959ba0b23ec75c7ec47c2ccfe253767dc3b8c2367e8baa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40319599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40b111d3ea0ae6d5f726e770951b089de4c79a19593912e5f3b97f48adbfe84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:50:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Nov 2017 17:50:34 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Sat, 04 Nov 2017 17:50:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 17:50:50 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Nov 2017 17:50:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Nov 2017 17:50:50 GMT
EXPOSE 8888/tcp
# Sat, 04 Nov 2017 17:50:50 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Nov 2017 17:50:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Nov 2017 17:50:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 17:50:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30158386b9572f821c8177c4b0ce45899dd21bbf1e0466aa1fc2bbb020d651da`  
		Last Modified: Sat, 04 Nov 2017 17:51:52 GMT  
		Size: 4.5 MB (4500232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4f4a043b0f5d382413f95c08cab3fe764269903600fb8e6f7b1d4c822ec2f`  
		Last Modified: Sat, 04 Nov 2017 17:51:55 GMT  
		Size: 13.3 MB (13302623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8410dd17c76f250980f80868d48fef8c392b93edcb8208fdb25b7e4b99fe54b0`  
		Last Modified: Sat, 04 Nov 2017 17:51:51 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9196db112ed960331ee9e240c4b307cebedfa8800f9c5f727085f3aa9ecbb2b6`  
		Last Modified: Sat, 04 Nov 2017 17:51:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90735b158c67ee3e1410a300663f5ce6aa8fbbc6341ea2256d9ca4bbeed4718f`  
		Last Modified: Sat, 04 Nov 2017 17:51:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:f376c55197f7b82ea71bd7e46441658cf5af103be9fc9eefeb4ad72895df8324
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35125339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ce1934d99a4df4942d126bf0f771ba91b72dae694c5698321453d5e59f6a37`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 22:59:29 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 22:59:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 22:59:44 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 22:59:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 22:59:45 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 22:59:45 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 22:59:45 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 22:59:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 22:59:46 GMT
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
	-	`sha256:66d8c37e38a4a1116136b6ffa9a0ba9650ae87fca8d46067bcaea4d9725bc9e2`  
		Last Modified: Thu, 26 Oct 2017 23:00:02 GMT  
		Size: 12.0 MB (11950885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc845c6105793f80787d284240946eb8b78b449d7f7768e56462cf81d152e0a`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57506983616de545b69b25bdbc1680cd53458a0e5ad8e7e51f4a255220c50c5f`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba43344e08496ec783dfb50a320c69f2b34f9fcc7456ffedd9567dd570420490`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:cb4178cd3d281095919efdc15dcd1d1eac4970f4c8f43693bfc419a6893eef00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36585973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e5233f13e31b725c59bc519874c3ef8048518a6487bcf897d78dd6a6b11f19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:01 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 17:41:18 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 17:41:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 17:41:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 17:41:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 17:41:54 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 17:41:55 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 17:41:55 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 17:41:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 17:41:57 GMT
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
	-	`sha256:f020de0ef829e2012b36c08c6a0d30906d975307b9e104aa899d2ceb64c0ef29`  
		Last Modified: Thu, 26 Oct 2017 17:42:44 GMT  
		Size: 12.1 MB (12149471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20247f6aebb12253162b6a79cb375aebcc3e9add3e96ecc8cd3a057e209aaf51`  
		Last Modified: Thu, 26 Oct 2017 17:42:39 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfccf0b40246be90c017192b7e670e6d2bb4d65f766f89f7e9d4725ff5b899a`  
		Last Modified: Thu, 26 Oct 2017 17:42:39 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9108a70214e51a9b35e8ee4e9dd0ab2e5e1df9bce50556c06a24a5ad0659c1`  
		Last Modified: Thu, 26 Oct 2017 17:42:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10.0`

```console
$ docker pull chronograf@sha256:46731764360d0032da63d4fbc3179a6bdf46bf6dff4f0724b977f7823ac9ed40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.10.0` - linux; amd64

```console
$ docker pull chronograf@sha256:49b1f156a8c25cb41959ba0b23ec75c7ec47c2ccfe253767dc3b8c2367e8baa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40319599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40b111d3ea0ae6d5f726e770951b089de4c79a19593912e5f3b97f48adbfe84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:50:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Nov 2017 17:50:34 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Sat, 04 Nov 2017 17:50:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 17:50:50 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Nov 2017 17:50:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Nov 2017 17:50:50 GMT
EXPOSE 8888/tcp
# Sat, 04 Nov 2017 17:50:50 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Nov 2017 17:50:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Nov 2017 17:50:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 17:50:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30158386b9572f821c8177c4b0ce45899dd21bbf1e0466aa1fc2bbb020d651da`  
		Last Modified: Sat, 04 Nov 2017 17:51:52 GMT  
		Size: 4.5 MB (4500232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4f4a043b0f5d382413f95c08cab3fe764269903600fb8e6f7b1d4c822ec2f`  
		Last Modified: Sat, 04 Nov 2017 17:51:55 GMT  
		Size: 13.3 MB (13302623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8410dd17c76f250980f80868d48fef8c392b93edcb8208fdb25b7e4b99fe54b0`  
		Last Modified: Sat, 04 Nov 2017 17:51:51 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9196db112ed960331ee9e240c4b307cebedfa8800f9c5f727085f3aa9ecbb2b6`  
		Last Modified: Sat, 04 Nov 2017 17:51:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90735b158c67ee3e1410a300663f5ce6aa8fbbc6341ea2256d9ca4bbeed4718f`  
		Last Modified: Sat, 04 Nov 2017 17:51:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:f376c55197f7b82ea71bd7e46441658cf5af103be9fc9eefeb4ad72895df8324
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35125339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ce1934d99a4df4942d126bf0f771ba91b72dae694c5698321453d5e59f6a37`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 22:59:29 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 22:59:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 22:59:44 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 22:59:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 22:59:45 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 22:59:45 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 22:59:45 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 22:59:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 22:59:46 GMT
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
	-	`sha256:66d8c37e38a4a1116136b6ffa9a0ba9650ae87fca8d46067bcaea4d9725bc9e2`  
		Last Modified: Thu, 26 Oct 2017 23:00:02 GMT  
		Size: 12.0 MB (11950885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc845c6105793f80787d284240946eb8b78b449d7f7768e56462cf81d152e0a`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57506983616de545b69b25bdbc1680cd53458a0e5ad8e7e51f4a255220c50c5f`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba43344e08496ec783dfb50a320c69f2b34f9fcc7456ffedd9567dd570420490`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:cb4178cd3d281095919efdc15dcd1d1eac4970f4c8f43693bfc419a6893eef00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36585973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e5233f13e31b725c59bc519874c3ef8048518a6487bcf897d78dd6a6b11f19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:01 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 17:41:18 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 17:41:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 17:41:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 17:41:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 17:41:54 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 17:41:55 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 17:41:55 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 17:41:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 17:41:57 GMT
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
	-	`sha256:f020de0ef829e2012b36c08c6a0d30906d975307b9e104aa899d2ceb64c0ef29`  
		Last Modified: Thu, 26 Oct 2017 17:42:44 GMT  
		Size: 12.1 MB (12149471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20247f6aebb12253162b6a79cb375aebcc3e9add3e96ecc8cd3a057e209aaf51`  
		Last Modified: Thu, 26 Oct 2017 17:42:39 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfccf0b40246be90c017192b7e670e6d2bb4d65f766f89f7e9d4725ff5b899a`  
		Last Modified: Thu, 26 Oct 2017 17:42:39 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9108a70214e51a9b35e8ee4e9dd0ab2e5e1df9bce50556c06a24a5ad0659c1`  
		Last Modified: Thu, 26 Oct 2017 17:42:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10.0-alpine`

```console
$ docker pull chronograf@sha256:231dd692ceb255cd1b3547eca0e92cd10622dd0426c4dc847a63257663d44367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.10.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:53ed1eac08393461e56e0a1379dff675dfcb0e410065f51e5d38312ba392fe69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8387282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4246474ccfb3017ebee64f3f6f48a7aec55eefa829c657933eb14c761526f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:17:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 03 Nov 2017 22:17:52 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Nov 2017 22:44:40 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Fri, 03 Nov 2017 22:44:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Nov 2017 22:44:56 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 03 Nov 2017 22:44:56 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Nov 2017 22:44:56 GMT
EXPOSE 8888/tcp
# Fri, 03 Nov 2017 22:44:56 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Nov 2017 22:44:57 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:44:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:44:57 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309c3337f4743db6a36cc534b3703bfd713e510d2f5a542abb5ffb963560e053`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee832f8e606cca1498a9b79e14a66516f38427a44048bdbfe3acbc3fb6266db`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 350.7 KB (350696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a4cc002bd98771acca9b30e50de12f3513c0c620647a8a7d2a7e7d8d10b37`  
		Last Modified: Fri, 03 Nov 2017 22:45:19 GMT  
		Size: 6.0 MB (6041822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845b6e5bf1c4d1fc537c5677860e4cc2d369efc4752f6c8fc401cbce3670ec8a`  
		Last Modified: Fri, 03 Nov 2017 22:45:19 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de0079403fcc04944d2910e2e1ade0ba4430dead8dc9bcd344633fbf267aeb`  
		Last Modified: Fri, 03 Nov 2017 22:45:18 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ab83eea8dfff1ec64368415463c85ad61f2e131e1d42f05fa59830790dc9f9`  
		Last Modified: Fri, 03 Nov 2017 22:45:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10-alpine`

```console
$ docker pull chronograf@sha256:231dd692ceb255cd1b3547eca0e92cd10622dd0426c4dc847a63257663d44367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:53ed1eac08393461e56e0a1379dff675dfcb0e410065f51e5d38312ba392fe69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8387282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4246474ccfb3017ebee64f3f6f48a7aec55eefa829c657933eb14c761526f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:17:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 03 Nov 2017 22:17:52 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Nov 2017 22:44:40 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Fri, 03 Nov 2017 22:44:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Nov 2017 22:44:56 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 03 Nov 2017 22:44:56 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Nov 2017 22:44:56 GMT
EXPOSE 8888/tcp
# Fri, 03 Nov 2017 22:44:56 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Nov 2017 22:44:57 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:44:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:44:57 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309c3337f4743db6a36cc534b3703bfd713e510d2f5a542abb5ffb963560e053`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee832f8e606cca1498a9b79e14a66516f38427a44048bdbfe3acbc3fb6266db`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 350.7 KB (350696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a4cc002bd98771acca9b30e50de12f3513c0c620647a8a7d2a7e7d8d10b37`  
		Last Modified: Fri, 03 Nov 2017 22:45:19 GMT  
		Size: 6.0 MB (6041822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845b6e5bf1c4d1fc537c5677860e4cc2d369efc4752f6c8fc401cbce3670ec8a`  
		Last Modified: Fri, 03 Nov 2017 22:45:19 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de0079403fcc04944d2910e2e1ade0ba4430dead8dc9bcd344633fbf267aeb`  
		Last Modified: Fri, 03 Nov 2017 22:45:18 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ab83eea8dfff1ec64368415463c85ad61f2e131e1d42f05fa59830790dc9f9`  
		Last Modified: Fri, 03 Nov 2017 22:45:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:231dd692ceb255cd1b3547eca0e92cd10622dd0426c4dc847a63257663d44367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:53ed1eac08393461e56e0a1379dff675dfcb0e410065f51e5d38312ba392fe69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8387282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4246474ccfb3017ebee64f3f6f48a7aec55eefa829c657933eb14c761526f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:17:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 03 Nov 2017 22:17:52 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Nov 2017 22:44:40 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Fri, 03 Nov 2017 22:44:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Nov 2017 22:44:56 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 03 Nov 2017 22:44:56 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Nov 2017 22:44:56 GMT
EXPOSE 8888/tcp
# Fri, 03 Nov 2017 22:44:56 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Nov 2017 22:44:57 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:44:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:44:57 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309c3337f4743db6a36cc534b3703bfd713e510d2f5a542abb5ffb963560e053`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee832f8e606cca1498a9b79e14a66516f38427a44048bdbfe3acbc3fb6266db`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 350.7 KB (350696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a4cc002bd98771acca9b30e50de12f3513c0c620647a8a7d2a7e7d8d10b37`  
		Last Modified: Fri, 03 Nov 2017 22:45:19 GMT  
		Size: 6.0 MB (6041822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845b6e5bf1c4d1fc537c5677860e4cc2d369efc4752f6c8fc401cbce3670ec8a`  
		Last Modified: Fri, 03 Nov 2017 22:45:19 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de0079403fcc04944d2910e2e1ade0ba4430dead8dc9bcd344633fbf267aeb`  
		Last Modified: Fri, 03 Nov 2017 22:45:18 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ab83eea8dfff1ec64368415463c85ad61f2e131e1d42f05fa59830790dc9f9`  
		Last Modified: Fri, 03 Nov 2017 22:45:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:231dd692ceb255cd1b3547eca0e92cd10622dd0426c4dc847a63257663d44367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:53ed1eac08393461e56e0a1379dff675dfcb0e410065f51e5d38312ba392fe69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8387282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4246474ccfb3017ebee64f3f6f48a7aec55eefa829c657933eb14c761526f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:17:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 03 Nov 2017 22:17:52 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Nov 2017 22:44:40 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Fri, 03 Nov 2017 22:44:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Nov 2017 22:44:56 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 03 Nov 2017 22:44:56 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Nov 2017 22:44:56 GMT
EXPOSE 8888/tcp
# Fri, 03 Nov 2017 22:44:56 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Nov 2017 22:44:57 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:44:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:44:57 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309c3337f4743db6a36cc534b3703bfd713e510d2f5a542abb5ffb963560e053`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee832f8e606cca1498a9b79e14a66516f38427a44048bdbfe3acbc3fb6266db`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 350.7 KB (350696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a4cc002bd98771acca9b30e50de12f3513c0c620647a8a7d2a7e7d8d10b37`  
		Last Modified: Fri, 03 Nov 2017 22:45:19 GMT  
		Size: 6.0 MB (6041822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845b6e5bf1c4d1fc537c5677860e4cc2d369efc4752f6c8fc401cbce3670ec8a`  
		Last Modified: Fri, 03 Nov 2017 22:45:19 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de0079403fcc04944d2910e2e1ade0ba4430dead8dc9bcd344633fbf267aeb`  
		Last Modified: Fri, 03 Nov 2017 22:45:18 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ab83eea8dfff1ec64368415463c85ad61f2e131e1d42f05fa59830790dc9f9`  
		Last Modified: Fri, 03 Nov 2017 22:45:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:46731764360d0032da63d4fbc3179a6bdf46bf6dff4f0724b977f7823ac9ed40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:49b1f156a8c25cb41959ba0b23ec75c7ec47c2ccfe253767dc3b8c2367e8baa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40319599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40b111d3ea0ae6d5f726e770951b089de4c79a19593912e5f3b97f48adbfe84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:50:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Nov 2017 17:50:34 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Sat, 04 Nov 2017 17:50:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 17:50:50 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Nov 2017 17:50:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Nov 2017 17:50:50 GMT
EXPOSE 8888/tcp
# Sat, 04 Nov 2017 17:50:50 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Nov 2017 17:50:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Nov 2017 17:50:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 17:50:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30158386b9572f821c8177c4b0ce45899dd21bbf1e0466aa1fc2bbb020d651da`  
		Last Modified: Sat, 04 Nov 2017 17:51:52 GMT  
		Size: 4.5 MB (4500232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4f4a043b0f5d382413f95c08cab3fe764269903600fb8e6f7b1d4c822ec2f`  
		Last Modified: Sat, 04 Nov 2017 17:51:55 GMT  
		Size: 13.3 MB (13302623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8410dd17c76f250980f80868d48fef8c392b93edcb8208fdb25b7e4b99fe54b0`  
		Last Modified: Sat, 04 Nov 2017 17:51:51 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9196db112ed960331ee9e240c4b307cebedfa8800f9c5f727085f3aa9ecbb2b6`  
		Last Modified: Sat, 04 Nov 2017 17:51:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90735b158c67ee3e1410a300663f5ce6aa8fbbc6341ea2256d9ca4bbeed4718f`  
		Last Modified: Sat, 04 Nov 2017 17:51:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:f376c55197f7b82ea71bd7e46441658cf5af103be9fc9eefeb4ad72895df8324
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35125339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ce1934d99a4df4942d126bf0f771ba91b72dae694c5698321453d5e59f6a37`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 22:59:29 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 22:59:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 22:59:44 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 22:59:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 22:59:45 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 22:59:45 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 22:59:45 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 22:59:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 22:59:46 GMT
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
	-	`sha256:66d8c37e38a4a1116136b6ffa9a0ba9650ae87fca8d46067bcaea4d9725bc9e2`  
		Last Modified: Thu, 26 Oct 2017 23:00:02 GMT  
		Size: 12.0 MB (11950885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc845c6105793f80787d284240946eb8b78b449d7f7768e56462cf81d152e0a`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57506983616de545b69b25bdbc1680cd53458a0e5ad8e7e51f4a255220c50c5f`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba43344e08496ec783dfb50a320c69f2b34f9fcc7456ffedd9567dd570420490`  
		Last Modified: Thu, 26 Oct 2017 22:59:58 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:cb4178cd3d281095919efdc15dcd1d1eac4970f4c8f43693bfc419a6893eef00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36585973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e5233f13e31b725c59bc519874c3ef8048518a6487bcf897d78dd6a6b11f19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:01 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 17:41:18 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 26 Oct 2017 17:41:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 17:41:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 26 Oct 2017 17:41:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 26 Oct 2017 17:41:54 GMT
EXPOSE 8888/tcp
# Thu, 26 Oct 2017 17:41:55 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Oct 2017 17:41:55 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 26 Oct 2017 17:41:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 17:41:57 GMT
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
	-	`sha256:f020de0ef829e2012b36c08c6a0d30906d975307b9e104aa899d2ceb64c0ef29`  
		Last Modified: Thu, 26 Oct 2017 17:42:44 GMT  
		Size: 12.1 MB (12149471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20247f6aebb12253162b6a79cb375aebcc3e9add3e96ecc8cd3a057e209aaf51`  
		Last Modified: Thu, 26 Oct 2017 17:42:39 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfccf0b40246be90c017192b7e670e6d2bb4d65f766f89f7e9d4725ff5b899a`  
		Last Modified: Thu, 26 Oct 2017 17:42:39 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9108a70214e51a9b35e8ee4e9dd0ab2e5e1df9bce50556c06a24a5ad0659c1`  
		Last Modified: Thu, 26 Oct 2017 17:42:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
