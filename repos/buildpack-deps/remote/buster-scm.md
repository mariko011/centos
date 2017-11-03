## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:5b98f08b5ba5dc01f67890d544ebf3adaef84b7bbb2133fe90517393a16f72e2
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
$ docker pull buildpack-deps@sha256:05b463993103b7fbd031ec195de070f3855b6d5215abae0e2e1c1036a07bbb2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113059895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ada6ebaf75856d4ff206b016940b0e3a61f9256b86a7a53fa86f9dc83eda1d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:29:38 GMT
ADD file:2ad6832b35851b2a96b581ef8ed45d25ac9de93d41289c5560c271fed9ba920e in / 
# Mon, 09 Oct 2017 21:29:38 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:22:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:22:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85800cfdb88adf2f09c8fa7b9007830b06b159216512a8073639d55ef65bef2d`  
		Last Modified: Mon, 09 Oct 2017 21:35:49 GMT  
		Size: 47.5 MB (47527292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2c2e8a5238a61ecceaa05fd3b8a12f0f0b7130be8ea0e3a73a88f9885eba6c`  
		Last Modified: Mon, 09 Oct 2017 22:46:25 GMT  
		Size: 8.6 MB (8552061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d850a8f7e8bb6a7e6af0aeeec84c88e0bf09c7eb13a7add66489b382190b1337`  
		Last Modified: Mon, 09 Oct 2017 22:46:25 GMT  
		Size: 9.3 MB (9274108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822cb65b7d3cdc94bde39bf5e0d7ff9ea1c1a2ddc707382eefc36196b6ba706e`  
		Last Modified: Mon, 09 Oct 2017 22:50:12 GMT  
		Size: 47.7 MB (47706434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:65733486caefddd88cb5ad9cfcd1a7f66d57069119d63ce9b13c3594f061aab7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108337195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714c148d0ffc8bd6cfa9897b510de3ba95860c68004f570bcb68df60e4b42c54`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:42 GMT
ADD file:c36a09a9d10e3a94cb120b7379c90035a914005754376b50b29120b6d07e8954 in / 
# Mon, 09 Oct 2017 21:41:42 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:09:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:09:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ebe411eaa35474a74312d1934e1ad886999e87126d30684dc987c5cf5f97750a`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 46.0 MB (46010486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58db4071fac4d5b6ad6cdb685996755c84e5fe9eeb6897258553fd9c330682d8`  
		Last Modified: Mon, 09 Oct 2017 22:22:42 GMT  
		Size: 7.7 MB (7735222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbf0c11611f01fe2b1fee8008411740f6e1da2310773d973b7ed86c2725cd09`  
		Last Modified: Mon, 09 Oct 2017 22:23:05 GMT  
		Size: 9.0 MB (9016113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4803d0757f8d280414c8c8a191ac3417bcdbe5ffdde4df89654af19c496d540b`  
		Last Modified: Mon, 09 Oct 2017 22:23:26 GMT  
		Size: 45.6 MB (45575374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:371a4302f87e1363de7a14851e57b6e0cc03a253364e3d80f8f227e4db6dff5c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106418351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d12ebcc6ea2174873bfd132c036e2f58eaa4c6e33d997ba8ddca339ca9012e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:48 GMT
ADD file:914df13f485ca2450fb56b86a878e6de5900d2eeefff703961224ded1fd8a4f0 in / 
# Mon, 09 Oct 2017 21:41:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:08:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:09:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:83b1be493c5443d6106171cbdb285bcd9dbfdcc8ed8725c1f9a6ab669443030b`  
		Last Modified: Mon, 09 Oct 2017 21:48:03 GMT  
		Size: 44.2 MB (44197764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e5035c7c5b5a56f978ba924fb09126904039f0f080027b23bf07b27e3eaf57`  
		Last Modified: Mon, 09 Oct 2017 22:29:46 GMT  
		Size: 7.6 MB (7565175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800aea9cd3a671383469fc5e66d28a96401f0bb1db52d6c50476b4840d157261`  
		Last Modified: Fri, 03 Nov 2017 00:26:32 GMT  
		Size: 8.9 MB (8934801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6d406e551111c822ba047d8959d2c1115e01915676427693f2f3af854ac797`  
		Last Modified: Fri, 03 Nov 2017 00:26:57 GMT  
		Size: 45.7 MB (45720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:02124b40099a775352f907e49c8b710f1e04d18ee8e7f77bf566de3f5d03c703
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107986678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71edf5fa2cc42dc8842919ed10352a6e180cc369d2072c973b813eafb00cb292`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:21 GMT
ADD file:8e748955d241f3105855e5231d2d45912b276a952142c9d87a952b4cc2d3ec2b in / 
# Mon, 09 Oct 2017 21:42:22 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:25:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:26:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32d5116850be76972a94e0a525163639f772bf28592ed74b86c6591abb3d5f17`  
		Last Modified: Mon, 09 Oct 2017 21:50:42 GMT  
		Size: 45.3 MB (45287334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f106bcb651e760220a41dbf62ebf97c6ad96d8bd709325126df2b735ddd6300`  
		Last Modified: Mon, 09 Oct 2017 23:25:50 GMT  
		Size: 7.7 MB (7719695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4645c44a6261623178da74ddf4ab5185326e3fc2f8b6021756deb0b7fd55c328`  
		Last Modified: Mon, 09 Oct 2017 23:25:50 GMT  
		Size: 9.0 MB (9013112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb44fceae539ae5166a764864386e925f67666a15e1deaef001e85bc4cd542c2`  
		Last Modified: Mon, 09 Oct 2017 23:26:22 GMT  
		Size: 46.0 MB (45966537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3a1c6c7c8714b2d58b2aa1e0fabcd5fd5c62a66b45f149866e071c04c7643678
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118162151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ea665c30e1d5f79ea57f5a07ce0a55ae6b88d13b234403826d5cc7f0ab668d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:52 GMT
ADD file:59ad2d5327b88c3c6218734bfb8511728d73895b7a3a36e4144aa8369dd14e0c in / 
# Mon, 09 Oct 2017 21:41:52 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:13:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:14:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b34134ea236e04b8a5bddde6d9e9fb629795f52a7d9a6547ab9a447d4a48e4a8`  
		Last Modified: Mon, 09 Oct 2017 21:47:26 GMT  
		Size: 48.4 MB (48351703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625f365c9bd980a38619c609c0167d948e051b484d17a4f760683b552e3e853c`  
		Last Modified: Mon, 09 Oct 2017 23:31:13 GMT  
		Size: 8.5 MB (8522393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3473eda8a25289c8a72a8c7468c24815bff79c43eb3693cecbe5a3e11d38e8f`  
		Last Modified: Fri, 03 Nov 2017 00:07:50 GMT  
		Size: 9.8 MB (9805482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4b859707f4045c3e7b44bca431a254e65aa5ca726cd1c1e0ed9eb69a4fd3d8`  
		Last Modified: Fri, 03 Nov 2017 00:08:16 GMT  
		Size: 51.5 MB (51482573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a22779b5b0f012c5d3b797c7b2bdd196ab588fc22d597b93fe099578dce35b12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116546422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72fa511cd2138a5385f3a33cdb6a174f0f976becea55acb22e4427eb3012aa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:957f7bbfc5ce84166d318fbb0023280452c7892ea997b8980e3c0ac7edd4de74 in / 
# Mon, 09 Oct 2017 21:42:18 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:03:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0796f6395f48ad88301fc7f12668dd1e1d3a6089ac952bdfe2841294a185a267`  
		Last Modified: Mon, 09 Oct 2017 21:48:03 GMT  
		Size: 48.5 MB (48486033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c7533dea6bc2f039e722b0ca924e7db1d466e236fcf422368dbfd38466ced7`  
		Last Modified: Tue, 10 Oct 2017 00:51:51 GMT  
		Size: 8.0 MB (7978705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e02121847325db11b114737d252f6111d91cc3089391b408644d4795304752`  
		Last Modified: Thu, 02 Nov 2017 17:46:16 GMT  
		Size: 9.7 MB (9742245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6971705a10983835e09c9741c0a0c65df4afbc1f0209141fc31dc380066ab0c`  
		Last Modified: Thu, 02 Nov 2017 17:46:47 GMT  
		Size: 50.3 MB (50339439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2fd44efce480a4d06d6b7f98a203fd5db9b51298b3b83baad98c41cecaa20dab
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112620123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949d3ffe12f6048ce77b073599d418fdaa2cf9caffa778286b4a0bf30630ba31`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:58 GMT
ADD file:f5cd9700bdff68908fb00b754407889252d920305d09cec78811374584fb8695 in / 
# Mon, 09 Oct 2017 21:41:58 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:37:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c82a15eb88f9d3cde6dc5abe5948ddc69e6639bb7c370656899f7804a5883473`  
		Last Modified: Mon, 09 Oct 2017 21:45:56 GMT  
		Size: 47.3 MB (47271622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f871d0e05f9ae9309b5810a8ebeb36a7e7809262960f18746c829c4b34d4dde0`  
		Last Modified: Mon, 09 Oct 2017 22:18:43 GMT  
		Size: 8.1 MB (8093185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeb0eaa0391aca08e2533ef4b49948e6a3ed20bf8395aa87b4b36146ca8348f`  
		Last Modified: Thu, 02 Nov 2017 16:53:07 GMT  
		Size: 9.5 MB (9477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64f44dd71780d02b64ff45e34cd5eb101de65c9f9c1b2810824652f6d96700d`  
		Last Modified: Thu, 02 Nov 2017 16:53:25 GMT  
		Size: 47.8 MB (47777597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
