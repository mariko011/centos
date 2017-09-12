## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:d0e25121768f81a9eb82cc1a4dc4eaf46e9e5e4d3b012c25f9a6602f232c8bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:buster-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2aff3260a0de20366310eb838f7fe2f146a8e50dfbfae35a47f089540ec16518
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65066424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8004498509b28d16af919ba1f6da6f41aa64c7bcaf419b475a325c45ce5a1bb9`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:12 GMT
ADD file:f119e9d99ea0b9ed669f11a283364c30fb9ee0f82e6f7199c863eccfc3b0b56f in / 
# Thu, 07 Sep 2017 23:04:12 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:13:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:13:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1ff97b4f79d288d52633dd13b82a200555b9dcc0cade3b07f5aacb2952076436`  
		Last Modified: Thu, 07 Sep 2017 23:09:50 GMT  
		Size: 47.5 MB (47547481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd15b787068110ca18176dece3a6d187c3e5b51ba56bd4f30d8fed4448c7c9e`  
		Last Modified: Thu, 07 Sep 2017 23:54:05 GMT  
		Size: 8.5 MB (8548189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276830652fb264450fd7f17b04a7def8a76b917885d42f872a2a173bc02c072`  
		Last Modified: Thu, 07 Sep 2017 23:54:04 GMT  
		Size: 9.0 MB (8970754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:21a4cd5664320088d4121e9918bdf7e1d613ff94309504e0a63939175c48faf4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62750956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:186f3ac6d365f16c44ede877107a081f7a5e7cf33e31e5ee20ecc91f9ed1cc82`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 19:55:04 GMT
ADD file:5e9a9df494803eb8026e33d7a2e0593aafde1d4dc8809fb4468ccf607b1088e0 in / 
# Fri, 08 Sep 2017 19:55:08 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:07:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:10:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a7f94150c44a4b31e3d2b160185d226ca672a2322a216797125cb15c546d6d29`  
		Last Modified: Fri, 08 Sep 2017 20:09:08 GMT  
		Size: 46.0 MB (46038631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf9390c9078119339ca5bffdb078a11f647551e4a352037c15724a93100511d`  
		Last Modified: Tue, 12 Sep 2017 04:08:25 GMT  
		Size: 7.7 MB (7734388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f99f20c98327ba2c8d468e6668e30fc49780392ce9fe74bd549c65b755b600`  
		Last Modified: Tue, 12 Sep 2017 04:08:24 GMT  
		Size: 9.0 MB (8977937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8b0d953cd400b7daa8e717b169a731ae3db437cb6a7b23c5d165f21fc207828e
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56239452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de99a0770b705a1d0239e8698894575406e5117e050055a26f794d6a75d105a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:46:33 GMT
ADD file:dd854e517ffd5071d853179af00d4d5d7f80864145f19056348d25f06d2471cc in / 
# Tue, 25 Jul 2017 12:46:35 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 16:38:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 16:41:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7d1cf0a9436c7df7ccd19a0d2d2b7e43d6182447c0235ef113d496959bed44e6`  
		Last Modified: Tue, 25 Jul 2017 13:03:34 GMT  
		Size: 44.5 MB (44548319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d3d811dcb9e98aca8599eb684d66b37be5e2388f381a422d6cd1f166f6f1f3`  
		Last Modified: Fri, 11 Aug 2017 18:46:16 GMT  
		Size: 7.5 MB (7472544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb3558ca14fb89126c4acda7b478d0f3250ebab64d350e6f5994ea257a065a5`  
		Last Modified: Fri, 11 Aug 2017 18:46:12 GMT  
		Size: 4.2 MB (4218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:3d1217857bff199cec1575c7e591e87235aa70ba3268a2513ede55e2868c4d26
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57747236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a022c8f2b45e51242ad2eb64fb7f97a5c4735bdf60c2b9be90b725febe79783c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:30 GMT
ADD file:8126b53786c7c984f2d6fa95bbf0edbcf66fff3980eafdb361b03b636de68e97 in / 
# Mon, 24 Jul 2017 17:22:31 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:48:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2d437828ae62f7ee88e586a8c47b87f9920fba5b17b97d79fe657de60176e0ab`  
		Last Modified: Mon, 24 Jul 2017 17:25:56 GMT  
		Size: 45.7 MB (45669480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d427dde25c94a7cba74cd96e6692ccf7d5487dd1f41816742ebc831a990ddc24`  
		Last Modified: Mon, 24 Jul 2017 18:26:55 GMT  
		Size: 7.7 MB (7683569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72fa499cf35069302c9e2e2f724faa2fbb641404040d5f801a579340bdbef1`  
		Last Modified: Mon, 24 Jul 2017 18:26:54 GMT  
		Size: 4.4 MB (4394187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ae34a0697b34114fe16f118b0d5f54c610df9936a14fe4ba1fdd20b90aeaf9a8
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66369645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c763f9e24649517f9c6f44c14ad6d130b9e9dc850dfb235745c3599c0d1435c7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:29 GMT
ADD file:1bb10947ff6a377a9231dad99cbdf86c4854167c7b206dc7082b0cb351ead0cf in / 
# Fri, 08 Sep 2017 13:17:29 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:46:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:46:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6c471149047c699ffbe5997f86132a3cf8d60a00007b51f0e558e9eb05e66a39`  
		Last Modified: Fri, 08 Sep 2017 13:21:27 GMT  
		Size: 48.3 MB (48345223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c605c9c66becbadb49721125e34b699968505839d063762983f80b8a8e4b11`  
		Last Modified: Sat, 09 Sep 2017 13:54:19 GMT  
		Size: 8.5 MB (8520124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fea39f077350d257bc5818098238485d5c3fcc9f47cf5b0a4928813d2aef4a`  
		Last Modified: Sat, 09 Sep 2017 13:54:18 GMT  
		Size: 9.5 MB (9504298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:2a2e5893386415bec7c159c7e4131692ebd0af0fed961f2fdb5d85ace7fbaa29
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60709502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b52894ad902bcb056642583b204e8e14139691e5b3a7deaa36e3b0c1c9f881`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:28 GMT
ADD file:78a57e2d49d23bef1ca87e5f111329fbdb73dd44670921a109a6e24bb849d036 in / 
# Tue, 25 Jul 2017 00:31:29 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:55:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:56:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:44f09a8e88e89adf472c3bf4bb2f98ca13b294e0aab33ba3065a11fb7967b9e5`  
		Last Modified: Tue, 25 Jul 2017 00:33:47 GMT  
		Size: 48.2 MB (48223641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf846ded16574fda5b68e99784ae9283b18da57056093aca19795168ecc9ec2`  
		Last Modified: Tue, 25 Jul 2017 01:10:40 GMT  
		Size: 7.9 MB (7886094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665db4042e33f88e0bbd83a0503aa6d2ae2154dfb329066da2cd60867259e332`  
		Last Modified: Tue, 25 Jul 2017 01:10:39 GMT  
		Size: 4.6 MB (4599767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a604a09763d9bda7db8939ab24dcacb63a1b03c33447bcd5c4d865c0f9ff5cae
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64647850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2eec024f8c6d5e4e358ed317e1c9ff215fd40a63215ed88e19760e40261862`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:29 GMT
ADD file:496adb8e56c777807c90b3b5bfd59f5b26aacf99938600fcfab53272adcc57e5 in / 
# Fri, 08 Sep 2017 05:21:29 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:45:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:165da74c5cf5b01cb5d7e41dcf3c453625ed23ce0d0138f4da4c05ec869bdfcd`  
		Last Modified: Fri, 08 Sep 2017 05:23:50 GMT  
		Size: 47.3 MB (47346285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2360e883dab2d2920e7a089cb704a8bb3fd60bc3fdf16e56f5ec5ae11252c08b`  
		Last Modified: Fri, 08 Sep 2017 16:40:21 GMT  
		Size: 8.1 MB (8092245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36902e89a3c7660f45e5a3c684ef04a3e2d6def1376e302ab0207bef0625141`  
		Last Modified: Fri, 08 Sep 2017 16:40:24 GMT  
		Size: 9.2 MB (9209320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
