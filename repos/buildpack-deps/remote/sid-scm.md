## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:5c855d025779d4cece46ed9b11de2ac2e63d3d545049958c31d27aa3c872fcd5
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
$ docker pull buildpack-deps@sha256:4a614738018a57dd71d1a8e7304c3fbbed5b906e5f52f7793f1074c4a3d3441c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115568557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ac4f20097e3c31490daf04de1b41347db01eb4a0058a81ab4ca728fe19a8a7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:20 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Wed, 13 Sep 2017 08:41:21 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:34:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477e069deac996dbb6609e7d33fd195256893b13fbc8d2ca163ef3219075241a`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 8.6 MB (8550082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2369104e1f1899f031560bdc2ba86735241f6295cbd404f4f63ac0ff96fdd43`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 9.8 MB (9842477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f49f83dfe2b0402c8bfe38a8e85880d872f9703f4b774a9b9a2a59f767f1a3c`  
		Last Modified: Wed, 13 Sep 2017 12:55:55 GMT  
		Size: 49.4 MB (49422139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f21b55223fbf909b1e7063881f48825c90c8f76f759e7590ad2c04a9fcbe1299
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111098643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7369b09cc293939def5017c0f680c16ca223fe822383d54f8eebc78ba9fea770`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:25:35 GMT
ADD file:fb7d9ba902b3a4eacc8db6bb7743fe86476c3f26a619da43c04ee6ad3d633f68 in / 
# Wed, 27 Sep 2017 14:25:35 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:50:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:51:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d447b204d1715dbc31a6b6b7599eea164973e66a347eddd3dfbbf065b3c842b5`  
		Last Modified: Wed, 27 Sep 2017 14:30:12 GMT  
		Size: 46.2 MB (46234099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6bff4083b857b6654669d0d3ba67d1845858131a1c4654df9207c1b5b06b30`  
		Last Modified: Wed, 27 Sep 2017 15:03:08 GMT  
		Size: 7.7 MB (7736243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9f9aba6421d25c366e18571370b8ef9fe16b440cc0e93555f9095c42ca9f6`  
		Last Modified: Wed, 27 Sep 2017 15:03:08 GMT  
		Size: 9.6 MB (9594665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5512aca249c1ba2147db53870819d032051c89c971c5d9c0fd2fb5f66164f741`  
		Last Modified: Wed, 27 Sep 2017 15:03:29 GMT  
		Size: 47.5 MB (47533636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:196b33dbd6400b8689f64efe1969338618c50b90caad5389802b21b74c6e3463
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.4 MB (107443636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa0bf6421c1b69db8db01693cc6bf3b3c25c924b92927c774f67175f480ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:13:47 GMT
ADD file:ff855341f2178170e860c70b1fd4438ad7df8c19fa9f4cb32b259cbcf6f641fa in / 
# Wed, 27 Sep 2017 04:13:47 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:42:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:243b557ca4232dfba33281e059dc489793fb140673f16a68fb1ec9b67034c773`  
		Last Modified: Wed, 27 Sep 2017 04:19:16 GMT  
		Size: 44.8 MB (44754088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7871f6c42587c891052ac0c5ea649857d2180df74e8ce2a4dee1981126114e6e`  
		Last Modified: Wed, 27 Sep 2017 04:58:40 GMT  
		Size: 7.6 MB (7566063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d96cea1b66be24cd19fd3908ad2a5b8f5d8569a9585bf40ee80434bcf6704`  
		Last Modified: Wed, 27 Sep 2017 04:58:39 GMT  
		Size: 9.4 MB (9352575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27038063d9e3585e0a3d89099efa80ddb8e2a9c3cb729ce9b8b07727ced1b549`  
		Last Modified: Wed, 27 Sep 2017 04:58:59 GMT  
		Size: 45.8 MB (45770910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:44784da89beafd3154b20aed5eee1a7a62400c19230be40bb71de1eb8f5ec629
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110382004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839142d6100a3702158c1caf122c6496e2bdda537f351b9cb04542e8f30e634d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:26:13 GMT
ADD file:07d58ee9d0f6dd60b5363a18ab4766f32f94d4aaed3a1d6d4ff5a2d274f030c2 in / 
# Fri, 08 Sep 2017 17:26:15 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:43:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 09:41:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:40921cc3e39e34244dca67570f52afe382187c080dd1ffbb5a684332f50dfb0b`  
		Last Modified: Fri, 08 Sep 2017 17:38:43 GMT  
		Size: 45.5 MB (45456006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25753b426e93de8898bc86b845e4a2c54f0e51ff39207233cefcb9698bd8a0`  
		Last Modified: Thu, 14 Sep 2017 22:02:58 GMT  
		Size: 7.7 MB (7718568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a516f99a504113fb527ca9ce47078516bce9217fa901fec580920345e89ce`  
		Last Modified: Thu, 14 Sep 2017 22:02:58 GMT  
		Size: 9.6 MB (9564313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2133409062eaded5871a9010d756383d18df2f7167b1d99c7efa3b3b4a22742`  
		Last Modified: Thu, 14 Sep 2017 22:03:30 GMT  
		Size: 47.6 MB (47643117 bytes)  
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
$ docker pull buildpack-deps@sha256:db873a2c5166d5435a67b1180090631569b1c4074c3c54ad3e14fea01887e607
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118442988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da1a3dce507e59c70f5719e17bb0bbf2e5567d19587b8b88a767d6b7abf2ba0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:33:20 GMT
ADD file:819bded9731f1d65e9cc04b2c7f43a197ec4be8692da4708af0f87e7426351f3 in / 
# Fri, 08 Sep 2017 00:33:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:06:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:06:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 16:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2fab6b5610875e8a6c33bc4d56c825f356289185b055082d589665968ef0900c`  
		Last Modified: Fri, 08 Sep 2017 00:38:59 GMT  
		Size: 48.4 MB (48412021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7c2d0fb79a1104e22147e2364a797daa7dd139ad67e5b62e62304653e783a6`  
		Last Modified: Thu, 14 Sep 2017 22:22:30 GMT  
		Size: 8.0 MB (7976467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d65a92b732b401ccd8c040a8e7970e1019757e70e1e5ff31fedde7766b8e40`  
		Last Modified: Thu, 14 Sep 2017 22:22:30 GMT  
		Size: 10.1 MB (10071564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64052f4bf7d50027dafc55c6b08408ee69ce6c518a24f7ae01bf70c3b8157280`  
		Last Modified: Thu, 14 Sep 2017 22:22:58 GMT  
		Size: 52.0 MB (51982936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:38116169c567b8c4558cbb8d04a193bec31b306352816bcb62b14839b96c6746
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114949390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6a07a5aa6bf556ea8d321c012e96a197bed89c75a138a19f523bdf55110b29`
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
# Wed, 13 Sep 2017 16:38:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1d7f8982b2bac551baf1926040249281eeed1bc98c1b9269c1ee4feca73cbc3d`  
		Last Modified: Wed, 13 Sep 2017 16:41:14 GMT  
		Size: 49.5 MB (49525089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
