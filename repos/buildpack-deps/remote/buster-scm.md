## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:34ca2d487d292bf7ef320a17f6a760d3211e451cc30d5ce37e8b256990788948
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
$ docker pull buildpack-deps@sha256:e79033896163073c62b2962bc066f297276216083ddcb819abe36ba12014124c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104494999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817eb1a9698fca5e01094dca7691eb6e7a9ad75f7d15e40110ae9ee4f06dfa1c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:48 GMT
ADD file:914df13f485ca2450fb56b86a878e6de5900d2eeefff703961224ded1fd8a4f0 in / 
# Mon, 09 Oct 2017 21:41:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:15:01 GMT
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
	-	`sha256:01bff86429d06d0fbf0c4fe7b1f9f9bcdb42e2197f153fa9624a1d234aca538e`  
		Last Modified: Mon, 09 Oct 2017 22:29:46 GMT  
		Size: 8.8 MB (8800916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51ab1b15830106a51b1667cbb74f5747e27d38106ebf09ebcb10898f64cb0`  
		Last Modified: Mon, 09 Oct 2017 22:30:07 GMT  
		Size: 43.9 MB (43931144 bytes)  
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
$ docker pull buildpack-deps@sha256:07c3bc1a55ce34e9fc52ccaab4c05326f50ae9a1d8c7f74a923e68a8f2147135
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115758803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31cac88c1005ddf5d08dc83688ecf33e294746e9be4fe7785925ced3adf50a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:52 GMT
ADD file:59ad2d5327b88c3c6218734bfb8511728d73895b7a3a36e4144aa8369dd14e0c in / 
# Mon, 09 Oct 2017 21:41:52 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:48:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:49:38 GMT
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
	-	`sha256:ca677c713ba0d12b06b164a69d2e14d0825087a8f829d8e312ca317e03a400e2`  
		Last Modified: Mon, 09 Oct 2017 23:31:13 GMT  
		Size: 9.6 MB (9553202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a94d5366593b5822bb123ae273a611d959ff5ad15bf914fdb9c8214feb8d9ab`  
		Last Modified: Mon, 09 Oct 2017 23:31:50 GMT  
		Size: 49.3 MB (49331505 bytes)  
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
$ docker pull buildpack-deps@sha256:b3c5d2acd2f7e47aef4fd23ea94d961706de651781c03b06ac298bb5916877b8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112324993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35cb7017ca45bf43a1c08d42099f2c221396af08a810ce7d19bc5de2e9aa6cf1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:58 GMT
ADD file:f5cd9700bdff68908fb00b754407889252d920305d09cec78811374584fb8695 in / 
# Mon, 09 Oct 2017 21:41:58 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:07:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:08:13 GMT
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
	-	`sha256:3a73b601ad1e50f137c6d139236b44574c3e18e66bc6f45dcc44aad17d22996e`  
		Last Modified: Mon, 09 Oct 2017 22:18:44 GMT  
		Size: 9.2 MB (9248189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc66ba3bacd91c3ae6716b7f8ea65670722eb9f689991a8a3f498ea6bdced5`  
		Last Modified: Mon, 09 Oct 2017 22:19:02 GMT  
		Size: 47.7 MB (47711997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
