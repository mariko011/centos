## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:9d63913937ebe32f587b55c383dc30810f4048c5a223aee0ef509785f1e138e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:601c6d10e641328f4d0c671347377489773d3deef33fbfa0a4b34865ae41af6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38110051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a7a8b43df72831d68769eb845c050b19d975bf965b8c4e0a1b67a0bd800aab`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:50 GMT
ADD file:d0211c74db49159a472468fd9561525c8829bc80ad9fee8e2250d2ec3141fed8 in / 
# Tue, 12 Dec 2017 01:41:50 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:41:59 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c8d8f76914b3724c95de164533d58cf5d2753f47559e926fc169728d341c196c`  
		Last Modified: Tue, 12 Dec 2017 01:49:16 GMT  
		Size: 38.1 MB (38109823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c57842a79d41af03dd7c84d48e7a3cba4b73ce13696f2e34e9891c5f054a9c`  
		Last Modified: Tue, 12 Dec 2017 01:49:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:4d231acdbe00a1315108014b210f8627b2ed4d108eedfd0bb5f21df516c570ee
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36942989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73aa42af961db5cb2c791436abf4f52364f85c45fd851b6c8261376c6dca1b4c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:37 GMT
ADD file:a8cf30e2633c0c6596f28caae177b1799dc03f02faffb29c1df6a9b3f4f2660e in / 
# Mon, 09 Oct 2017 21:42:38 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:43 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1282da908a847eaab77730450c3fb27e2389bf3a63c0d58e57cd7d4628bca072`  
		Last Modified: Mon, 09 Oct 2017 21:47:58 GMT  
		Size: 36.9 MB (36942760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5816d9157589f15a1e66471c03be2652a8de321cdc1e01aed158ead22cae5990`  
		Last Modified: Mon, 09 Oct 2017 21:48:09 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:035561a83bb088612682910cd5319e44e06e60df4d7dce79629b1e91f51bb1ff
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35662044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32906eab138836ac68587402865d2fe43f943142dc93b9a4cd28d8472bc63b33`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:28:18 GMT
ADD file:1b754591dd6066d83a1ce20710a8e05a5b3de6e4d62614e1b948eb3472dccee9 in / 
# Tue, 12 Dec 2017 13:28:19 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 13:28:35 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:25b7eb61899e875cc3b897e6aaf595eb97694d0a9c59d4999d5c17b4fc84d035`  
		Last Modified: Tue, 12 Dec 2017 13:40:14 GMT  
		Size: 35.7 MB (35661819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06aac857546988af59c8afdb1034282dc16a16cc7991b8c5df1199b40303106`  
		Last Modified: Tue, 12 Dec 2017 13:40:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:372accc363be0d9d8889b2a7d51f5e518571771b94ba614d0d2ea1b937ec6dd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37433464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b4958a297f39985c3af2e7ab326e3901dfd56aeae29516cd75405a983010ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:43 GMT
ADD file:dd39f56262f1a386c227171b767ace26306ec3cc8e48a0923dc29e85a085be27 in / 
# Mon, 09 Oct 2017 21:42:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:49 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3ad3a35305943c539608316fab0e98904ecf8f76c58f520ca2d64b3c27cb17de`  
		Last Modified: Mon, 09 Oct 2017 21:49:13 GMT  
		Size: 37.4 MB (37433240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172997164e221bfe6ef64f17e3e0ed72ab21e0e4c1c8617a1a0cf1b4640e802a`  
		Last Modified: Mon, 09 Oct 2017 21:49:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
