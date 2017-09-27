## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:5354ef0bdc12722b6805574e3366bb0a3f8912a89415d50ccee569520d283fc8
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

### `buildpack-deps:buster-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:3584c318d301c645bbc0145a849e5df4551a6013ab1623143fa4f7e4fc84d701
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113541880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6081802020e6adcad237ad1024af3ad0c29fc740b502f4c4812ac772b263eb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:31 GMT
ADD file:f119e9d99ea0b9ed669f11a283364c30fb9ee0f82e6f7199c863eccfc3b0b56f in / 
# Wed, 13 Sep 2017 08:40:32 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:29:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:30:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1ff97b4f79d288d52633dd13b82a200555b9dcc0cade3b07f5aacb2952076436`  
		Last Modified: Thu, 07 Sep 2017 23:09:50 GMT  
		Size: 47.5 MB (47547481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0ecc846d815fa8b649ea4e745b36449d524c59ae33bb30851251e64076415`  
		Last Modified: Wed, 13 Sep 2017 12:52:23 GMT  
		Size: 8.5 MB (8549680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663405a29e62408b268a6ad2cb53edc2f8ee27707c47392fde0ab564d6810f52`  
		Last Modified: Wed, 13 Sep 2017 12:52:22 GMT  
		Size: 9.8 MB (9841973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123cfbbbd44215a3ade1798bf713115f46eb4296045b0d6e782396a4d655b2cd`  
		Last Modified: Wed, 13 Sep 2017 12:52:45 GMT  
		Size: 47.6 MB (47602746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:4991337437bb7ed05d37040dd2d231575bb22905e20eef593d298247d64de3ed
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108258186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce3338010b2061e82fa096282343c04d36667203a0080d8af4911ba92c6fc7d`
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
# Wed, 13 Sep 2017 07:53:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:b77f86afaeeea531c9b3d018e0dabfad4b191dbe6cf029edb3ab12aca49c063e`  
		Last Modified: Wed, 13 Sep 2017 08:23:23 GMT  
		Size: 45.5 MB (45507230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ec0f21d43b50e34b434995751d2f824283ede983ef85765817eb1d29e7e6354b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108758448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1c1df76b737c927595688d980dd6758cb32d2970fc8a073f7ebb15d17f6c99`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:11:56 GMT
ADD file:255cea799669e91daca66c5d81e7ce9667d66fb00edcc9fe031cae4b24c20e80 in / 
# Wed, 27 Sep 2017 04:11:57 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:36:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:edc9b2692b808775782889d8c47fa666bdc02c762f59ec873d7f80bc6804328a`  
		Last Modified: Wed, 27 Sep 2017 04:16:40 GMT  
		Size: 44.5 MB (44525960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b7e5b0858110083b11a63644e278cbfec665bc47e43886608ac451256f7ad7`  
		Last Modified: Wed, 27 Sep 2017 04:55:56 GMT  
		Size: 7.6 MB (7565792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59e869f90673d608a83b59c5439b70a82a56fb3079840a7ed79a414ff35e1a6`  
		Last Modified: Wed, 27 Sep 2017 04:55:55 GMT  
		Size: 9.4 MB (9352410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b98f88e3285659d9b2d04eede46d2a2ba76aabca8839af29eb81142c4f652b`  
		Last Modified: Wed, 27 Sep 2017 04:56:18 GMT  
		Size: 47.3 MB (47314286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:89d084df01f76dccb17bb02c884f6479c93f6fefb9637b3039ff7b06ee0fc4be
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107717034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8818400316934a4f031b0971d09742f5e007ce5ba94807a65962f2e25fc2ddcd`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:22:48 GMT
ADD file:4904e5df20a257767d6c163f30020b913cf7629b5368e59aef82d2e0c8001876 in / 
# Fri, 08 Sep 2017 17:22:50 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:19:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:19:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 09:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bf5e122c4d29d1dbe9b55d79be24568bd5b00929f18275caf906668496099548`  
		Last Modified: Fri, 08 Sep 2017 17:32:36 GMT  
		Size: 45.2 MB (45226424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696f471af6708d53109a6601f2f05c5d16545dbe1a93f1b0c97716ddaa722328`  
		Last Modified: Thu, 14 Sep 2017 21:58:19 GMT  
		Size: 7.7 MB (7718123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a5f262302ea91d6c97584cbcd1f06206a1efb3753aa8c39b2e36baf5307c`  
		Last Modified: Thu, 14 Sep 2017 21:58:18 GMT  
		Size: 9.0 MB (8970501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ede189ab3c1c08163801fac178c12d67364ad8bd7c94ab86b9b8d46861fcb7`  
		Last Modified: Thu, 14 Sep 2017 21:58:49 GMT  
		Size: 45.8 MB (45801986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b4f5862f0acd67f0a2705c087817188c2ce955a94875253fa360914351f9d44a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115640682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c7699011d0956f1f99cdae564456cfe9121f64f11094c6aef9c53344ae1ce9`
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
# Tue, 12 Sep 2017 23:03:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:3c6e5f63747f7cf5ba2a8c8035dee65a609724a81be666ca4c23a9dfe292600e`  
		Last Modified: Tue, 12 Sep 2017 23:15:46 GMT  
		Size: 49.3 MB (49271037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:fe44523cdac54ac6f770363fb6db9eb3e5691fae63e60e8b3cad85492176b36b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115297691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300bcae94011ad9b89bf2454f411b55e84f9d088a2e24f49b974c5ace3d52b8d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:31:50 GMT
ADD file:1ff000beeff4caf80bc8c735d182924ef77649f7321d7181124606051fa82eb4 in / 
# Fri, 08 Sep 2017 00:31:50 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:59:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:59:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 15:48:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6e57f42783abea2df8ea8fc1464472e81dd9ce7593c0ce5c4df36f0a35bab91f`  
		Last Modified: Fri, 08 Sep 2017 00:35:35 GMT  
		Size: 48.1 MB (48111328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978f8f8fef47f156e3b14727d6ab03319ecc03aac5615fa806b270c0900b5a09`  
		Last Modified: Thu, 14 Sep 2017 22:18:34 GMT  
		Size: 8.0 MB (7975085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c050bd5578ce83d96389c030f83c7d9c16350340ad50dbddea5c176eb7a75a`  
		Last Modified: Thu, 14 Sep 2017 22:18:35 GMT  
		Size: 9.4 MB (9441447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558057b5c4944064f167f777d40a46ce27271179d1793c6215331c10fe706fb3`  
		Last Modified: Thu, 14 Sep 2017 22:18:59 GMT  
		Size: 49.8 MB (49769831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a30e1a20e9f12e5d09c57d821848f4cde4170b6b7673f8203fb48e297d464486
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112342156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936d72fbb6d721852ef0e2f432ad59277517ff7585ef8a934587cce7939d1fe1`
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
# Wed, 13 Sep 2017 16:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f07e608811a9a6d6b2c66c2821faf2496b0ba44bf459b3af97442518713dd132`  
		Last Modified: Wed, 13 Sep 2017 16:39:48 GMT  
		Size: 47.7 MB (47694306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
