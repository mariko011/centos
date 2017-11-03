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
$ docker pull kapacitor@sha256:c1d93d89f32dea09f45fa686fb2a42c689326f94393614c8dcc927ae16f7f5a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.2` - linux; amd64

```console
$ docker pull kapacitor@sha256:c0a913efc195ba33c561c7b129b1b1cda014c6b83f44ebabf6d1bb1a2796d21c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71049875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccab536898a7a3de6101f8458e029894f9f3baa8e0c4fab2c132ccba17c30728`
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
# Fri, 03 Nov 2017 22:17:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 22:17:38 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 03 Nov 2017 22:17:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 22:17:45 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:17:46 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:17:46 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:17:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 22:17:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:17:47 GMT
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
	-	`sha256:c820c2ee11346f6fda9f61723d63030d9df791d5ca9b41a7bfd1e824c1238d27`  
		Last Modified: Fri, 03 Nov 2017 22:18:55 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cee530641dd851c43567ac92be5c5791372f5022ed2172fc1111e7b6b33223`  
		Last Modified: Fri, 03 Nov 2017 22:18:57 GMT  
		Size: 10.2 MB (10177491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76626bf9e9e0aa4a03bb256786bd570bbb570f02c4f7be72c8b58c28c6a4bdb7`  
		Last Modified: Fri, 03 Nov 2017 22:18:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e5fe0949baee60749c1cd5a536db8b4bf356d0910b78ac8191fc31a198f0bf`  
		Last Modified: Fri, 03 Nov 2017 22:18:56 GMT  
		Size: 231.0 B  
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
$ docker pull kapacitor@sha256:0eea4d0205b8ffdc6ae9e0df9bad2c0f90c9c23f73193267e327906c61d15ecc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66365891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11d91e2d1459f6871a402b6bcc3459bafbf38a2bbdf4584f8a146a058bd1cd6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:20:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 11:24:31 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 03 Nov 2017 11:24:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 11:24:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 11:24:38 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 11:24:39 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 11:24:40 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 11:24:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 11:24:41 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3ce0bef6f81ba410d6697cd117da6afb56a91b64428a9e234c8f8dc0724bf8`  
		Last Modified: Fri, 03 Nov 2017 11:22:16 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4356dd6c7b2e245d579c9bd34893bc337d7d4d59377cbc57267f152626f0e464`  
		Last Modified: Fri, 03 Nov 2017 11:26:23 GMT  
		Size: 9.3 MB (9296790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9296c0fcfb8cc74c8d5f0a3f62aa54dc2251b15cf10eb6b08745c2192ada9bdf`  
		Last Modified: Fri, 03 Nov 2017 11:26:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b143be497342556348b0d77a5734e7138e37b48a2758ab7d82b3c9dea2738f7`  
		Last Modified: Fri, 03 Nov 2017 11:26:18 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1`

```console
$ docker pull kapacitor@sha256:c1d93d89f32dea09f45fa686fb2a42c689326f94393614c8dcc927ae16f7f5a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.2.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:c0a913efc195ba33c561c7b129b1b1cda014c6b83f44ebabf6d1bb1a2796d21c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71049875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccab536898a7a3de6101f8458e029894f9f3baa8e0c4fab2c132ccba17c30728`
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
# Fri, 03 Nov 2017 22:17:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 22:17:38 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 03 Nov 2017 22:17:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 22:17:45 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:17:46 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:17:46 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:17:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 22:17:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:17:47 GMT
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
	-	`sha256:c820c2ee11346f6fda9f61723d63030d9df791d5ca9b41a7bfd1e824c1238d27`  
		Last Modified: Fri, 03 Nov 2017 22:18:55 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cee530641dd851c43567ac92be5c5791372f5022ed2172fc1111e7b6b33223`  
		Last Modified: Fri, 03 Nov 2017 22:18:57 GMT  
		Size: 10.2 MB (10177491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76626bf9e9e0aa4a03bb256786bd570bbb570f02c4f7be72c8b58c28c6a4bdb7`  
		Last Modified: Fri, 03 Nov 2017 22:18:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e5fe0949baee60749c1cd5a536db8b4bf356d0910b78ac8191fc31a198f0bf`  
		Last Modified: Fri, 03 Nov 2017 22:18:56 GMT  
		Size: 231.0 B  
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
$ docker pull kapacitor@sha256:0eea4d0205b8ffdc6ae9e0df9bad2c0f90c9c23f73193267e327906c61d15ecc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66365891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11d91e2d1459f6871a402b6bcc3459bafbf38a2bbdf4584f8a146a058bd1cd6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:20:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 11:24:31 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 03 Nov 2017 11:24:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 11:24:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 11:24:38 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 11:24:39 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 11:24:40 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 11:24:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 11:24:41 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3ce0bef6f81ba410d6697cd117da6afb56a91b64428a9e234c8f8dc0724bf8`  
		Last Modified: Fri, 03 Nov 2017 11:22:16 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4356dd6c7b2e245d579c9bd34893bc337d7d4d59377cbc57267f152626f0e464`  
		Last Modified: Fri, 03 Nov 2017 11:26:23 GMT  
		Size: 9.3 MB (9296790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9296c0fcfb8cc74c8d5f0a3f62aa54dc2251b15cf10eb6b08745c2192ada9bdf`  
		Last Modified: Fri, 03 Nov 2017 11:26:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b143be497342556348b0d77a5734e7138e37b48a2758ab7d82b3c9dea2738f7`  
		Last Modified: Fri, 03 Nov 2017 11:26:18 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1-alpine`

```console
$ docker pull kapacitor@sha256:c43cb694b952d63d3d0bf6b311fe2cd935734ad2fcf004faf6bbba183ec2065d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:5012ba24e9938c98e9092929794552dad572e196f856e19041809b098d44c0f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42d03e597717218e2828e21105f427189f052e081c8bf74a3b43db571cd2201`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:17:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 03 Nov 2017 22:17:52 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Nov 2017 22:17:53 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 03 Nov 2017 22:18:09 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Nov 2017 22:18:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:18:10 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:18:10 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:18:10 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:18:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:18:11 GMT
CMD ["kapacitord"]
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
	-	`sha256:9b39c49bf9ce60d0039ae2ebbb80fff2e1df9046c8f7333d95ededb4a919c976`  
		Last Modified: Fri, 03 Nov 2017 22:19:07 GMT  
		Size: 7.1 MB (7072604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ea56fe6bad7f99120731cc6d4653f227eff1448d774a8fe3aa1ae4a6ec0ff9`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318818a2d02259a9fea687312c31139dcc982b400817ca430dcbf9d0b4590deb`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2-alpine`

```console
$ docker pull kapacitor@sha256:c43cb694b952d63d3d0bf6b311fe2cd935734ad2fcf004faf6bbba183ec2065d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.2-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:5012ba24e9938c98e9092929794552dad572e196f856e19041809b098d44c0f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42d03e597717218e2828e21105f427189f052e081c8bf74a3b43db571cd2201`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:17:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 03 Nov 2017 22:17:52 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Nov 2017 22:17:53 GMT
ENV KAPACITOR_VERSION=1.2.1
# Fri, 03 Nov 2017 22:18:09 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Nov 2017 22:18:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:18:10 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:18:10 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:18:10 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:18:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:18:11 GMT
CMD ["kapacitord"]
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
	-	`sha256:9b39c49bf9ce60d0039ae2ebbb80fff2e1df9046c8f7333d95ededb4a919c976`  
		Last Modified: Fri, 03 Nov 2017 22:19:07 GMT  
		Size: 7.1 MB (7072604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ea56fe6bad7f99120731cc6d4653f227eff1448d774a8fe3aa1ae4a6ec0ff9`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318818a2d02259a9fea687312c31139dcc982b400817ca430dcbf9d0b4590deb`  
		Last Modified: Fri, 03 Nov 2017 22:19:06 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3`

```console
$ docker pull kapacitor@sha256:78bd95f787bbe0b8c9f9c2f781a9569f585d56aea2a9ea8274213e78950e1b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:a1b090b13aa460ffe19ae9e72853cc3cc380fad6f2f04f7fe1c92c48c1dda660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94241545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c689b82a2cc1afd292c02222eea6d5a6bcf6c3012e20c255d4b62470cfa0215`
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
# Fri, 03 Nov 2017 22:18:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 03 Nov 2017 22:18:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 22:18:24 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 22:18:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 22:18:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:18:32 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:18:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:18:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 22:18:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:18:33 GMT
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
	-	`sha256:cdec06097198ee4c7c4dca14f3856579e3c45d82527462c621c0fa564025316e`  
		Last Modified: Fri, 03 Nov 2017 22:19:17 GMT  
		Size: 12.6 MB (12636079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d27cea15476a65dd0a34067def52326a1996711cccd9fcc46b8ecf876b642c`  
		Last Modified: Fri, 03 Nov 2017 22:19:15 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc1044c4b5b0443552c61adb91ef137e8a7bb8a36cbb5580787eeb0ac5f150a`  
		Last Modified: Fri, 03 Nov 2017 22:19:19 GMT  
		Size: 20.7 MB (20733086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2c0f213236e85a5858bb2731dbf68e210365b0334791e6d3b2844fc809edec`  
		Last Modified: Fri, 03 Nov 2017 22:19:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532c5dd703b72b1cabd04fc2e4f43d8199ee6b26a9303ec37ea118bbb82512a9`  
		Last Modified: Fri, 03 Nov 2017 22:19:15 GMT  
		Size: 231.0 B  
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
$ docker pull kapacitor@sha256:74798cf164552e5e32ee9eb2bbce5d813cb08bb8433a2530f2da63bebb353b9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88445168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7480509fc6b7473cf1790bf4601e86ec835b483b0ed0d93234df8c5bdff8ab7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:25:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 03 Nov 2017 11:25:20 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 11:25:28 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 11:25:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 11:25:43 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 11:25:44 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 11:25:45 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 11:25:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 11:25:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 11:25:58 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab33b95bbd010c5adae6393ca2cd8ad9c8ce997fcd95c460dec08372eac217c`  
		Last Modified: Fri, 03 Nov 2017 11:27:08 GMT  
		Size: 12.4 MB (12368780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2289a0d9089dc8f6568e1810815252d1a78ea2287f641c238290f8b6120c4279`  
		Last Modified: Fri, 03 Nov 2017 11:27:04 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa3c40d2855a15cca2608e753ef5e9e1246df4972a0072733ecb3bd928cf45b`  
		Last Modified: Fri, 03 Nov 2017 11:27:13 GMT  
		Size: 19.0 MB (19007286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d03617c767909b9e2167a341ccc6f3f4d716c025007ea84f3ea2119459d4449`  
		Last Modified: Fri, 03 Nov 2017 11:27:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adb289bafd957d3e1102c43f6d1b88b4447bce9d2ca942b90a65b6a4bb04059`  
		Last Modified: Fri, 03 Nov 2017 11:27:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3`

```console
$ docker pull kapacitor@sha256:78bd95f787bbe0b8c9f9c2f781a9569f585d56aea2a9ea8274213e78950e1b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:a1b090b13aa460ffe19ae9e72853cc3cc380fad6f2f04f7fe1c92c48c1dda660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94241545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c689b82a2cc1afd292c02222eea6d5a6bcf6c3012e20c255d4b62470cfa0215`
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
# Fri, 03 Nov 2017 22:18:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 03 Nov 2017 22:18:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 22:18:24 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 22:18:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 22:18:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:18:32 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:18:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:18:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 22:18:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:18:33 GMT
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
	-	`sha256:cdec06097198ee4c7c4dca14f3856579e3c45d82527462c621c0fa564025316e`  
		Last Modified: Fri, 03 Nov 2017 22:19:17 GMT  
		Size: 12.6 MB (12636079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d27cea15476a65dd0a34067def52326a1996711cccd9fcc46b8ecf876b642c`  
		Last Modified: Fri, 03 Nov 2017 22:19:15 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc1044c4b5b0443552c61adb91ef137e8a7bb8a36cbb5580787eeb0ac5f150a`  
		Last Modified: Fri, 03 Nov 2017 22:19:19 GMT  
		Size: 20.7 MB (20733086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2c0f213236e85a5858bb2731dbf68e210365b0334791e6d3b2844fc809edec`  
		Last Modified: Fri, 03 Nov 2017 22:19:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532c5dd703b72b1cabd04fc2e4f43d8199ee6b26a9303ec37ea118bbb82512a9`  
		Last Modified: Fri, 03 Nov 2017 22:19:15 GMT  
		Size: 231.0 B  
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
$ docker pull kapacitor@sha256:74798cf164552e5e32ee9eb2bbce5d813cb08bb8433a2530f2da63bebb353b9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88445168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7480509fc6b7473cf1790bf4601e86ec835b483b0ed0d93234df8c5bdff8ab7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:25:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 03 Nov 2017 11:25:20 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 11:25:28 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 11:25:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 11:25:43 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 11:25:44 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 11:25:45 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 11:25:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 11:25:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 11:25:58 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab33b95bbd010c5adae6393ca2cd8ad9c8ce997fcd95c460dec08372eac217c`  
		Last Modified: Fri, 03 Nov 2017 11:27:08 GMT  
		Size: 12.4 MB (12368780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2289a0d9089dc8f6568e1810815252d1a78ea2287f641c238290f8b6120c4279`  
		Last Modified: Fri, 03 Nov 2017 11:27:04 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa3c40d2855a15cca2608e753ef5e9e1246df4972a0072733ecb3bd928cf45b`  
		Last Modified: Fri, 03 Nov 2017 11:27:13 GMT  
		Size: 19.0 MB (19007286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d03617c767909b9e2167a341ccc6f3f4d716c025007ea84f3ea2119459d4449`  
		Last Modified: Fri, 03 Nov 2017 11:27:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adb289bafd957d3e1102c43f6d1b88b4447bce9d2ca942b90a65b6a4bb04059`  
		Last Modified: Fri, 03 Nov 2017 11:27:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3-alpine`

```console
$ docker pull kapacitor@sha256:8547dfdd7dc5c11e443d44a81209eb355ee0fc41dfc107c76ceb2869e4f3fc03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:69a92c6e41a35fe7c930c19ba6faeda8a96eb46ddee4f1689cd515bb5e74391f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912d459d248a4b1f84dbc4233f6741b14eead7284e89d21c868302940c55cd53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:17:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 03 Nov 2017 22:17:52 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Nov 2017 22:18:37 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 22:18:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Nov 2017 22:18:48 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:18:49 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:18:49 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:18:49 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:18:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:18:49 GMT
CMD ["kapacitord"]
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
	-	`sha256:778f597d849b9a3985f927edbcef8c5888c4648462845c752514df7e01d3ab18`  
		Last Modified: Fri, 03 Nov 2017 22:19:34 GMT  
		Size: 14.6 MB (14553812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c72a37ebe3a00a6f10718c9a78c1b34cd4c1d67d87327806b964a7c17d036e`  
		Last Modified: Fri, 03 Nov 2017 22:19:30 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9b1cf4920d8274dbd0ca82e553df2a4855378abc052661dfcb149f7b6cf371`  
		Last Modified: Fri, 03 Nov 2017 22:19:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3-alpine`

```console
$ docker pull kapacitor@sha256:8547dfdd7dc5c11e443d44a81209eb355ee0fc41dfc107c76ceb2869e4f3fc03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:69a92c6e41a35fe7c930c19ba6faeda8a96eb46ddee4f1689cd515bb5e74391f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912d459d248a4b1f84dbc4233f6741b14eead7284e89d21c868302940c55cd53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:17:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 03 Nov 2017 22:17:52 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Nov 2017 22:18:37 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 22:18:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Nov 2017 22:18:48 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:18:49 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:18:49 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:18:49 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:18:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:18:49 GMT
CMD ["kapacitord"]
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
	-	`sha256:778f597d849b9a3985f927edbcef8c5888c4648462845c752514df7e01d3ab18`  
		Last Modified: Fri, 03 Nov 2017 22:19:34 GMT  
		Size: 14.6 MB (14553812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c72a37ebe3a00a6f10718c9a78c1b34cd4c1d67d87327806b964a7c17d036e`  
		Last Modified: Fri, 03 Nov 2017 22:19:30 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9b1cf4920d8274dbd0ca82e553df2a4855378abc052661dfcb149f7b6cf371`  
		Last Modified: Fri, 03 Nov 2017 22:19:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:8547dfdd7dc5c11e443d44a81209eb355ee0fc41dfc107c76ceb2869e4f3fc03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:69a92c6e41a35fe7c930c19ba6faeda8a96eb46ddee4f1689cd515bb5e74391f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912d459d248a4b1f84dbc4233f6741b14eead7284e89d21c868302940c55cd53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:17:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 03 Nov 2017 22:17:52 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Nov 2017 22:18:37 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 22:18:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Nov 2017 22:18:48 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:18:49 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:18:49 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:18:49 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 03 Nov 2017 22:18:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:18:49 GMT
CMD ["kapacitord"]
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
	-	`sha256:778f597d849b9a3985f927edbcef8c5888c4648462845c752514df7e01d3ab18`  
		Last Modified: Fri, 03 Nov 2017 22:19:34 GMT  
		Size: 14.6 MB (14553812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c72a37ebe3a00a6f10718c9a78c1b34cd4c1d67d87327806b964a7c17d036e`  
		Last Modified: Fri, 03 Nov 2017 22:19:30 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9b1cf4920d8274dbd0ca82e553df2a4855378abc052661dfcb149f7b6cf371`  
		Last Modified: Fri, 03 Nov 2017 22:19:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:78bd95f787bbe0b8c9f9c2f781a9569f585d56aea2a9ea8274213e78950e1b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:a1b090b13aa460ffe19ae9e72853cc3cc380fad6f2f04f7fe1c92c48c1dda660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94241545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c689b82a2cc1afd292c02222eea6d5a6bcf6c3012e20c255d4b62470cfa0215`
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
# Fri, 03 Nov 2017 22:18:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 03 Nov 2017 22:18:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 22:18:24 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 22:18:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 22:18:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 22:18:32 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 22:18:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 22:18:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 22:18:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:18:33 GMT
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
	-	`sha256:cdec06097198ee4c7c4dca14f3856579e3c45d82527462c621c0fa564025316e`  
		Last Modified: Fri, 03 Nov 2017 22:19:17 GMT  
		Size: 12.6 MB (12636079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d27cea15476a65dd0a34067def52326a1996711cccd9fcc46b8ecf876b642c`  
		Last Modified: Fri, 03 Nov 2017 22:19:15 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc1044c4b5b0443552c61adb91ef137e8a7bb8a36cbb5580787eeb0ac5f150a`  
		Last Modified: Fri, 03 Nov 2017 22:19:19 GMT  
		Size: 20.7 MB (20733086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2c0f213236e85a5858bb2731dbf68e210365b0334791e6d3b2844fc809edec`  
		Last Modified: Fri, 03 Nov 2017 22:19:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532c5dd703b72b1cabd04fc2e4f43d8199ee6b26a9303ec37ea118bbb82512a9`  
		Last Modified: Fri, 03 Nov 2017 22:19:15 GMT  
		Size: 231.0 B  
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
$ docker pull kapacitor@sha256:74798cf164552e5e32ee9eb2bbce5d813cb08bb8433a2530f2da63bebb353b9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88445168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7480509fc6b7473cf1790bf4601e86ec835b483b0ed0d93234df8c5bdff8ab7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:25:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 03 Nov 2017 11:25:20 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 11:25:28 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 03 Nov 2017 11:25:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 11:25:43 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 03 Nov 2017 11:25:44 GMT
EXPOSE 9092/tcp
# Fri, 03 Nov 2017 11:25:45 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 03 Nov 2017 11:25:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 03 Nov 2017 11:25:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 11:25:58 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab33b95bbd010c5adae6393ca2cd8ad9c8ce997fcd95c460dec08372eac217c`  
		Last Modified: Fri, 03 Nov 2017 11:27:08 GMT  
		Size: 12.4 MB (12368780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2289a0d9089dc8f6568e1810815252d1a78ea2287f641c238290f8b6120c4279`  
		Last Modified: Fri, 03 Nov 2017 11:27:04 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa3c40d2855a15cca2608e753ef5e9e1246df4972a0072733ecb3bd928cf45b`  
		Last Modified: Fri, 03 Nov 2017 11:27:13 GMT  
		Size: 19.0 MB (19007286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d03617c767909b9e2167a341ccc6f3f4d716c025007ea84f3ea2119459d4449`  
		Last Modified: Fri, 03 Nov 2017 11:27:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adb289bafd957d3e1102c43f6d1b88b4447bce9d2ca942b90a65b6a4bb04059`  
		Last Modified: Fri, 03 Nov 2017 11:27:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
