## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:e2e27df502729b9f6fec57ef2f14bb4f389359eb252c5d16a72d580478381856
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
$ docker pull buildpack-deps@sha256:040bbb09896f71e782cf95cafcd02257cf2990dc87c8dd58aff7220957fd606f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.6 MB (65647012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3c825a62fd4f3a59c9136ac19269c02ceefd02711096259041cd6731ad3844`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:19:49 GMT
ADD file:2ad6832b35851b2a96b581ef8ed45d25ac9de93d41289c5560c271fed9ba920e in / 
# Sat, 04 Nov 2017 05:19:49 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:22:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:85800cfdb88adf2f09c8fa7b9007830b06b159216512a8073639d55ef65bef2d`  
		Last Modified: Mon, 09 Oct 2017 21:35:49 GMT  
		Size: 47.5 MB (47527292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfd7ab6b991f19c3a2ba2a3b7e0932aea9b99d87ddf3be7ebe5f0fd5771b227`  
		Last Modified: Sat, 04 Nov 2017 15:42:45 GMT  
		Size: 8.6 MB (8607048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b2a69c63e23f56af94778fe5c620eead6d228bc16d219bf88b027875ec4cdc`  
		Last Modified: Sat, 04 Nov 2017 15:42:45 GMT  
		Size: 9.5 MB (9512672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:14cb0576f8115d4ba351de5b05988be11ce706f14298c396f6b74e043a90261f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62977967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d00aad523009930fad52541f4a28648eed852c8d192881dc1a1c318a310ca7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:42 GMT
ADD file:c36a09a9d10e3a94cb120b7379c90035a914005754376b50b29120b6d07e8954 in / 
# Mon, 09 Oct 2017 21:41:42 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:45:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
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
	-	`sha256:819d61d3994718f9c5bd4dd5c2354bc471d8c884675587737204cdf3eef6451a`  
		Last Modified: Fri, 03 Nov 2017 07:58:26 GMT  
		Size: 9.2 MB (9232259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5ecd4beff36a7801b9c74115fb1e211db3c92dd367f782b34bb69229bba57903
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60697740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e6d50095849a97daf0fe61bff4db0d0b3c08666db583c215063c847da9bb93`
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

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c4a73d09b52287c5c0a21c200cf9fe633771612b05b253962f08d013a6fe9598
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62229043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570b604675a969ad97d5bc046fbbf5de7a9ec3d5a2a433a41ce13edcc5abdd21`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:21 GMT
ADD file:8e748955d241f3105855e5231d2d45912b276a952142c9d87a952b4cc2d3ec2b in / 
# Mon, 09 Oct 2017 21:42:22 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:40:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
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
	-	`sha256:8de3d86080d410e7206286488b763b78894c61d4738121c6f826f19d69fed682`  
		Last Modified: Fri, 03 Nov 2017 10:45:11 GMT  
		Size: 9.2 MB (9222014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:40a55f047f8358d11e75ce5d5a86cddb3dea6382bb399d9128709739daf237fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66679578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238b175dc76a8d05a0357b0c6c77c8c80d5367608dcb503fd45c71abede52123`
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

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6feed2911fcfaf0ccdba79b4e93d923bd5f6528117a90efae3dc9b7493884255
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66206983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d088c05ed4576223ec066b8d117239310d41dbaeeb2dbac864cc44c286c985`
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

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3dc6ca052e48b579baeb68cf260b3f2cd679b6638ac517d5a685493a6066789e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64842526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e6e0586303b35aaf764a5a8a4001d0b3e8555cbd1ca267acfcc05a32ad33e7`
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
