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
$ docker pull kapacitor@sha256:9e7b1cc9b903212cd7f144cd09c50a02d6ec96e628d8cfe463f12d69ecc97072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.2` - linux; amd64

```console
$ docker pull kapacitor@sha256:413dc376c3e1511bca8c680480c913b2c7eb7a2f2d4cb8b376142ca6207148a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71049871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3e84a8840b99e78b70a64c3a78c9fada23d5e8ae49cfde211f03c008d13300`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:10:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 06:12:59 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 10 Oct 2017 06:13:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:13:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 06:13:06 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 06:13:06 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 06:13:06 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 06:13:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:13:07 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f09297ad0c69aec7dd1e33bb32eccc545ffbb4154267d31483fd3f4f3adce`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c33f6403f0c8ce56aa1999f53f381386569438d6448e37190413e4e90de05a0`  
		Last Modified: Tue, 10 Oct 2017 06:13:49 GMT  
		Size: 10.2 MB (10177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20daf22e4bdf2f029499d193fd97d31ed752ae292fd565d8d2018d4e3de44f33`  
		Last Modified: Tue, 10 Oct 2017 06:13:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddd3ad9f294e30f771ffa5b2c0d9894139e2e26e4736eeedb65d67c45cd37`  
		Last Modified: Tue, 10 Oct 2017 06:13:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.2` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:54148db44637e6d93116f5f3f32274e3384c7664ffc6295c9813b5d5c6b50484
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64878365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b621a2f8a9e4d142810f91d33cf893822cc8d3c17c9d02cb1d970e4462b0d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:29:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 01:29:01 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 03 Nov 2017 01:29:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 01:29:07 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 01:29:08 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 01:29:08 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 01:29:08 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 01:29:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 01:29:09 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcd1b18816816d11b42cc7a8d32d8bbd41f33164533d91146cb8b89dad6f9d6`  
		Last Modified: Fri, 03 Nov 2017 01:29:58 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae24cd142d02a67fd5da8ed9c730a0b439e491762049718143a2a6f87026548c`  
		Last Modified: Fri, 03 Nov 2017 01:30:01 GMT  
		Size: 9.3 MB (9296949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc4fce48a4bbbc8f65e27ecc5c41ef86e1d2e36ec6146ce27b7b9347294b0ac`  
		Last Modified: Fri, 03 Nov 2017 01:29:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c058734f247a9dee1b3e31ce930c5f76d87549f2bc433ce38262a7c1695c1124`  
		Last Modified: Fri, 03 Nov 2017 01:29:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.2` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:aa1cb07f92e93f61be2ded94b2756a009b51d6a447e6feb6c3320f5f6c1d0c54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66664188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150fe8e43e856db9e040b364c0f7209203ed732d4847c15333e8646017b0ca60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:59:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 08:48:31 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 10 Oct 2017 08:48:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 08:48:44 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 08:48:45 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 08:48:47 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 08:48:48 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 08:48:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 08:48:50 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3db56cfc57d9ee6847490b7b1ca14eb648a72bdaeb61e6f56f4a31cbfd164a`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1832c499b8e25d809922fd5b9f698d2f0c7b97d81e56132a116c642e0e7bdfa1`  
		Last Modified: Tue, 10 Oct 2017 08:51:47 GMT  
		Size: 9.3 MB (9297479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2778cad4e915ad0ea2ee321d9ac847cf1b9152bf74b1c32014690094e3c16899`  
		Last Modified: Tue, 10 Oct 2017 08:51:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a8a3093751a80b8a568feac0ab969d858ff551298ed0a15a7642ff583c6b4a`  
		Last Modified: Tue, 10 Oct 2017 08:51:42 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1`

```console
$ docker pull kapacitor@sha256:9e7b1cc9b903212cd7f144cd09c50a02d6ec96e628d8cfe463f12d69ecc97072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.2.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:413dc376c3e1511bca8c680480c913b2c7eb7a2f2d4cb8b376142ca6207148a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71049871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3e84a8840b99e78b70a64c3a78c9fada23d5e8ae49cfde211f03c008d13300`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:10:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 06:12:59 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 10 Oct 2017 06:13:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:13:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 06:13:06 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 06:13:06 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 06:13:06 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 06:13:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:13:07 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f09297ad0c69aec7dd1e33bb32eccc545ffbb4154267d31483fd3f4f3adce`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c33f6403f0c8ce56aa1999f53f381386569438d6448e37190413e4e90de05a0`  
		Last Modified: Tue, 10 Oct 2017 06:13:49 GMT  
		Size: 10.2 MB (10177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20daf22e4bdf2f029499d193fd97d31ed752ae292fd565d8d2018d4e3de44f33`  
		Last Modified: Tue, 10 Oct 2017 06:13:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ddd3ad9f294e30f771ffa5b2c0d9894139e2e26e4736eeedb65d67c45cd37`  
		Last Modified: Tue, 10 Oct 2017 06:13:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.2.1` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:54148db44637e6d93116f5f3f32274e3384c7664ffc6295c9813b5d5c6b50484
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64878365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b621a2f8a9e4d142810f91d33cf893822cc8d3c17c9d02cb1d970e4462b0d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:29:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 01:29:01 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 03 Nov 2017 01:29:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 01:29:07 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 01:29:08 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 01:29:08 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 01:29:08 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 01:29:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 01:29:09 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcd1b18816816d11b42cc7a8d32d8bbd41f33164533d91146cb8b89dad6f9d6`  
		Last Modified: Fri, 03 Nov 2017 01:29:58 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae24cd142d02a67fd5da8ed9c730a0b439e491762049718143a2a6f87026548c`  
		Last Modified: Fri, 03 Nov 2017 01:30:01 GMT  
		Size: 9.3 MB (9296949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc4fce48a4bbbc8f65e27ecc5c41ef86e1d2e36ec6146ce27b7b9347294b0ac`  
		Last Modified: Fri, 03 Nov 2017 01:29:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c058734f247a9dee1b3e31ce930c5f76d87549f2bc433ce38262a7c1695c1124`  
		Last Modified: Fri, 03 Nov 2017 01:29:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.2.1` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:aa1cb07f92e93f61be2ded94b2756a009b51d6a447e6feb6c3320f5f6c1d0c54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66664188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150fe8e43e856db9e040b364c0f7209203ed732d4847c15333e8646017b0ca60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:59:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 08:48:31 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 10 Oct 2017 08:48:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 08:48:44 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 08:48:45 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 08:48:47 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 08:48:48 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 08:48:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 08:48:50 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3db56cfc57d9ee6847490b7b1ca14eb648a72bdaeb61e6f56f4a31cbfd164a`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1832c499b8e25d809922fd5b9f698d2f0c7b97d81e56132a116c642e0e7bdfa1`  
		Last Modified: Tue, 10 Oct 2017 08:51:47 GMT  
		Size: 9.3 MB (9297479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2778cad4e915ad0ea2ee321d9ac847cf1b9152bf74b1c32014690094e3c16899`  
		Last Modified: Tue, 10 Oct 2017 08:51:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a8a3093751a80b8a568feac0ab969d858ff551298ed0a15a7642ff583c6b4a`  
		Last Modified: Tue, 10 Oct 2017 08:51:42 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1-alpine`

```console
$ docker pull kapacitor@sha256:a4d5543e3eb92a30daeff062ab3a89451b1bfbf8c5dfe8517c1032533ea19eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:d768a1af09e5ddc346d8efeb4183eb46f01e5c24d9187b440337f1d5568eb7ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f240b301efe0ae743d9897b95cea873c9614a39520a8426f128d26220f1c1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:47:18 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 26 Oct 2017 00:29:17 GMT
ENV KAPACITOR_VERSION=1.2.1
# Thu, 26 Oct 2017 00:29:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 00:29:32 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 26 Oct 2017 00:29:32 GMT
EXPOSE 9092/tcp
# Thu, 26 Oct 2017 00:29:32 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 26 Oct 2017 00:29:32 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Thu, 26 Oct 2017 00:29:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 00:29:33 GMT
CMD ["kapacitord"]
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
	-	`sha256:8a0ca11f35ac1b75fd0323ce64affecbcb40a5a7ec65c3082ffa52b6aac86bbb`  
		Last Modified: Thu, 26 Oct 2017 00:30:15 GMT  
		Size: 7.1 MB (7072614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4e3337fe078560546ee3808755a80a8f65dfe2ffeb9a86601337e67c9048b`  
		Last Modified: Thu, 26 Oct 2017 00:30:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03c330e943f0846f76f9b6e73698ffe6afdfc27961de2c488e629dd14ab5bcf`  
		Last Modified: Thu, 26 Oct 2017 00:30:13 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2-alpine`

```console
$ docker pull kapacitor@sha256:a4d5543e3eb92a30daeff062ab3a89451b1bfbf8c5dfe8517c1032533ea19eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.2-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:d768a1af09e5ddc346d8efeb4183eb46f01e5c24d9187b440337f1d5568eb7ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f240b301efe0ae743d9897b95cea873c9614a39520a8426f128d26220f1c1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:47:18 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 26 Oct 2017 00:29:17 GMT
ENV KAPACITOR_VERSION=1.2.1
# Thu, 26 Oct 2017 00:29:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 00:29:32 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 26 Oct 2017 00:29:32 GMT
EXPOSE 9092/tcp
# Thu, 26 Oct 2017 00:29:32 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 26 Oct 2017 00:29:32 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Thu, 26 Oct 2017 00:29:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 00:29:33 GMT
CMD ["kapacitord"]
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
	-	`sha256:8a0ca11f35ac1b75fd0323ce64affecbcb40a5a7ec65c3082ffa52b6aac86bbb`  
		Last Modified: Thu, 26 Oct 2017 00:30:15 GMT  
		Size: 7.1 MB (7072614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4e3337fe078560546ee3808755a80a8f65dfe2ffeb9a86601337e67c9048b`  
		Last Modified: Thu, 26 Oct 2017 00:30:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03c330e943f0846f76f9b6e73698ffe6afdfc27961de2c488e629dd14ab5bcf`  
		Last Modified: Thu, 26 Oct 2017 00:30:13 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3`

```console
$ docker pull kapacitor@sha256:30d00691bd9ec8b3857e0b7eb9f1d9301c394eb82ffa2810292cca727ff46311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:d7fb89b8673a50ec889a7e4340fcea4e3fca626949bbe5a0b070b415f53f0bb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94185348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8beae3643e5ee737b72dc9d5b0f55735292e8fd16567f48b85b7b0f277c95193`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:13:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 10 Oct 2017 06:13:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 06:13:22 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 10 Oct 2017 06:13:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:13:28 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 06:13:28 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 06:13:28 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 06:13:28 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 06:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:13:29 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625595906f4de3733e113a1dc505a326ee903cc828cad12e6babfe7394df91a`  
		Last Modified: Tue, 10 Oct 2017 06:14:21 GMT  
		Size: 12.6 MB (12579860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac19b3456ad96f0e963fff45ca48b732535ecf55af9b3c688c9bdf5d387e30`  
		Last Modified: Tue, 10 Oct 2017 06:14:17 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c780e8953b10831fa396da158783d2da311d10bd7a6865885251a0150971a`  
		Last Modified: Tue, 10 Oct 2017 06:14:25 GMT  
		Size: 20.7 MB (20733103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e2921dec887acf8814e79f85ea066e802d86b8a7ee95001ef811b0ac606098`  
		Last Modified: Tue, 10 Oct 2017 06:14:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f83b2c2eb8ab494b7647efbd3c0c14dad96b4e5221075e3988b5a1a88894df`  
		Last Modified: Tue, 10 Oct 2017 06:14:17 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:546853bb93077695bb321f6b5c011c2ee600842c7e6f8302d893f8d7468416e2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87402985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54f901ec58a11681b56aebe6cded2cbe4de69c17a6f7e9f5fab7586f9c25a36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:29:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 03 Nov 2017 01:29:32 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 01:29:32 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 01:29:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 01:29:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 01:29:39 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 01:29:39 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 01:29:39 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 01:29:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 01:29:40 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1be497c9dfe0f66a57d5c7a2fcf47f6c3856cbf10f2ece294d95b8fefb6a82`  
		Last Modified: Fri, 03 Nov 2017 01:30:25 GMT  
		Size: 12.8 MB (12814158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd7f966b275e5fb2a9707302f8c731c2bcc7328a0bc7b7cf55cc58c64553dc8`  
		Last Modified: Fri, 03 Nov 2017 01:30:23 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f764a754e8d13b3452f019e5d4e1d99b26871738224fba4ed1b815f4ffadd78a`  
		Last Modified: Fri, 03 Nov 2017 01:30:30 GMT  
		Size: 19.0 MB (19007417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e37ad7b3971ee5a32f630ad76c9022d4f0110f1464c83561238b8c3224aca2`  
		Last Modified: Fri, 03 Nov 2017 01:30:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173dd7eee03e3c271e266805fde690cddec602af6f3a351125a63481e81f303d`  
		Last Modified: Fri, 03 Nov 2017 01:30:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:8baf837d301ce3fa2d3485f0df849d408ca30b24cee51e67edb5fa774f86f4e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88688317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3711383e8b42eb783c98fd6c86e2b9a86f54ca48c2e69f36fe15beb1e06ab89c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:49:41 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 10 Oct 2017 08:49:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 08:49:52 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 10 Oct 2017 08:50:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 08:50:08 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 08:50:09 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 08:50:11 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 08:50:13 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 08:50:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 08:50:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8953c8679d83088c83c63c23e464879959b656018c0ea0a211a9e03d4fd69d4`  
		Last Modified: Tue, 10 Oct 2017 08:52:36 GMT  
		Size: 12.3 MB (12313820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04a077b4a98d31727c40ecf27e3a09784cef4ff4dcbb35823666bf3fabbf38c`  
		Last Modified: Tue, 10 Oct 2017 08:52:29 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ea9c0b358b7d1d850a888f1231dcdc41499674771f1fd1343301fc59a6b09f`  
		Last Modified: Tue, 10 Oct 2017 08:52:48 GMT  
		Size: 19.0 MB (19007789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65063e128349d77b829bcc32e46b9dfa03761d16a9afad65b801c6f29dd29127`  
		Last Modified: Tue, 10 Oct 2017 08:52:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dad0d5bc864e626349d161ffa1f929e4a65ffc4cb9b9d36b89fa76de633b2e8`  
		Last Modified: Tue, 10 Oct 2017 08:52:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3`

```console
$ docker pull kapacitor@sha256:30d00691bd9ec8b3857e0b7eb9f1d9301c394eb82ffa2810292cca727ff46311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:d7fb89b8673a50ec889a7e4340fcea4e3fca626949bbe5a0b070b415f53f0bb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94185348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8beae3643e5ee737b72dc9d5b0f55735292e8fd16567f48b85b7b0f277c95193`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:13:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 10 Oct 2017 06:13:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 06:13:22 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 10 Oct 2017 06:13:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:13:28 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 06:13:28 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 06:13:28 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 06:13:28 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 06:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:13:29 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625595906f4de3733e113a1dc505a326ee903cc828cad12e6babfe7394df91a`  
		Last Modified: Tue, 10 Oct 2017 06:14:21 GMT  
		Size: 12.6 MB (12579860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac19b3456ad96f0e963fff45ca48b732535ecf55af9b3c688c9bdf5d387e30`  
		Last Modified: Tue, 10 Oct 2017 06:14:17 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c780e8953b10831fa396da158783d2da311d10bd7a6865885251a0150971a`  
		Last Modified: Tue, 10 Oct 2017 06:14:25 GMT  
		Size: 20.7 MB (20733103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e2921dec887acf8814e79f85ea066e802d86b8a7ee95001ef811b0ac606098`  
		Last Modified: Tue, 10 Oct 2017 06:14:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f83b2c2eb8ab494b7647efbd3c0c14dad96b4e5221075e3988b5a1a88894df`  
		Last Modified: Tue, 10 Oct 2017 06:14:17 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:546853bb93077695bb321f6b5c011c2ee600842c7e6f8302d893f8d7468416e2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87402985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54f901ec58a11681b56aebe6cded2cbe4de69c17a6f7e9f5fab7586f9c25a36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:29:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 03 Nov 2017 01:29:32 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 01:29:32 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 01:29:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 01:29:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 01:29:39 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 01:29:39 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 01:29:39 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 01:29:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 01:29:40 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1be497c9dfe0f66a57d5c7a2fcf47f6c3856cbf10f2ece294d95b8fefb6a82`  
		Last Modified: Fri, 03 Nov 2017 01:30:25 GMT  
		Size: 12.8 MB (12814158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd7f966b275e5fb2a9707302f8c731c2bcc7328a0bc7b7cf55cc58c64553dc8`  
		Last Modified: Fri, 03 Nov 2017 01:30:23 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f764a754e8d13b3452f019e5d4e1d99b26871738224fba4ed1b815f4ffadd78a`  
		Last Modified: Fri, 03 Nov 2017 01:30:30 GMT  
		Size: 19.0 MB (19007417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e37ad7b3971ee5a32f630ad76c9022d4f0110f1464c83561238b8c3224aca2`  
		Last Modified: Fri, 03 Nov 2017 01:30:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173dd7eee03e3c271e266805fde690cddec602af6f3a351125a63481e81f303d`  
		Last Modified: Fri, 03 Nov 2017 01:30:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:8baf837d301ce3fa2d3485f0df849d408ca30b24cee51e67edb5fa774f86f4e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88688317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3711383e8b42eb783c98fd6c86e2b9a86f54ca48c2e69f36fe15beb1e06ab89c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:49:41 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 10 Oct 2017 08:49:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 08:49:52 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 10 Oct 2017 08:50:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 08:50:08 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 08:50:09 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 08:50:11 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 08:50:13 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 08:50:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 08:50:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8953c8679d83088c83c63c23e464879959b656018c0ea0a211a9e03d4fd69d4`  
		Last Modified: Tue, 10 Oct 2017 08:52:36 GMT  
		Size: 12.3 MB (12313820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04a077b4a98d31727c40ecf27e3a09784cef4ff4dcbb35823666bf3fabbf38c`  
		Last Modified: Tue, 10 Oct 2017 08:52:29 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ea9c0b358b7d1d850a888f1231dcdc41499674771f1fd1343301fc59a6b09f`  
		Last Modified: Tue, 10 Oct 2017 08:52:48 GMT  
		Size: 19.0 MB (19007789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65063e128349d77b829bcc32e46b9dfa03761d16a9afad65b801c6f29dd29127`  
		Last Modified: Tue, 10 Oct 2017 08:52:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dad0d5bc864e626349d161ffa1f929e4a65ffc4cb9b9d36b89fa76de633b2e8`  
		Last Modified: Tue, 10 Oct 2017 08:52:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3-alpine`

```console
$ docker pull kapacitor@sha256:5f3bb0f29d44b0f7d00a7e4d28c164462885de4e466e7a5bf485ae52b61b520d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:dad47578a448c2ff5fd13f411f2ae2e69c1e325bd3b1f2c38d28a425d1048cba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac958ade6d7cef7ae2a8a0a7458a9a77b886329f7818dc986bd4c697b83e6db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:47:18 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 26 Oct 2017 00:29:47 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 26 Oct 2017 00:29:58 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 00:29:59 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 26 Oct 2017 00:29:59 GMT
EXPOSE 9092/tcp
# Thu, 26 Oct 2017 00:29:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 26 Oct 2017 00:29:59 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Thu, 26 Oct 2017 00:30:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 00:30:00 GMT
CMD ["kapacitord"]
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
	-	`sha256:14135ac4ee2ae4590edf10be7f0af3c49eec989af6474b5708f545fe9fd4f077`  
		Last Modified: Thu, 26 Oct 2017 00:30:46 GMT  
		Size: 14.6 MB (14553801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f2ae5bb5a972154cc914d687ead0592ada48001f7724cf0199786f21a9391`  
		Last Modified: Thu, 26 Oct 2017 00:30:42 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9200b387972c0fef54498c79e1461480c14c090ff4efeb174e332c6065af2912`  
		Last Modified: Thu, 26 Oct 2017 00:30:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3-alpine`

```console
$ docker pull kapacitor@sha256:5f3bb0f29d44b0f7d00a7e4d28c164462885de4e466e7a5bf485ae52b61b520d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:dad47578a448c2ff5fd13f411f2ae2e69c1e325bd3b1f2c38d28a425d1048cba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac958ade6d7cef7ae2a8a0a7458a9a77b886329f7818dc986bd4c697b83e6db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:47:18 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 26 Oct 2017 00:29:47 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 26 Oct 2017 00:29:58 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 00:29:59 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 26 Oct 2017 00:29:59 GMT
EXPOSE 9092/tcp
# Thu, 26 Oct 2017 00:29:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 26 Oct 2017 00:29:59 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Thu, 26 Oct 2017 00:30:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 00:30:00 GMT
CMD ["kapacitord"]
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
	-	`sha256:14135ac4ee2ae4590edf10be7f0af3c49eec989af6474b5708f545fe9fd4f077`  
		Last Modified: Thu, 26 Oct 2017 00:30:46 GMT  
		Size: 14.6 MB (14553801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f2ae5bb5a972154cc914d687ead0592ada48001f7724cf0199786f21a9391`  
		Last Modified: Thu, 26 Oct 2017 00:30:42 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9200b387972c0fef54498c79e1461480c14c090ff4efeb174e332c6065af2912`  
		Last Modified: Thu, 26 Oct 2017 00:30:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:5f3bb0f29d44b0f7d00a7e4d28c164462885de4e466e7a5bf485ae52b61b520d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:dad47578a448c2ff5fd13f411f2ae2e69c1e325bd3b1f2c38d28a425d1048cba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac958ade6d7cef7ae2a8a0a7458a9a77b886329f7818dc986bd4c697b83e6db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:47:18 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 26 Oct 2017 00:29:47 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 26 Oct 2017 00:29:58 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 00:29:59 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 26 Oct 2017 00:29:59 GMT
EXPOSE 9092/tcp
# Thu, 26 Oct 2017 00:29:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 26 Oct 2017 00:29:59 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Thu, 26 Oct 2017 00:30:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 00:30:00 GMT
CMD ["kapacitord"]
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
	-	`sha256:14135ac4ee2ae4590edf10be7f0af3c49eec989af6474b5708f545fe9fd4f077`  
		Last Modified: Thu, 26 Oct 2017 00:30:46 GMT  
		Size: 14.6 MB (14553801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f2ae5bb5a972154cc914d687ead0592ada48001f7724cf0199786f21a9391`  
		Last Modified: Thu, 26 Oct 2017 00:30:42 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9200b387972c0fef54498c79e1461480c14c090ff4efeb174e332c6065af2912`  
		Last Modified: Thu, 26 Oct 2017 00:30:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:30d00691bd9ec8b3857e0b7eb9f1d9301c394eb82ffa2810292cca727ff46311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:d7fb89b8673a50ec889a7e4340fcea4e3fca626949bbe5a0b070b415f53f0bb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94185348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8beae3643e5ee737b72dc9d5b0f55735292e8fd16567f48b85b7b0f277c95193`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:13:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 10 Oct 2017 06:13:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 06:13:22 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 10 Oct 2017 06:13:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:13:28 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 06:13:28 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 06:13:28 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 06:13:28 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 06:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:13:29 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625595906f4de3733e113a1dc505a326ee903cc828cad12e6babfe7394df91a`  
		Last Modified: Tue, 10 Oct 2017 06:14:21 GMT  
		Size: 12.6 MB (12579860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac19b3456ad96f0e963fff45ca48b732535ecf55af9b3c688c9bdf5d387e30`  
		Last Modified: Tue, 10 Oct 2017 06:14:17 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c780e8953b10831fa396da158783d2da311d10bd7a6865885251a0150971a`  
		Last Modified: Tue, 10 Oct 2017 06:14:25 GMT  
		Size: 20.7 MB (20733103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e2921dec887acf8814e79f85ea066e802d86b8a7ee95001ef811b0ac606098`  
		Last Modified: Tue, 10 Oct 2017 06:14:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f83b2c2eb8ab494b7647efbd3c0c14dad96b4e5221075e3988b5a1a88894df`  
		Last Modified: Tue, 10 Oct 2017 06:14:17 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:546853bb93077695bb321f6b5c011c2ee600842c7e6f8302d893f8d7468416e2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87402985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54f901ec58a11681b56aebe6cded2cbe4de69c17a6f7e9f5fab7586f9c25a36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:29:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 03 Nov 2017 01:29:32 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 01:29:32 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 01:29:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 01:29:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 01:29:39 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 01:29:39 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 01:29:39 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 01:29:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 01:29:40 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1be497c9dfe0f66a57d5c7a2fcf47f6c3856cbf10f2ece294d95b8fefb6a82`  
		Last Modified: Fri, 03 Nov 2017 01:30:25 GMT  
		Size: 12.8 MB (12814158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd7f966b275e5fb2a9707302f8c731c2bcc7328a0bc7b7cf55cc58c64553dc8`  
		Last Modified: Fri, 03 Nov 2017 01:30:23 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f764a754e8d13b3452f019e5d4e1d99b26871738224fba4ed1b815f4ffadd78a`  
		Last Modified: Fri, 03 Nov 2017 01:30:30 GMT  
		Size: 19.0 MB (19007417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e37ad7b3971ee5a32f630ad76c9022d4f0110f1464c83561238b8c3224aca2`  
		Last Modified: Fri, 03 Nov 2017 01:30:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173dd7eee03e3c271e266805fde690cddec602af6f3a351125a63481e81f303d`  
		Last Modified: Fri, 03 Nov 2017 01:30:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:8baf837d301ce3fa2d3485f0df849d408ca30b24cee51e67edb5fa774f86f4e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88688317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3711383e8b42eb783c98fd6c86e2b9a86f54ca48c2e69f36fe15beb1e06ab89c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:49:41 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 10 Oct 2017 08:49:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 08:49:52 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 10 Oct 2017 08:50:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 08:50:08 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 10 Oct 2017 08:50:09 GMT
EXPOSE 9092/tcp
# Tue, 10 Oct 2017 08:50:11 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 10 Oct 2017 08:50:13 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 10 Oct 2017 08:50:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 08:50:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8953c8679d83088c83c63c23e464879959b656018c0ea0a211a9e03d4fd69d4`  
		Last Modified: Tue, 10 Oct 2017 08:52:36 GMT  
		Size: 12.3 MB (12313820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04a077b4a98d31727c40ecf27e3a09784cef4ff4dcbb35823666bf3fabbf38c`  
		Last Modified: Tue, 10 Oct 2017 08:52:29 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ea9c0b358b7d1d850a888f1231dcdc41499674771f1fd1343301fc59a6b09f`  
		Last Modified: Tue, 10 Oct 2017 08:52:48 GMT  
		Size: 19.0 MB (19007789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65063e128349d77b829bcc32e46b9dfa03761d16a9afad65b801c6f29dd29127`  
		Last Modified: Tue, 10 Oct 2017 08:52:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dad0d5bc864e626349d161ffa1f929e4a65ffc4cb9b9d36b89fa76de633b2e8`  
		Last Modified: Tue, 10 Oct 2017 08:52:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
