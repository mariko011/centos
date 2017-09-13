## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:2655c74969e6dfc3ac150dfa6725e8ad9fbb29ef116a4f8a6aa83f3c7c5e063d
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5899da4b57bdd326168f977fb5a8ec3a550fc213c7f8011662311faf1d370c27
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113398254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bfb5f4c5ef766a221acaa79bb0beaed43329007b82792849b46d8d7ff27517d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:23 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Thu, 07 Sep 2017 23:06:24 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:23:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 18:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9efadb6a07d3fbd922cad53d5ee70b22e727a5ad6d0d84e869960017813c8e`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 8.5 MB (8549602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef77099728632ff4471bbbc7e3d5541ce4859d6061e74da83f63b89b23aa1d43`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 9.6 MB (9619154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2305ab8ee4e81a6758bde516da3259860d8ff86dd2fa011c3786170f393f7198`  
		Last Modified: Tue, 12 Sep 2017 18:17:57 GMT  
		Size: 47.5 MB (47475639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c7dbf758bdff316588b74fb005d1897714cb118c1a3e7b3fc3558405aac72346
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113603411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052974febfa93e5b92291a0a65081c4881af83006c0483e5ab09c3024d7b3bb9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:01:06 GMT
ADD file:fb7d9ba902b3a4eacc8db6bb7743fe86476c3f26a619da43c04ee6ad3d633f68 in / 
# Fri, 08 Sep 2017 20:01:07 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:56:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:58:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 03:08:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e619709a1c2b4be0af59108dd28272d60df90f82d46263209512724eb3c5ce55`  
		Last Modified: Fri, 08 Sep 2017 20:17:15 GMT  
		Size: 46.2 MB (46232515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7918b0c2db96bff8cd7e0da40810471608f4097ed0695daa796eb6b29b593a`  
		Last Modified: Tue, 12 Sep 2017 04:16:30 GMT  
		Size: 7.7 MB (7734636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5284519d599712da3e4289d1bc2827aed11bdb80ad761900c1634843c69d774`  
		Last Modified: Tue, 12 Sep 2017 04:16:29 GMT  
		Size: 9.6 MB (9574802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af102f1535dbf1267af8cf4b6ba672f2ab9dd32b62af751023a7be0f89b8fb14`  
		Last Modified: Tue, 12 Sep 2017 04:17:24 GMT  
		Size: 50.1 MB (50061458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cf3ecf078eff1303cc18f6bf3e2c43733dad2b25739b2a868eab7552bbebdab9
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107534949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c23cc4c345f28908692b50705a83d18d3d251e80c2a4855dc7d6c0093350d8a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:53:48 GMT
ADD file:7f60c30de028a27a17d6295a846736ffbcefda0d0be7010ae16b1bff6b696676 in / 
# Tue, 25 Jul 2017 12:53:50 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:24:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:25:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:29:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:30bcf7171e696bc59898b2067160c61b93616653ada7a607e11fbada605b61ba`  
		Last Modified: Tue, 25 Jul 2017 13:10:05 GMT  
		Size: 44.9 MB (44941605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6100e09857b8354fef65dbf89861b527016bbed2d7ed48a644d31a3cb8ac812c`  
		Last Modified: Fri, 11 Aug 2017 18:51:31 GMT  
		Size: 7.6 MB (7556138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda602ec49502ba5133ebc4c97e7f5808ee1eb4328783ede4e0cf1a40fc10054`  
		Last Modified: Fri, 11 Aug 2017 18:51:28 GMT  
		Size: 4.2 MB (4222067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59a5b1aa87933d5830c4e0ea800b6b0086ece5cd34d4658c83a12b2f63a5df6`  
		Last Modified: Fri, 11 Aug 2017 18:52:18 GMT  
		Size: 50.8 MB (50815139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e92ff1345e0ff850463f38ce59b293ebdb747eb7af15a36c891008996288a73b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107212210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd96ed4e355dcb91489a2e7548f773f4664f299e16ebb25b391d9d068dab355`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:23:45 GMT
ADD file:9317aca1096f5b4dd40c6e6341bb846fe7dff31a2229c363343fe76d70acd4de in / 
# Mon, 24 Jul 2017 17:23:46 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:08:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:08:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:10:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:be32d72e9988cc03c70e3de89ab4318721b54bb6ef8c93f7b042b75f86ce16f3`  
		Last Modified: Mon, 24 Jul 2017 17:28:59 GMT  
		Size: 46.0 MB (45992125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307c6e75a1bce5cef5ecc23f9be5914c5adf0a4055d70c1dbe091989194d5a70`  
		Last Modified: Mon, 24 Jul 2017 18:30:13 GMT  
		Size: 7.7 MB (7685408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ab5b47544c16558ee7ce8dd26b7d10cfa66b1f9ffee8910fa2d6a2fd82aacb`  
		Last Modified: Mon, 24 Jul 2017 18:30:12 GMT  
		Size: 4.4 MB (4394652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73be410400876c70743523c651243a53eef5cd1b0bbcadd6d2b4977470eb525d`  
		Last Modified: Mon, 24 Jul 2017 18:30:40 GMT  
		Size: 49.1 MB (49140025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:26e317ddd77a168354f3b8921f52b4c0831413dbfa3f3ce46f40673d786519ff
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118429584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d8ee6eb5450597daef26caf7df6829dd5b4ebfbc66e157d3f9a88ad6465891e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:03 GMT
ADD file:e914d804cd8b6c794db616b0d7ff276be932d6365650fc16027e8f884ff5751a in / 
# Fri, 08 Sep 2017 13:19:03 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:58:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc453eea7829cd3ac47b9e8510e4c25eef45f737546dec6b7dc2cacc93f2f875`  
		Last Modified: Fri, 08 Sep 2017 13:25:22 GMT  
		Size: 48.5 MB (48547718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11291bdfca353bac8763ab9feed3b42160962468af3c78227e6439d11e9a7277`  
		Last Modified: Sat, 09 Sep 2017 14:01:11 GMT  
		Size: 8.5 MB (8520228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d531e5d41a15891ee1491b7823261943ad527fdefe9166c5941f7fd96917c27`  
		Last Modified: Sat, 09 Sep 2017 14:01:11 GMT  
		Size: 10.1 MB (10147249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1dfc76b4817c0eab955ff1e26d9b649e9426d3c9a56791c73e2ac77157cecf`  
		Last Modified: Tue, 12 Sep 2017 23:20:55 GMT  
		Size: 51.2 MB (51214389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b6907bc23824e59132231a6fc3c4cccba370807e81a2e600d8753ad3215a7eaa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112401354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e78e915c3b33985543134db561eb26f789f04010b61a48114505701dd44e73`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:15 GMT
ADD file:f26611298831c7e479de36cdf344930971e612e49fec491aaef9d0d95eeab2e7 in / 
# Tue, 25 Jul 2017 00:32:15 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:02:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:02:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:03:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b43b74b0f7fb58d6749537ddc76ae40e4b744774d9b8fdc7f5207e86121b2c18`  
		Last Modified: Tue, 25 Jul 2017 00:36:50 GMT  
		Size: 48.5 MB (48539165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08da7a72cf12341bb6aa3dbed6285b5ba349ddb3975deea1ccccd477b83d878e`  
		Last Modified: Tue, 25 Jul 2017 01:13:14 GMT  
		Size: 7.9 MB (7886884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6ac2ac627dc0026d7b015bec85d8929e4cb2a27709dd388c2348abadb82be`  
		Last Modified: Tue, 25 Jul 2017 01:13:10 GMT  
		Size: 4.6 MB (4600177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d52cafdba23a430f30955f973b467553c723105be2988d09106f96159c94055`  
		Last Modified: Tue, 25 Jul 2017 01:13:26 GMT  
		Size: 51.4 MB (51375128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:48e0b073bbe157d05e1552561a6bb9286faeda4897ec12f2d9f032939ecded28
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117622968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f870fce43ba99fb0195311837ee3c14c3ab6b06e0c1f44dc9cc016feb0b40c12`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:21 GMT
ADD file:21fffbf13a9dfb5037f5c17e01b497b8a6e81448b0258d6d12a130e07a751566 in / 
# Fri, 08 Sep 2017 05:22:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:50:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:35:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1c56ecd59b527c3f7815101ee47b3e1e3bbf73f1ecef57fcb4d9d726a847f94d`  
		Last Modified: Fri, 08 Sep 2017 05:25:49 GMT  
		Size: 47.5 MB (47521100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f321e426dfa3e4af576343844945e27cd24e95d2e83dd7fc364d32e51a80e4c1`  
		Last Modified: Fri, 08 Sep 2017 16:42:40 GMT  
		Size: 8.1 MB (8092551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aefe31130745c9dd202ee0131441ad33e364a0355feff851a41616e91640df`  
		Last Modified: Fri, 08 Sep 2017 16:42:40 GMT  
		Size: 9.8 MB (9810650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9784c1ee235b09794e717d6a2ffbb370ee82eae504a0ba0ba407524f0480abe6`  
		Last Modified: Fri, 08 Sep 2017 16:42:58 GMT  
		Size: 52.2 MB (52198667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
