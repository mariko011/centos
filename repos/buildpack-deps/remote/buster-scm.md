## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:09a4692d46c505af568c4f3cede844e16579dad30623c13a1dd4a266efb09960
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
$ docker pull buildpack-deps@sha256:a107ce300b1b782103497996d7291a6f3bc304b50c7916e643f084bc5ed21398
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114256957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6845860ec971d807ade0a6773b908bee901e2d41a1f635f3614db5bfe9d3d368`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:40:39 GMT
ADD file:5acb415d8aef071824037168ffd780c0156d7461794616d021f6dc513df447c2 in / 
# Tue, 12 Dec 2017 01:40:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:45:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc20a3251af543b53fcd0a7105c798d682c3081d6517d9a4dfc2c260260685f2`  
		Last Modified: Tue, 12 Dec 2017 01:47:10 GMT  
		Size: 48.3 MB (48257859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8820deddd272aaeef8e1552070bf3101f262b9952e04cc1c07c8d8ba30deeeb5`  
		Last Modified: Tue, 12 Dec 2017 07:58:48 GMT  
		Size: 8.6 MB (8636427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f9454d43e84a167109a1afb888ad9b0fd05eda54323cb60ee33284f622151`  
		Last Modified: Tue, 12 Dec 2017 07:58:47 GMT  
		Size: 9.0 MB (8973091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4705a8a850a1cdce6ebb3f77da83288251ce88aa14768220c0d3591d775ba70`  
		Last Modified: Tue, 12 Dec 2017 07:59:14 GMT  
		Size: 48.4 MB (48389580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:5b262d43d5c6777aa8737c7969e9fd76fef39f0e284965a48b042bf8d8db534d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109440691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab894bd3dfbe79f4f031879f46650c2ad24abe4f2acd33b9044566e854b1955`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 20:56:12 GMT
ADD file:3fb7c9bcca661b6b70a0fc99d9641ddd00fbc31521bc93691d7e5c58f261f34a in / 
# Tue, 12 Dec 2017 20:56:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:47:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 22:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c023cd017405e1bc808e43f24f4fc346e58fe40603d817ccd61e2f0b772a3068`  
		Last Modified: Tue, 12 Dec 2017 21:05:51 GMT  
		Size: 46.7 MB (46698313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5e768d0716216395dbe99a7613e04897edd033e011b7b98aefae10ccffc3e2`  
		Last Modified: Tue, 12 Dec 2017 23:05:13 GMT  
		Size: 7.8 MB (7807857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cca15772b372ec531a21e24ed2e9597415bd7d05ea16499bffdc3d788e11a0e`  
		Last Modified: Tue, 12 Dec 2017 23:05:13 GMT  
		Size: 8.7 MB (8718098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aab435d6cb6fa128f12740d8f7a408d1d8c659edc6d55358114188ba6ad625b`  
		Last Modified: Tue, 12 Dec 2017 23:05:41 GMT  
		Size: 46.2 MB (46216423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e3dd8ad65050f823543c01e5d3ea2297ff4da4dd08e4820418638b0099cacc20
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105062517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7b117eb40e13e52d577c28916c550c9859aca4d5308e81f3336d31e2ab1591`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:26:01 GMT
ADD file:824e862a07b0c06c54a604fb6dfcf3e40ec708d095afc669926cf489817eb376 in / 
# Tue, 12 Dec 2017 13:26:02 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:09:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:09:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 14:10:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:45f200fb8a454e2cd16c63f4443a50e3a0279e0cbec03ad2ee1e42c08a29416d`  
		Last Modified: Tue, 12 Dec 2017 13:37:53 GMT  
		Size: 44.7 MB (44665462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fdc739f042d2e47979f7375c85991c24b3906d6597d51c51006c97a2340ec9`  
		Last Modified: Tue, 12 Dec 2017 14:28:36 GMT  
		Size: 7.5 MB (7533850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9470041f149bb9c29052f1e1b230b317768da3c3a25e81aa499e94b9c0fec016`  
		Last Modified: Tue, 12 Dec 2017 14:28:36 GMT  
		Size: 8.4 MB (8437647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95a3527401e1f19eb6e0b077de878d86f12cd49445e4bc0ef0ac65728f0d8c3`  
		Last Modified: Tue, 12 Dec 2017 14:29:03 GMT  
		Size: 44.4 MB (44425558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0607c7b034f16302d078532d3635969e1c3f6b712772c9f88c2161475c307848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110172846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d079d17fbd050a503468eff4fdc546ead7ee6bf1871c8e169fcb1b54c7d019a`
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
# Fri, 03 Nov 2017 09:41:57 GMT
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
	-	`sha256:8de3d86080d410e7206286488b763b78894c61d4738121c6f826f19d69fed682`  
		Last Modified: Fri, 03 Nov 2017 10:45:11 GMT  
		Size: 9.2 MB (9222014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa31bad56567537a9138970d7ba05049088a018370f077ffb38f980ddc1ce23`  
		Last Modified: Fri, 03 Nov 2017 10:45:47 GMT  
		Size: 47.9 MB (47943803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4762ed9e80bfede97497e28113761fd671f5b189ef2ee7c3a5a710665e278439
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116983169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c6379c22134ff25e9be68d4da20a431eeeba53a2d6d7a3222791fbfd838110`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:18:05 GMT
ADD file:d66af381ee054cbf966302cbd3d7a2951dc76e742573be1a7345383bf03fef7c in / 
# Tue, 12 Dec 2017 14:18:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:39:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:39:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:47a3388a2bf1b5237fd656e8726fb339d410d8819ea3dc0a458ee11e9581c30d`  
		Last Modified: Tue, 12 Dec 2017 14:45:17 GMT  
		Size: 49.1 MB (49075014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f722cddb37de44ec7e5362044987c078671be57b50a57e9322f18c5052a251`  
		Last Modified: Tue, 12 Dec 2017 17:18:53 GMT  
		Size: 8.6 MB (8608346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ea3d09faf48a8ca14d8162b85555e1670cf59ed626850d7681a3e3d0d40068`  
		Last Modified: Tue, 12 Dec 2017 17:18:52 GMT  
		Size: 9.3 MB (9250757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd448c3258721265631109f93293e1e9b7b1ec130bd5a2b2111d66b210452a2`  
		Last Modified: Tue, 12 Dec 2017 17:19:30 GMT  
		Size: 50.0 MB (50049052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:764f1e2c7b0e2ba46ad34013d729dfd77d1e92ff2ad2a91b5d8bf1855eb0220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117881929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d316233886a679e7099e728f405e2da829b28069ebda3e8b0461a0b179cd21d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:24 GMT
ADD file:f548d484daf036901c05a4bb640bf30fb33281d3f6e6ac49515f9834e0124ebd in / 
# Tue, 12 Dec 2017 01:32:26 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:31:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 02:33:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5ed883c7848b37af1d06533289fca465bd0dac9220f08997ffd5b3e972b78428`  
		Last Modified: Tue, 12 Dec 2017 01:37:28 GMT  
		Size: 49.5 MB (49470433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a246f75881e5b8a04f5f114ad7c21956854cb97c10b218a233d9d1947f2a39c8`  
		Last Modified: Tue, 12 Dec 2017 03:51:30 GMT  
		Size: 8.2 MB (8206737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81e8a192104eb83fe3639612d4bc8d65f9d90789ba2e6137077c8f542febff8`  
		Last Modified: Tue, 12 Dec 2017 03:51:30 GMT  
		Size: 9.2 MB (9192172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a8cfb0d41d736436310386bfec48ade3dc86dce9e8d6565fa4dd9e1eba1fde`  
		Last Modified: Tue, 12 Dec 2017 03:51:58 GMT  
		Size: 51.0 MB (51012587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:bb56401bdb8cf403acbe3ace14c24157629b970e3ca4e53f2942a93e73513468
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113424379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d833669c12d6c01cc44a6e0268db63974c6040dbae0d6531f6f47fa3b5d48e9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:03 GMT
ADD file:e0c885b58cad703e6e38321061addddba78a8034c9570a8b377dd1f25807650a in / 
# Tue, 12 Dec 2017 06:22:04 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:49:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:49:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:50:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a467b96f74dfa80402dcbacf97840b92e0788a086fe92cc4b75eed02e0282726`  
		Last Modified: Tue, 12 Dec 2017 06:27:30 GMT  
		Size: 48.0 MB (47952308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f53be5515a62809ead0a4216d7130db17153189f6e4a106ecb6f214d2e029ba`  
		Last Modified: Tue, 12 Dec 2017 07:01:31 GMT  
		Size: 8.2 MB (8168663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c324424f59e99f3685e95e648c108b4279799ba219f168a85679789281e949c6`  
		Last Modified: Tue, 12 Dec 2017 07:01:29 GMT  
		Size: 8.9 MB (8949372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06dfcce0c42e061ae62661bdad37d6c6dbafff85edaffbf3be32614056ba180b`  
		Last Modified: Tue, 12 Dec 2017 07:01:49 GMT  
		Size: 48.4 MB (48354036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
