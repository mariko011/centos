## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:de8640bac7d68b49cd4e0d5a5d3306cb5045b80856f8f7187c82b7ccdcd62122
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
$ docker pull buildpack-deps@sha256:4ac091698c0b6284fa03fb876a6f82712ec668642c339afed5e352f3d674433f
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105462134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c29c530ba365f41fa834cb38665dbfd0137082b02e4cd46bc38ec6d41fb8501`
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
# Fri, 11 Aug 2017 16:45:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:339a5925cab2c75a67d0ab2776163c04b3e8f9fbf69fefb1f7c7613b9b573968`  
		Last Modified: Fri, 11 Aug 2017 18:47:01 GMT  
		Size: 49.2 MB (49222682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:bef387414724da5f2d40722ad191d21e663eec7716b8b63f79ee8ce94ca33821
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106598762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a34515af02560e7a4e83860684604e0e2edf3fe3a1e6c7c1da05ba02e6fe2cb`
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
# Mon, 24 Jul 2017 17:50:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:bfe88dfcb7ad1f0a599bdefa0f7aed099d9a7a92dccd6e4f780d7a54738b4830`  
		Last Modified: Mon, 24 Jul 2017 18:27:24 GMT  
		Size: 48.9 MB (48851526 bytes)  
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
$ docker pull buildpack-deps@sha256:9f5b4b42001398a6a22dd5ad99e495764f2061a9aec5b0cc5c5f8216c22ab10b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111682419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fcdf7ffeff43b489eaef29aa8b1c76a44b34918ed05dba3c40a35cfa32de78`
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
# Tue, 25 Jul 2017 00:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:4654b8d1f2b74c12c377bb8073252ebe0f30e0e0b43347f8575a79b58bc8d843`  
		Last Modified: Tue, 25 Jul 2017 01:11:06 GMT  
		Size: 51.0 MB (50972917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:8e3abc5417c968ab006008964fcf7a9301665548beedeab760b37a0294767fff
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116476032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f299880080b8d855cad312cb40093bd14f9333a96f495562252096358ec95e`
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
# Fri, 08 Sep 2017 05:46:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:66b8a4239d0f1ba30913336474a1b685c225459caf7db12a47905072968c5cb6`  
		Last Modified: Fri, 08 Sep 2017 16:40:39 GMT  
		Size: 51.8 MB (51828182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
