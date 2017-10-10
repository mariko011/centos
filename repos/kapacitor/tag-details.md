<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.2`](#kapacitor12)
-	[`kapacitor:1.2.1`](#kapacitor121)
-	[`kapacitor:1.2.1-alpine`](#kapacitor121-alpine)
-	[`kapacitor:1.2-alpine`](#kapacitor12-alpine)
-	[`kapacitor:1.3`](#kapacitor13)
-	[`kapacitor:1.3.3`](#kapacitor133)
-	[`kapacitor:1.3.3-alpine`](#kapacitor133-alpine)
-	[`kapacitor:1.3-alpine`](#kapacitor13-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.2`

```console
$ docker pull kapacitor@sha256:3e346d6ac1c19c0df054c6b46bb96d4f51232ee977fdfc818b8e57efbb3d1a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.2` - linux; amd64

```console
$ docker pull kapacitor@sha256:58564ca894f168c1623b2e6f0a17d7d4d6eb3735efa2d9a91aeb77d0243454d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71047727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec81868c07ac58469a6d1187bd38e23c38b08950612f54828e0686c785157a20`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:41:39 GMT
ENV KAPACITOR_VERSION=1.2.1
# Thu, 21 Sep 2017 16:41:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:41:45 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:41:45 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:41:45 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:41:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:41:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:41:49 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c952dd976b2726b7c9e3a50bdd09fbb09c528ae2a1428793913166cbc7f7b02d`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 6.6 KB (6555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8767f9a105aa792b7821e30cf30f6bf05208e759661d4c95b3cec14f5e89aa50`  
		Last Modified: Thu, 21 Sep 2017 16:42:41 GMT  
		Size: 10.2 MB (10177504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f28be0134cabc17da0522842bb11f6fc5898757a34a97c5403c869ad0c0b7d`  
		Last Modified: Thu, 21 Sep 2017 16:42:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0d1c1191ef46a44a43598e1ec18a3494c622e24ef0bb82be11ca53336ed58`  
		Last Modified: Thu, 21 Sep 2017 16:42:39 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.2` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:a1b49d440b38b93f1b332583b07c219119bb60a6f0e3266d01b9350d8bdecd86
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65176649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57dcacca07e9658227f76ca09661f3a6f2b47ce182c910d54f0b8bac065b1873`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:54:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 01:07:53 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 10 Oct 2017 01:07:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 01:07:56 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 01:07:57 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 01:07:57 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 01:07:57 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 01:07:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 01:07:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f652a063b90e2803ffa64fd8d62fa0f5d16b0940f569aa36e820d20e0c46a`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51431d27f8af69cdfaba0b9a2d2fee38f90fff8c1af5851865f2b06c388ef37`  
		Last Modified: Tue, 10 Oct 2017 01:08:48 GMT  
		Size: 9.3 MB (9297663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eee41e52e041f527011930c1e2bd96df7891bd6907ebe8291d87507f51161ed`  
		Last Modified: Tue, 10 Oct 2017 01:08:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b7a8729c5c22cbdd9c0f12a1da9123d9fb94dcb6259b6925d0ec18b027ff56`  
		Last Modified: Tue, 10 Oct 2017 01:08:44 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.2` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:a5af196c9c480ce28e0544265af3d0a489aa8e86b94f7c28eba03db307766914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66658295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d709c7eb0b2ce799ca916f793640d8d237488922c0942931a2353e73df2340d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:17 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:42:46 GMT
ENV KAPACITOR_VERSION=1.2.1
# Thu, 21 Sep 2017 16:42:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:42:53 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:42:53 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:42:54 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:43:00 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:43:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:43:01 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188e04b5dcbad33a400c251d9f1e1ed7a6dc2fdb5662f89bb5eca31950bc581`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 6.6 KB (6561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc18ae029b6606f2f31a940db96054c1d614abc833428c38098cb46ff1fc5ab0`  
		Last Modified: Thu, 21 Sep 2017 16:44:07 GMT  
		Size: 9.3 MB (9297388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55683bb7a727cb8984f6302847dbbe7f02e93a3c280cd2bed890ae65bbe7310`  
		Last Modified: Thu, 21 Sep 2017 16:44:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bd01ab85ba7491a145faccd7fc0de492a36aec644a09a053d343baf1b01469`  
		Last Modified: Thu, 21 Sep 2017 16:44:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1`

```console
$ docker pull kapacitor@sha256:3e346d6ac1c19c0df054c6b46bb96d4f51232ee977fdfc818b8e57efbb3d1a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.2.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:58564ca894f168c1623b2e6f0a17d7d4d6eb3735efa2d9a91aeb77d0243454d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71047727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec81868c07ac58469a6d1187bd38e23c38b08950612f54828e0686c785157a20`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:41:39 GMT
ENV KAPACITOR_VERSION=1.2.1
# Thu, 21 Sep 2017 16:41:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:41:45 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:41:45 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:41:45 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:41:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:41:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:41:49 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c952dd976b2726b7c9e3a50bdd09fbb09c528ae2a1428793913166cbc7f7b02d`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 6.6 KB (6555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8767f9a105aa792b7821e30cf30f6bf05208e759661d4c95b3cec14f5e89aa50`  
		Last Modified: Thu, 21 Sep 2017 16:42:41 GMT  
		Size: 10.2 MB (10177504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f28be0134cabc17da0522842bb11f6fc5898757a34a97c5403c869ad0c0b7d`  
		Last Modified: Thu, 21 Sep 2017 16:42:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0d1c1191ef46a44a43598e1ec18a3494c622e24ef0bb82be11ca53336ed58`  
		Last Modified: Thu, 21 Sep 2017 16:42:39 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.2.1` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:a1b49d440b38b93f1b332583b07c219119bb60a6f0e3266d01b9350d8bdecd86
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65176649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57dcacca07e9658227f76ca09661f3a6f2b47ce182c910d54f0b8bac065b1873`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:54:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 01:07:53 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 10 Oct 2017 01:07:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 01:07:56 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 01:07:57 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 01:07:57 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 01:07:57 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 01:07:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 01:07:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f652a063b90e2803ffa64fd8d62fa0f5d16b0940f569aa36e820d20e0c46a`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51431d27f8af69cdfaba0b9a2d2fee38f90fff8c1af5851865f2b06c388ef37`  
		Last Modified: Tue, 10 Oct 2017 01:08:48 GMT  
		Size: 9.3 MB (9297663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eee41e52e041f527011930c1e2bd96df7891bd6907ebe8291d87507f51161ed`  
		Last Modified: Tue, 10 Oct 2017 01:08:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b7a8729c5c22cbdd9c0f12a1da9123d9fb94dcb6259b6925d0ec18b027ff56`  
		Last Modified: Tue, 10 Oct 2017 01:08:44 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.2.1` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:a5af196c9c480ce28e0544265af3d0a489aa8e86b94f7c28eba03db307766914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66658295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d709c7eb0b2ce799ca916f793640d8d237488922c0942931a2353e73df2340d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:17 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:42:46 GMT
ENV KAPACITOR_VERSION=1.2.1
# Thu, 21 Sep 2017 16:42:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:42:53 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:42:53 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:42:54 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:43:00 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:43:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:43:01 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188e04b5dcbad33a400c251d9f1e1ed7a6dc2fdb5662f89bb5eca31950bc581`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 6.6 KB (6561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc18ae029b6606f2f31a940db96054c1d614abc833428c38098cb46ff1fc5ab0`  
		Last Modified: Thu, 21 Sep 2017 16:44:07 GMT  
		Size: 9.3 MB (9297388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55683bb7a727cb8984f6302847dbbe7f02e93a3c280cd2bed890ae65bbe7310`  
		Last Modified: Thu, 21 Sep 2017 16:44:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bd01ab85ba7491a145faccd7fc0de492a36aec644a09a053d343baf1b01469`  
		Last Modified: Thu, 21 Sep 2017 16:44:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1-alpine`

```console
$ docker pull kapacitor@sha256:01a8fa538ba0e4ed45ad13d1dbedeaa11f9bb2d0c2b76f0e00650c333bcbba17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:c438984849f828c011eba48b5f903cae514a21a9c77a126817da843b0498ff52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c1eca51262e17ab5cbe2df9fef9979cc88ed60efbc59691dc3abf23a3293fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 13 Sep 2017 15:12:38 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 13 Sep 2017 15:12:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 13 Sep 2017 15:12:53 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 13 Sep 2017 15:12:53 GMT
EXPOSE 9092/tcp
# Wed, 13 Sep 2017 15:12:53 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 13 Sep 2017 15:12:54 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:12:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:12:54 GMT
CMD ["kapacitord"]
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
	-	`sha256:08435706b5428936b6d19fe641435c5279bbfbec82e2ac356a38f7cc6cb6f9a7`  
		Last Modified: Wed, 13 Sep 2017 15:14:18 GMT  
		Size: 7.1 MB (7072636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675c457cb1e3babf1f920db0c8bda403375bbbc14b0d1d3d70c98e232071e55c`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c411ef02e1b3f4bea67046d7861a0318ae84e516c1eb07c44f7a6a20efabe1fc`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2-alpine`

```console
$ docker pull kapacitor@sha256:01a8fa538ba0e4ed45ad13d1dbedeaa11f9bb2d0c2b76f0e00650c333bcbba17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.2-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:c438984849f828c011eba48b5f903cae514a21a9c77a126817da843b0498ff52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c1eca51262e17ab5cbe2df9fef9979cc88ed60efbc59691dc3abf23a3293fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 13 Sep 2017 15:12:38 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 13 Sep 2017 15:12:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 13 Sep 2017 15:12:53 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 13 Sep 2017 15:12:53 GMT
EXPOSE 9092/tcp
# Wed, 13 Sep 2017 15:12:53 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 13 Sep 2017 15:12:54 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:12:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:12:54 GMT
CMD ["kapacitord"]
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
	-	`sha256:08435706b5428936b6d19fe641435c5279bbfbec82e2ac356a38f7cc6cb6f9a7`  
		Last Modified: Wed, 13 Sep 2017 15:14:18 GMT  
		Size: 7.1 MB (7072636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675c457cb1e3babf1f920db0c8bda403375bbbc14b0d1d3d70c98e232071e55c`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c411ef02e1b3f4bea67046d7861a0318ae84e516c1eb07c44f7a6a20efabe1fc`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3`

```console
$ docker pull kapacitor@sha256:95f0817b2233470c00fb5f590cc37ca0258ff32a410a06c60336cded95c0a749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:433235e5f42dea74c53b165ff925faeb9422e63b882bf0427f8475733dac1f73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94173204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10184bf68267c576348d5d7a14b26606fc88c77fadcdf57d0b5002e25d6355bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:42:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 21 Sep 2017 16:42:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:42:16 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 21 Sep 2017 16:42:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:42:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:42:22 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:42:22 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:42:22 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:42:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:42:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ed4bd7d255ae919521c06490a07da8f32e453942c9a3b8fb5bc490d7a1fca2`  
		Last Modified: Thu, 21 Sep 2017 16:42:57 GMT  
		Size: 12.6 MB (12569992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69b3dbb351fb091a4c1b5d26d07ef9887d173fbad026ba433c5895ecc8adf49`  
		Last Modified: Thu, 21 Sep 2017 16:42:56 GMT  
		Size: 6.6 KB (6553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996acffe7040406d17cb5197a4ed41b8b1b31bfa074bd306723011afd6c485c9`  
		Last Modified: Thu, 21 Sep 2017 16:43:00 GMT  
		Size: 20.7 MB (20732989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8153ad7a398f068412c00a0fd45cef50aa933fb83ac91efc67c9d89360a54c22`  
		Last Modified: Thu, 21 Sep 2017 16:42:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415c1c4df036b654026161f40dc53bb54060b72ec7c2db50c238c5add58b5320`  
		Last Modified: Thu, 21 Sep 2017 16:42:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:e258e010e16e3b89a370682a7c7738eb0f3cf413198ab20d7dbdfc6e89593d6e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87644062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a560793f8579ea76182e54ff1cf293ca4937fb676ce29b7a17f77e5fd86698ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:08:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 10 Oct 2017 01:08:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 01:08:25 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 10 Oct 2017 01:08:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 01:08:30 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 01:08:30 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 01:08:31 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 01:08:31 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 01:08:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 01:08:32 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd788713438bde4652e2ecc1fdd99199c4688f93147e9064fb860b66a900e7`  
		Last Modified: Tue, 10 Oct 2017 01:09:06 GMT  
		Size: 12.8 MB (12757107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4086f17d07f23481e8f2e6995bd9f2c964a6ae72583da63d09246939ba4ed`  
		Last Modified: Tue, 10 Oct 2017 01:09:02 GMT  
		Size: 2.9 KB (2920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb92836837b958dc551876028a4ece4e4f29705f1d8f06ac05b851bdce8835f`  
		Last Modified: Tue, 10 Oct 2017 01:09:09 GMT  
		Size: 19.0 MB (19007962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88d3310699d4e7269a80fba66bfa7ed55ff865e8ba4c8f2e9e3e11b95bbdfee`  
		Last Modified: Tue, 10 Oct 2017 01:09:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761ea5a912d689948bff2106fa940959120632267bd1c8494b618a4ccc81fd71`  
		Last Modified: Tue, 10 Oct 2017 01:09:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:7133475043d73258bf8b17d7ea9ba94144772ce33169946ba3e2c50ff9444357
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88672085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e94959a8a795e039aae38739119816c019555bcf5a2c51df5c1564270ef542`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:43:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 21 Sep 2017 16:43:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:43:34 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 21 Sep 2017 16:43:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:43:44 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:43:44 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:43:45 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:43:45 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:43:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:43:46 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03d773b323c9e715760cd476a71d3624546a5557ebc615b272909e066fde8fe`  
		Last Modified: Thu, 21 Sep 2017 16:44:31 GMT  
		Size: 12.3 MB (12303497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fde73c1093d6a07d696180ec08bb4009f9dc152a62aae75d893c2d9f6763a3a`  
		Last Modified: Thu, 21 Sep 2017 16:44:29 GMT  
		Size: 6.5 KB (6550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b7ece226d4eb2e937faa217f7641e3811aa2e62bd727cd8c18c418f8e57d4`  
		Last Modified: Thu, 21 Sep 2017 16:44:36 GMT  
		Size: 19.0 MB (19007692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6936b463abc6a37611a6e0dfea63106909dfb7baeb8f4cdabcca8e1aacff7137`  
		Last Modified: Thu, 21 Sep 2017 16:44:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0d0ace8eef0f60dddbf90f1c4897285d7abf9c9f20975ffd94cf91e045aec0`  
		Last Modified: Thu, 21 Sep 2017 16:44:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3`

```console
$ docker pull kapacitor@sha256:95f0817b2233470c00fb5f590cc37ca0258ff32a410a06c60336cded95c0a749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:433235e5f42dea74c53b165ff925faeb9422e63b882bf0427f8475733dac1f73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94173204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10184bf68267c576348d5d7a14b26606fc88c77fadcdf57d0b5002e25d6355bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:42:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 21 Sep 2017 16:42:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:42:16 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 21 Sep 2017 16:42:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:42:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:42:22 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:42:22 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:42:22 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:42:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:42:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ed4bd7d255ae919521c06490a07da8f32e453942c9a3b8fb5bc490d7a1fca2`  
		Last Modified: Thu, 21 Sep 2017 16:42:57 GMT  
		Size: 12.6 MB (12569992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69b3dbb351fb091a4c1b5d26d07ef9887d173fbad026ba433c5895ecc8adf49`  
		Last Modified: Thu, 21 Sep 2017 16:42:56 GMT  
		Size: 6.6 KB (6553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996acffe7040406d17cb5197a4ed41b8b1b31bfa074bd306723011afd6c485c9`  
		Last Modified: Thu, 21 Sep 2017 16:43:00 GMT  
		Size: 20.7 MB (20732989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8153ad7a398f068412c00a0fd45cef50aa933fb83ac91efc67c9d89360a54c22`  
		Last Modified: Thu, 21 Sep 2017 16:42:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415c1c4df036b654026161f40dc53bb54060b72ec7c2db50c238c5add58b5320`  
		Last Modified: Thu, 21 Sep 2017 16:42:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:e258e010e16e3b89a370682a7c7738eb0f3cf413198ab20d7dbdfc6e89593d6e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87644062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a560793f8579ea76182e54ff1cf293ca4937fb676ce29b7a17f77e5fd86698ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:08:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 10 Oct 2017 01:08:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 01:08:25 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 10 Oct 2017 01:08:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 01:08:30 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 01:08:30 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 01:08:31 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 01:08:31 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 01:08:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 01:08:32 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd788713438bde4652e2ecc1fdd99199c4688f93147e9064fb860b66a900e7`  
		Last Modified: Tue, 10 Oct 2017 01:09:06 GMT  
		Size: 12.8 MB (12757107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4086f17d07f23481e8f2e6995bd9f2c964a6ae72583da63d09246939ba4ed`  
		Last Modified: Tue, 10 Oct 2017 01:09:02 GMT  
		Size: 2.9 KB (2920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb92836837b958dc551876028a4ece4e4f29705f1d8f06ac05b851bdce8835f`  
		Last Modified: Tue, 10 Oct 2017 01:09:09 GMT  
		Size: 19.0 MB (19007962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88d3310699d4e7269a80fba66bfa7ed55ff865e8ba4c8f2e9e3e11b95bbdfee`  
		Last Modified: Tue, 10 Oct 2017 01:09:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761ea5a912d689948bff2106fa940959120632267bd1c8494b618a4ccc81fd71`  
		Last Modified: Tue, 10 Oct 2017 01:09:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:7133475043d73258bf8b17d7ea9ba94144772ce33169946ba3e2c50ff9444357
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88672085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e94959a8a795e039aae38739119816c019555bcf5a2c51df5c1564270ef542`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:43:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 21 Sep 2017 16:43:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:43:34 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 21 Sep 2017 16:43:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:43:44 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:43:44 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:43:45 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:43:45 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:43:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:43:46 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03d773b323c9e715760cd476a71d3624546a5557ebc615b272909e066fde8fe`  
		Last Modified: Thu, 21 Sep 2017 16:44:31 GMT  
		Size: 12.3 MB (12303497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fde73c1093d6a07d696180ec08bb4009f9dc152a62aae75d893c2d9f6763a3a`  
		Last Modified: Thu, 21 Sep 2017 16:44:29 GMT  
		Size: 6.5 KB (6550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b7ece226d4eb2e937faa217f7641e3811aa2e62bd727cd8c18c418f8e57d4`  
		Last Modified: Thu, 21 Sep 2017 16:44:36 GMT  
		Size: 19.0 MB (19007692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6936b463abc6a37611a6e0dfea63106909dfb7baeb8f4cdabcca8e1aacff7137`  
		Last Modified: Thu, 21 Sep 2017 16:44:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0d0ace8eef0f60dddbf90f1c4897285d7abf9c9f20975ffd94cf91e045aec0`  
		Last Modified: Thu, 21 Sep 2017 16:44:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3-alpine`

```console
$ docker pull kapacitor@sha256:ca8e96d7986ece6be79294d5ec3aa491ca7c4a444399905b35f76729a3b12d8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:d4a4056d7acf8b32547ba4176c0380faf4f81eca97b39caa18e695619d8425c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059f3ea4fe8ea7240e6bbe9c6952fbb1c725bf08ec7fd5179c0ffc6ad196210d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 13 Sep 2017 15:13:19 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 13 Sep 2017 15:13:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 13 Sep 2017 15:13:36 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 13 Sep 2017 15:13:36 GMT
EXPOSE 9092/tcp
# Wed, 13 Sep 2017 15:13:36 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 13 Sep 2017 15:13:36 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:13:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:13:37 GMT
CMD ["kapacitord"]
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
	-	`sha256:2cb5d97c4e28cde06b2b95b7b21adf1334c04711296e930bb8e6e7dbc8f7bd4f`  
		Last Modified: Wed, 13 Sep 2017 15:14:54 GMT  
		Size: 14.6 MB (14553815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b86c8fdd0d492dacbbeedd3481c79b8573d582a5e0008254d0c560f83171bd`  
		Last Modified: Wed, 13 Sep 2017 15:14:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a130f1bf7d090969034caf2e169b0a18c9e7718b647ef623fe32ed1691443e7`  
		Last Modified: Wed, 13 Sep 2017 15:14:51 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3-alpine`

```console
$ docker pull kapacitor@sha256:ca8e96d7986ece6be79294d5ec3aa491ca7c4a444399905b35f76729a3b12d8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:d4a4056d7acf8b32547ba4176c0380faf4f81eca97b39caa18e695619d8425c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059f3ea4fe8ea7240e6bbe9c6952fbb1c725bf08ec7fd5179c0ffc6ad196210d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 13 Sep 2017 15:13:19 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 13 Sep 2017 15:13:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 13 Sep 2017 15:13:36 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 13 Sep 2017 15:13:36 GMT
EXPOSE 9092/tcp
# Wed, 13 Sep 2017 15:13:36 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 13 Sep 2017 15:13:36 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:13:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:13:37 GMT
CMD ["kapacitord"]
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
	-	`sha256:2cb5d97c4e28cde06b2b95b7b21adf1334c04711296e930bb8e6e7dbc8f7bd4f`  
		Last Modified: Wed, 13 Sep 2017 15:14:54 GMT  
		Size: 14.6 MB (14553815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b86c8fdd0d492dacbbeedd3481c79b8573d582a5e0008254d0c560f83171bd`  
		Last Modified: Wed, 13 Sep 2017 15:14:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a130f1bf7d090969034caf2e169b0a18c9e7718b647ef623fe32ed1691443e7`  
		Last Modified: Wed, 13 Sep 2017 15:14:51 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:ca8e96d7986ece6be79294d5ec3aa491ca7c4a444399905b35f76729a3b12d8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:d4a4056d7acf8b32547ba4176c0380faf4f81eca97b39caa18e695619d8425c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059f3ea4fe8ea7240e6bbe9c6952fbb1c725bf08ec7fd5179c0ffc6ad196210d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 15:12:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 13 Sep 2017 15:13:19 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 13 Sep 2017 15:13:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 13 Sep 2017 15:13:36 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 13 Sep 2017 15:13:36 GMT
EXPOSE 9092/tcp
# Wed, 13 Sep 2017 15:13:36 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 13 Sep 2017 15:13:36 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:13:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:13:37 GMT
CMD ["kapacitord"]
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
	-	`sha256:2cb5d97c4e28cde06b2b95b7b21adf1334c04711296e930bb8e6e7dbc8f7bd4f`  
		Last Modified: Wed, 13 Sep 2017 15:14:54 GMT  
		Size: 14.6 MB (14553815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b86c8fdd0d492dacbbeedd3481c79b8573d582a5e0008254d0c560f83171bd`  
		Last Modified: Wed, 13 Sep 2017 15:14:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a130f1bf7d090969034caf2e169b0a18c9e7718b647ef623fe32ed1691443e7`  
		Last Modified: Wed, 13 Sep 2017 15:14:51 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:95f0817b2233470c00fb5f590cc37ca0258ff32a410a06c60336cded95c0a749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:433235e5f42dea74c53b165ff925faeb9422e63b882bf0427f8475733dac1f73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94173204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10184bf68267c576348d5d7a14b26606fc88c77fadcdf57d0b5002e25d6355bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:42:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 21 Sep 2017 16:42:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:42:16 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 21 Sep 2017 16:42:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:42:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:42:22 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:42:22 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:42:22 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:42:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:42:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ed4bd7d255ae919521c06490a07da8f32e453942c9a3b8fb5bc490d7a1fca2`  
		Last Modified: Thu, 21 Sep 2017 16:42:57 GMT  
		Size: 12.6 MB (12569992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69b3dbb351fb091a4c1b5d26d07ef9887d173fbad026ba433c5895ecc8adf49`  
		Last Modified: Thu, 21 Sep 2017 16:42:56 GMT  
		Size: 6.6 KB (6553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996acffe7040406d17cb5197a4ed41b8b1b31bfa074bd306723011afd6c485c9`  
		Last Modified: Thu, 21 Sep 2017 16:43:00 GMT  
		Size: 20.7 MB (20732989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8153ad7a398f068412c00a0fd45cef50aa933fb83ac91efc67c9d89360a54c22`  
		Last Modified: Thu, 21 Sep 2017 16:42:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415c1c4df036b654026161f40dc53bb54060b72ec7c2db50c238c5add58b5320`  
		Last Modified: Thu, 21 Sep 2017 16:42:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:e258e010e16e3b89a370682a7c7738eb0f3cf413198ab20d7dbdfc6e89593d6e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87644062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a560793f8579ea76182e54ff1cf293ca4937fb676ce29b7a17f77e5fd86698ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:08:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 10 Oct 2017 01:08:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 01:08:25 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 10 Oct 2017 01:08:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 01:08:30 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 01:08:30 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 01:08:31 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 01:08:31 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 01:08:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 01:08:32 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd788713438bde4652e2ecc1fdd99199c4688f93147e9064fb860b66a900e7`  
		Last Modified: Tue, 10 Oct 2017 01:09:06 GMT  
		Size: 12.8 MB (12757107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4086f17d07f23481e8f2e6995bd9f2c964a6ae72583da63d09246939ba4ed`  
		Last Modified: Tue, 10 Oct 2017 01:09:02 GMT  
		Size: 2.9 KB (2920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb92836837b958dc551876028a4ece4e4f29705f1d8f06ac05b851bdce8835f`  
		Last Modified: Tue, 10 Oct 2017 01:09:09 GMT  
		Size: 19.0 MB (19007962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88d3310699d4e7269a80fba66bfa7ed55ff865e8ba4c8f2e9e3e11b95bbdfee`  
		Last Modified: Tue, 10 Oct 2017 01:09:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761ea5a912d689948bff2106fa940959120632267bd1c8494b618a4ccc81fd71`  
		Last Modified: Tue, 10 Oct 2017 01:09:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:7133475043d73258bf8b17d7ea9ba94144772ce33169946ba3e2c50ff9444357
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88672085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e94959a8a795e039aae38739119816c019555bcf5a2c51df5c1564270ef542`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:43:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 21 Sep 2017 16:43:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:43:34 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 21 Sep 2017 16:43:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:43:44 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 21 Sep 2017 16:43:44 GMT
EXPOSE 9092/tcp
# Thu, 21 Sep 2017 16:43:45 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 21 Sep 2017 16:43:45 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 21 Sep 2017 16:43:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:43:46 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03d773b323c9e715760cd476a71d3624546a5557ebc615b272909e066fde8fe`  
		Last Modified: Thu, 21 Sep 2017 16:44:31 GMT  
		Size: 12.3 MB (12303497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fde73c1093d6a07d696180ec08bb4009f9dc152a62aae75d893c2d9f6763a3a`  
		Last Modified: Thu, 21 Sep 2017 16:44:29 GMT  
		Size: 6.5 KB (6550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b7ece226d4eb2e937faa217f7641e3811aa2e62bd727cd8c18c418f8e57d4`  
		Last Modified: Thu, 21 Sep 2017 16:44:36 GMT  
		Size: 19.0 MB (19007692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6936b463abc6a37611a6e0dfea63106909dfb7baeb8f4cdabcca8e1aacff7137`  
		Last Modified: Thu, 21 Sep 2017 16:44:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0d0ace8eef0f60dddbf90f1c4897285d7abf9c9f20975ffd94cf91e045aec0`  
		Last Modified: Thu, 21 Sep 2017 16:44:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
