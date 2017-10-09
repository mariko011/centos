<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.9`](#chronograf139)
-	[`chronograf:1.3.9.0`](#chronograf1390)
-	[`chronograf:1.3.9.0-alpine`](#chronograf1390-alpine)
-	[`chronograf:1.3.9-alpine`](#chronograf139-alpine)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:5c863657d06495859b30c6ce34ceac767c87c120bec3c0815c4639fbbc183ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3` - linux; amd64

```console
$ docker pull chronograf@sha256:693f4de041f5d01f8141d1b7de9c1e00e909cc01ab375e4697677a5c9eb714c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40269142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d84b6981c1f68c5e7428b218838f473be0422589c4aa259d3c59b197438f2ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 18:15:42 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 18:15:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 18:16:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 18:16:02 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 18:16:03 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 18:16:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 18:16:03 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 18:16:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 18:16:03 GMT
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
	-	`sha256:20fd40d2f91f9954a7d5aad574e6d020e880baf449f579c121826d41e19d81d9`  
		Last Modified: Mon, 09 Oct 2017 18:16:47 GMT  
		Size: 13.3 MB (13251461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed0ff010f62e8c0037b4467bb1f459e6c61f9ff77f40d7be7c97d58d8585a98`  
		Last Modified: Mon, 09 Oct 2017 18:16:44 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c78c59b4eb51ab27e7b37a0ff7185e81a07392451b8f94fb01610fdd808a7b8`  
		Last Modified: Mon, 09 Oct 2017 18:16:44 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc176de616a88d742d39532a2ad2355e04605f864cb98593bdb70e2a85bc9da2`  
		Last Modified: Mon, 09 Oct 2017 18:16:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:cfcb1a79fd9184f1a2cb40db726f1a58df9e6f5948c451fa659c6098e08376ab
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34950351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f612d24b96e7ab47915d412ea5d1ea2fbf68cfb5ac4151a340abd8571ceea1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:53 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Wed, 27 Sep 2017 04:14:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:47:15 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 02 Oct 2017 22:59:27 GMT
ENV CHRONOGRAF_VERSION=1.3.8.3
# Mon, 02 Oct 2017 22:59:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Oct 2017 22:59:43 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 02 Oct 2017 22:59:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 02 Oct 2017 22:59:44 GMT
EXPOSE 8888/tcp
# Mon, 02 Oct 2017 22:59:44 GMT
VOLUME [/var/lib/chronograf]
# Mon, 02 Oct 2017 22:59:44 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 02 Oct 2017 22:59:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 22:59:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f6b0b1de175bfd1f4139472dafaeed39d43c5c14f6f48f113c9053f9b7837ddf`  
		Last Modified: Wed, 27 Sep 2017 04:20:52 GMT  
		Size: 19.3 MB (19276815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb5d5fa8cc1ca32c2ae78720648602d5a97818789c38dfb8c641874cafd0749`  
		Last Modified: Wed, 27 Sep 2017 04:47:40 GMT  
		Size: 3.9 MB (3879156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1638240c0782b162eff78abd0a1f0c3b90187dae11f07f3295c24f4045653306`  
		Last Modified: Mon, 02 Oct 2017 22:59:59 GMT  
		Size: 11.8 MB (11769983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77edccf05d8469efba7deec69fd72ce14c1ced694030bf0b576c90d2b84b4547`  
		Last Modified: Mon, 02 Oct 2017 22:59:56 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ddf43f79d985e73c92f977329228d614b044238c8c246d739ed61aead21c70`  
		Last Modified: Mon, 02 Oct 2017 22:59:57 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633781e95b8ca9f87d011b28233482bec48a0810ebe59cb8d7781d971206c3c0`  
		Last Modified: Mon, 02 Oct 2017 22:59:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:08733e4384e1c7a0a906969877bff11dcacfb95ab4618f2296a46e9a957a2595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36409285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8c1e51a523f6cd7c30917176ab0233d6ae3f0ad6ed3b9955b9fb57a9405df6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 02 Oct 2017 22:21:37 GMT
ENV CHRONOGRAF_VERSION=1.3.8.3
# Mon, 02 Oct 2017 22:22:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Oct 2017 22:22:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 02 Oct 2017 22:22:14 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 02 Oct 2017 22:22:14 GMT
EXPOSE 8888/tcp
# Mon, 02 Oct 2017 22:22:15 GMT
VOLUME [/var/lib/chronograf]
# Mon, 02 Oct 2017 22:22:16 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 02 Oct 2017 22:22:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 22:22:17 GMT
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
	-	`sha256:295faee348be985d005e090803fbedede65a734332cae1487ea8b568069beff2`  
		Last Modified: Mon, 02 Oct 2017 22:22:40 GMT  
		Size: 12.0 MB (11968475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d922c87fb6f8bcc14fe4bbefc251fa5c6fdbb24854788b6bd7e3f901264e0dcc`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e633f4088ad6267e82e44894b9a446424db5f39f04d7a1c45c491e30e534d`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1fa2293223bc33d3e9b598f01e95f96c7878e9978e4b7532cbba48c9e11932`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.9`

```console
$ docker pull chronograf@sha256:5c863657d06495859b30c6ce34ceac767c87c120bec3c0815c4639fbbc183ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.9` - linux; amd64

```console
$ docker pull chronograf@sha256:693f4de041f5d01f8141d1b7de9c1e00e909cc01ab375e4697677a5c9eb714c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40269142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d84b6981c1f68c5e7428b218838f473be0422589c4aa259d3c59b197438f2ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 18:15:42 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 18:15:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 18:16:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 18:16:02 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 18:16:03 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 18:16:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 18:16:03 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 18:16:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 18:16:03 GMT
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
	-	`sha256:20fd40d2f91f9954a7d5aad574e6d020e880baf449f579c121826d41e19d81d9`  
		Last Modified: Mon, 09 Oct 2017 18:16:47 GMT  
		Size: 13.3 MB (13251461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed0ff010f62e8c0037b4467bb1f459e6c61f9ff77f40d7be7c97d58d8585a98`  
		Last Modified: Mon, 09 Oct 2017 18:16:44 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c78c59b4eb51ab27e7b37a0ff7185e81a07392451b8f94fb01610fdd808a7b8`  
		Last Modified: Mon, 09 Oct 2017 18:16:44 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc176de616a88d742d39532a2ad2355e04605f864cb98593bdb70e2a85bc9da2`  
		Last Modified: Mon, 09 Oct 2017 18:16:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:cfcb1a79fd9184f1a2cb40db726f1a58df9e6f5948c451fa659c6098e08376ab
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34950351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f612d24b96e7ab47915d412ea5d1ea2fbf68cfb5ac4151a340abd8571ceea1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:53 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Wed, 27 Sep 2017 04:14:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:47:15 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 02 Oct 2017 22:59:27 GMT
ENV CHRONOGRAF_VERSION=1.3.8.3
# Mon, 02 Oct 2017 22:59:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Oct 2017 22:59:43 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 02 Oct 2017 22:59:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 02 Oct 2017 22:59:44 GMT
EXPOSE 8888/tcp
# Mon, 02 Oct 2017 22:59:44 GMT
VOLUME [/var/lib/chronograf]
# Mon, 02 Oct 2017 22:59:44 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 02 Oct 2017 22:59:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 22:59:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f6b0b1de175bfd1f4139472dafaeed39d43c5c14f6f48f113c9053f9b7837ddf`  
		Last Modified: Wed, 27 Sep 2017 04:20:52 GMT  
		Size: 19.3 MB (19276815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb5d5fa8cc1ca32c2ae78720648602d5a97818789c38dfb8c641874cafd0749`  
		Last Modified: Wed, 27 Sep 2017 04:47:40 GMT  
		Size: 3.9 MB (3879156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1638240c0782b162eff78abd0a1f0c3b90187dae11f07f3295c24f4045653306`  
		Last Modified: Mon, 02 Oct 2017 22:59:59 GMT  
		Size: 11.8 MB (11769983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77edccf05d8469efba7deec69fd72ce14c1ced694030bf0b576c90d2b84b4547`  
		Last Modified: Mon, 02 Oct 2017 22:59:56 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ddf43f79d985e73c92f977329228d614b044238c8c246d739ed61aead21c70`  
		Last Modified: Mon, 02 Oct 2017 22:59:57 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633781e95b8ca9f87d011b28233482bec48a0810ebe59cb8d7781d971206c3c0`  
		Last Modified: Mon, 02 Oct 2017 22:59:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:08733e4384e1c7a0a906969877bff11dcacfb95ab4618f2296a46e9a957a2595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36409285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8c1e51a523f6cd7c30917176ab0233d6ae3f0ad6ed3b9955b9fb57a9405df6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 02 Oct 2017 22:21:37 GMT
ENV CHRONOGRAF_VERSION=1.3.8.3
# Mon, 02 Oct 2017 22:22:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Oct 2017 22:22:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 02 Oct 2017 22:22:14 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 02 Oct 2017 22:22:14 GMT
EXPOSE 8888/tcp
# Mon, 02 Oct 2017 22:22:15 GMT
VOLUME [/var/lib/chronograf]
# Mon, 02 Oct 2017 22:22:16 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 02 Oct 2017 22:22:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 22:22:17 GMT
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
	-	`sha256:295faee348be985d005e090803fbedede65a734332cae1487ea8b568069beff2`  
		Last Modified: Mon, 02 Oct 2017 22:22:40 GMT  
		Size: 12.0 MB (11968475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d922c87fb6f8bcc14fe4bbefc251fa5c6fdbb24854788b6bd7e3f901264e0dcc`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e633f4088ad6267e82e44894b9a446424db5f39f04d7a1c45c491e30e534d`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1fa2293223bc33d3e9b598f01e95f96c7878e9978e4b7532cbba48c9e11932`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.9.0`

```console
$ docker pull chronograf@sha256:5c863657d06495859b30c6ce34ceac767c87c120bec3c0815c4639fbbc183ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.9.0` - linux; amd64

```console
$ docker pull chronograf@sha256:693f4de041f5d01f8141d1b7de9c1e00e909cc01ab375e4697677a5c9eb714c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40269142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d84b6981c1f68c5e7428b218838f473be0422589c4aa259d3c59b197438f2ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 18:15:42 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 18:15:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 18:16:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 18:16:02 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 18:16:03 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 18:16:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 18:16:03 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 18:16:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 18:16:03 GMT
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
	-	`sha256:20fd40d2f91f9954a7d5aad574e6d020e880baf449f579c121826d41e19d81d9`  
		Last Modified: Mon, 09 Oct 2017 18:16:47 GMT  
		Size: 13.3 MB (13251461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed0ff010f62e8c0037b4467bb1f459e6c61f9ff77f40d7be7c97d58d8585a98`  
		Last Modified: Mon, 09 Oct 2017 18:16:44 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c78c59b4eb51ab27e7b37a0ff7185e81a07392451b8f94fb01610fdd808a7b8`  
		Last Modified: Mon, 09 Oct 2017 18:16:44 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc176de616a88d742d39532a2ad2355e04605f864cb98593bdb70e2a85bc9da2`  
		Last Modified: Mon, 09 Oct 2017 18:16:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.9.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:cfcb1a79fd9184f1a2cb40db726f1a58df9e6f5948c451fa659c6098e08376ab
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34950351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f612d24b96e7ab47915d412ea5d1ea2fbf68cfb5ac4151a340abd8571ceea1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:53 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Wed, 27 Sep 2017 04:14:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:47:15 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 02 Oct 2017 22:59:27 GMT
ENV CHRONOGRAF_VERSION=1.3.8.3
# Mon, 02 Oct 2017 22:59:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Oct 2017 22:59:43 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 02 Oct 2017 22:59:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 02 Oct 2017 22:59:44 GMT
EXPOSE 8888/tcp
# Mon, 02 Oct 2017 22:59:44 GMT
VOLUME [/var/lib/chronograf]
# Mon, 02 Oct 2017 22:59:44 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 02 Oct 2017 22:59:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 22:59:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f6b0b1de175bfd1f4139472dafaeed39d43c5c14f6f48f113c9053f9b7837ddf`  
		Last Modified: Wed, 27 Sep 2017 04:20:52 GMT  
		Size: 19.3 MB (19276815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb5d5fa8cc1ca32c2ae78720648602d5a97818789c38dfb8c641874cafd0749`  
		Last Modified: Wed, 27 Sep 2017 04:47:40 GMT  
		Size: 3.9 MB (3879156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1638240c0782b162eff78abd0a1f0c3b90187dae11f07f3295c24f4045653306`  
		Last Modified: Mon, 02 Oct 2017 22:59:59 GMT  
		Size: 11.8 MB (11769983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77edccf05d8469efba7deec69fd72ce14c1ced694030bf0b576c90d2b84b4547`  
		Last Modified: Mon, 02 Oct 2017 22:59:56 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ddf43f79d985e73c92f977329228d614b044238c8c246d739ed61aead21c70`  
		Last Modified: Mon, 02 Oct 2017 22:59:57 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633781e95b8ca9f87d011b28233482bec48a0810ebe59cb8d7781d971206c3c0`  
		Last Modified: Mon, 02 Oct 2017 22:59:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.9.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:08733e4384e1c7a0a906969877bff11dcacfb95ab4618f2296a46e9a957a2595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36409285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8c1e51a523f6cd7c30917176ab0233d6ae3f0ad6ed3b9955b9fb57a9405df6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 02 Oct 2017 22:21:37 GMT
ENV CHRONOGRAF_VERSION=1.3.8.3
# Mon, 02 Oct 2017 22:22:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Oct 2017 22:22:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 02 Oct 2017 22:22:14 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 02 Oct 2017 22:22:14 GMT
EXPOSE 8888/tcp
# Mon, 02 Oct 2017 22:22:15 GMT
VOLUME [/var/lib/chronograf]
# Mon, 02 Oct 2017 22:22:16 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 02 Oct 2017 22:22:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 22:22:17 GMT
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
	-	`sha256:295faee348be985d005e090803fbedede65a734332cae1487ea8b568069beff2`  
		Last Modified: Mon, 02 Oct 2017 22:22:40 GMT  
		Size: 12.0 MB (11968475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d922c87fb6f8bcc14fe4bbefc251fa5c6fdbb24854788b6bd7e3f901264e0dcc`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e633f4088ad6267e82e44894b9a446424db5f39f04d7a1c45c491e30e534d`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1fa2293223bc33d3e9b598f01e95f96c7878e9978e4b7532cbba48c9e11932`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.9.0-alpine`

```console
$ docker pull chronograf@sha256:66bf983ff192effa12190d733c6a2a5bc356abfadb507abba83a8ae34ba8d1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.9.0-alpine` - linux; amd64

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

## `chronograf:1.3.9-alpine`

```console
$ docker pull chronograf@sha256:66bf983ff192effa12190d733c6a2a5bc356abfadb507abba83a8ae34ba8d1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.9-alpine` - linux; amd64

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
$ docker pull chronograf@sha256:5c863657d06495859b30c6ce34ceac767c87c120bec3c0815c4639fbbc183ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:693f4de041f5d01f8141d1b7de9c1e00e909cc01ab375e4697677a5c9eb714c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40269142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d84b6981c1f68c5e7428b218838f473be0422589c4aa259d3c59b197438f2ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 09 Oct 2017 18:15:42 GMT
ENV CHRONOGRAF_VERSION=1.3.9.0
# Mon, 09 Oct 2017 18:15:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 18:16:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 09 Oct 2017 18:16:02 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 09 Oct 2017 18:16:03 GMT
EXPOSE 8888/tcp
# Mon, 09 Oct 2017 18:16:03 GMT
VOLUME [/var/lib/chronograf]
# Mon, 09 Oct 2017 18:16:03 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 09 Oct 2017 18:16:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 18:16:03 GMT
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
	-	`sha256:20fd40d2f91f9954a7d5aad574e6d020e880baf449f579c121826d41e19d81d9`  
		Last Modified: Mon, 09 Oct 2017 18:16:47 GMT  
		Size: 13.3 MB (13251461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed0ff010f62e8c0037b4467bb1f459e6c61f9ff77f40d7be7c97d58d8585a98`  
		Last Modified: Mon, 09 Oct 2017 18:16:44 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c78c59b4eb51ab27e7b37a0ff7185e81a07392451b8f94fb01610fdd808a7b8`  
		Last Modified: Mon, 09 Oct 2017 18:16:44 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc176de616a88d742d39532a2ad2355e04605f864cb98593bdb70e2a85bc9da2`  
		Last Modified: Mon, 09 Oct 2017 18:16:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:cfcb1a79fd9184f1a2cb40db726f1a58df9e6f5948c451fa659c6098e08376ab
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34950351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f612d24b96e7ab47915d412ea5d1ea2fbf68cfb5ac4151a340abd8571ceea1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:53 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Wed, 27 Sep 2017 04:14:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:47:15 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 02 Oct 2017 22:59:27 GMT
ENV CHRONOGRAF_VERSION=1.3.8.3
# Mon, 02 Oct 2017 22:59:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Oct 2017 22:59:43 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 02 Oct 2017 22:59:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 02 Oct 2017 22:59:44 GMT
EXPOSE 8888/tcp
# Mon, 02 Oct 2017 22:59:44 GMT
VOLUME [/var/lib/chronograf]
# Mon, 02 Oct 2017 22:59:44 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 02 Oct 2017 22:59:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 22:59:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f6b0b1de175bfd1f4139472dafaeed39d43c5c14f6f48f113c9053f9b7837ddf`  
		Last Modified: Wed, 27 Sep 2017 04:20:52 GMT  
		Size: 19.3 MB (19276815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb5d5fa8cc1ca32c2ae78720648602d5a97818789c38dfb8c641874cafd0749`  
		Last Modified: Wed, 27 Sep 2017 04:47:40 GMT  
		Size: 3.9 MB (3879156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1638240c0782b162eff78abd0a1f0c3b90187dae11f07f3295c24f4045653306`  
		Last Modified: Mon, 02 Oct 2017 22:59:59 GMT  
		Size: 11.8 MB (11769983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77edccf05d8469efba7deec69fd72ce14c1ced694030bf0b576c90d2b84b4547`  
		Last Modified: Mon, 02 Oct 2017 22:59:56 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ddf43f79d985e73c92f977329228d614b044238c8c246d739ed61aead21c70`  
		Last Modified: Mon, 02 Oct 2017 22:59:57 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633781e95b8ca9f87d011b28233482bec48a0810ebe59cb8d7781d971206c3c0`  
		Last Modified: Mon, 02 Oct 2017 22:59:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:08733e4384e1c7a0a906969877bff11dcacfb95ab4618f2296a46e9a957a2595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36409285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8c1e51a523f6cd7c30917176ab0233d6ae3f0ad6ed3b9955b9fb57a9405df6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 16:40:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 02 Oct 2017 22:21:37 GMT
ENV CHRONOGRAF_VERSION=1.3.8.3
# Mon, 02 Oct 2017 22:22:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Oct 2017 22:22:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 02 Oct 2017 22:22:14 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 02 Oct 2017 22:22:14 GMT
EXPOSE 8888/tcp
# Mon, 02 Oct 2017 22:22:15 GMT
VOLUME [/var/lib/chronograf]
# Mon, 02 Oct 2017 22:22:16 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 02 Oct 2017 22:22:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 22:22:17 GMT
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
	-	`sha256:295faee348be985d005e090803fbedede65a734332cae1487ea8b568069beff2`  
		Last Modified: Mon, 02 Oct 2017 22:22:40 GMT  
		Size: 12.0 MB (11968475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d922c87fb6f8bcc14fe4bbefc251fa5c6fdbb24854788b6bd7e3f901264e0dcc`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e633f4088ad6267e82e44894b9a446424db5f39f04d7a1c45c491e30e534d`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1fa2293223bc33d3e9b598f01e95f96c7878e9978e4b7532cbba48c9e11932`  
		Last Modified: Mon, 02 Oct 2017 22:22:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
