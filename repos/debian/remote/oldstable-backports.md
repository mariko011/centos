## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:02ade7ea5f6e7d274ac9872401a6613bd0ddeb3c9f3bb60c0f12ca0576e343a8
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

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:209bd2e214d714e9b5f5940e170b5aef84addf99469f4cfc9145b1a19ea8fd4f
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52595751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090f483a35feed0cf451065b876d75a13f3183398b0d10357f403d601794e40b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:49 GMT
ADD file:f42b690044a707ed2931bc839c825cabb82ae3411b2274c5796d888e3bf83623 in / 
# Thu, 07 Sep 2017 23:05:49 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:05:55 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4a41389e39469e7a1197a974704e0628f1deb343baaaf868853391da46f072fe`  
		Last Modified: Thu, 07 Sep 2017 23:13:22 GMT  
		Size: 52.6 MB (52595533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c87c17c26c3a141c2463ada112e7f65cb4bbaa9e6bd67feacf89d350f982b22`  
		Last Modified: Thu, 07 Sep 2017 23:13:47 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:fe1cdfe9dd3ed12df99ea893b3892114e7d0a714abb7e28e6b78fa01cfdc1b13
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50877713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f39950fb1609f3e73b979a431dd36bd8ed88e001effbeeb5b7e74322eb4e64c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 19:59:29 GMT
ADD file:b099d470dae94ac16689922c502ab3b607ba014a43e09188090c6ffcbb9008f5 in / 
# Fri, 08 Sep 2017 19:59:31 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:59:59 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c0f1ff2e69172fc3e2bdce40dc9a858b87453b152282078d304afe336d9b9f19`  
		Last Modified: Fri, 08 Sep 2017 20:15:29 GMT  
		Size: 50.9 MB (50877487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c90ec225970992f68030abd6fd4b9a21ccc022829ee5f6966b0261f4e0a8e7a`  
		Last Modified: Fri, 08 Sep 2017 20:15:55 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:932965d993fcfde9d204c9d518b14b35837452462f44a26ff1fb327406f192ba
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48682290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f589e67089e8a638b1df20561030d8e95c6b8e449855dcd7b05b47d2ae578e08`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:42:06 GMT
ADD file:4ac35bf49b93e3a5c126c80ee1528aea36711ae2695db9a4bf7b623ad00dd4ca in / 
# Sat, 09 Sep 2017 01:42:08 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:42:16 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:aa1c38ad34644fb7feb1149abb5e0e268d81980c3cbe322f9498dc78997a5188`  
		Last Modified: Sat, 09 Sep 2017 01:53:38 GMT  
		Size: 48.7 MB (48682064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4953199217e0ba8adba9a523414909798890f3a4fa2df4ead719c3c81c985ab6`  
		Last Modified: Sat, 09 Sep 2017 01:53:55 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:73321fb0980647f70684acc78e3ebaf4512bdaaf65d54bbea601cedcc3a8cf30
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49929669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5610adb344f46b2a7791e7051c77785bc83d06c7066bf49ee4cc39fee613164`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:57 GMT
ADD file:67a1368f22f04d1935d1babf4560345d0bb55ab2964c13654d37bc2de23b695d in / 
# Fri, 08 Sep 2017 17:24:59 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:25:10 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:690e82bcc7702101ad3ad64fae113caf7ac1d85f530129b8bb56e154b4ccd589`  
		Last Modified: Fri, 08 Sep 2017 17:37:02 GMT  
		Size: 49.9 MB (49929443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9a5635770b34bead14f434d4fb301575a75a45b25a0b57598a9325e55886d0`  
		Last Modified: Fri, 08 Sep 2017 17:37:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:becc39d3f13c4d30c1bd9ba852b2b4fafdac11d1fc49c11ab15422ec5ddbe9b9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52773367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f39d2831328561bb3cfba5a6d101486500cf6ed2f9e60f3c568b61fa3c4992e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:39 GMT
ADD file:efb3e76bd01909b826c036d05bc8e05c5de37d686ec0010fa755a1c8ac2cfda8 in / 
# Fri, 08 Sep 2017 13:18:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:18:43 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e6413c9f4324a9331a92916aa0bf0544212e3f4e71273ecc5055375a5d35c30e`  
		Last Modified: Fri, 08 Sep 2017 13:24:29 GMT  
		Size: 52.8 MB (52773143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf7224032721534d3ed6a39c6302215b240983d0328cd0d4f52a07c1eb394b2`  
		Last Modified: Fri, 08 Sep 2017 13:24:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:936cd455fe06b04fb31d8c3e26dfe7d11c7099beda1544070b8f30f9e69e943c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51809798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec7eee8e5fbdf7434131e533f50e6b2bebcc58c7a6282a044d4c9bcdd753cd2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:52 GMT
ADD file:5f0613c6611f6a84c8cdee4016be52ff6af10ac20ec766da33db456ad26424c7 in / 
# Fri, 08 Sep 2017 00:32:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:57 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:344f6efc5cd523d24af8e40c79564f9f765ba997757da3effdc4c0dfe2042b88`  
		Last Modified: Fri, 08 Sep 2017 00:38:03 GMT  
		Size: 51.8 MB (51809572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5603b2f27af77681a389d8cbc3e566f7b7b886faee8995ffc7d3a94296508ac`  
		Last Modified: Fri, 08 Sep 2017 00:38:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:968de366fd866eec1f33f3fd957a7cd413197bf6aa42d2ca2741bc4630a3bf4c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52789031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f805f4176ac465bf09ca91c8c08dd07dee822f497e65b548771192375949b909`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:03 GMT
ADD file:20820d7d09dec97f5a21c4ebeb3bb40d45319e089ab793acfb372698eab9c53e in / 
# Fri, 08 Sep 2017 05:22:04 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:22:06 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d2a499c9254b42bd5340c34b3c6bb1c266e1b41e2d0e9f4fd5beb5a61fec0ad1`  
		Last Modified: Fri, 08 Sep 2017 05:25:20 GMT  
		Size: 52.8 MB (52788807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58eb5320500f8268160ea223a2be6c9e9db8fe181a22fc175f8482287b440672`  
		Last Modified: Fri, 08 Sep 2017 05:25:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
