## `debian:experimental-20171210`

```console
$ docker pull debian@sha256:ad6200b453bcc355e7d1aed249eade26c3a00a58efb3078c280563e6cdcff404
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

### `debian:experimental-20171210` - linux; amd64

```console
$ docker pull debian@sha256:ac0e04c12b91165f27a56c4fca48c5c1e5b83d2c03ef4f3f84e395a336335fab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47562172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ee2674015819cf10e593558824be15a0e1cc3a5ffde0305720f9cd388aae10`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:10 GMT
ADD file:cd10cfea2710a13eb8ef7acf8645a6e3ec7ffa086ce10ea5fbd9e44c3f7d313b in / 
# Sat, 04 Nov 2017 05:27:10 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:27:37 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a843a9241f89d4cc97f5b115e7634c7281cd96222d9fc127ee3d4fa394925957`  
		Last Modified: Mon, 09 Oct 2017 21:43:34 GMT  
		Size: 47.6 MB (47561952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45aa32ca99730e15bf77f615c74c8e4a4a93cab50ab92493a4b714376919745`  
		Last Modified: Sat, 04 Nov 2017 05:33:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20171210` - linux; arm variant v5

```console
$ docker pull debian@sha256:145ecdeadb79bbac303289da21491fa2b5c6779b839f97a4dde7f8345ffe119e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46010343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2997f49b37b1fd0a22fcd4aa26cbe66ea91d28b1e048908b96101e679eb75ca6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:25 GMT
ADD file:d67e3c76cfc6c612c1c14fb90edaa6f6caec4e05c0637f47c5c16e557d264495 in / 
# Mon, 09 Oct 2017 21:45:26 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:46:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:d84ddf07dd91ab60b63c64025945a621068a28dc911b3b10c143643d4531bfee`  
		Last Modified: Mon, 09 Oct 2017 21:51:49 GMT  
		Size: 46.0 MB (46010121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2753afe66db56875620de0a17e2f23e45cd46c302fda9fef0835cd1c76f05a`  
		Last Modified: Mon, 09 Oct 2017 21:52:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20171210` - linux; arm variant v7

```console
$ docker pull debian@sha256:4b52deaaed531e462e4e22b1f7ddfe85add20e41a4418d458bd2c77c5ea6211a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44221377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1539209057488adfb260f528f8321b0c0f26fd0934a3addf14c50032dc0a0cf7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:32 GMT
ADD file:d6888fd31156eb371fe5d0460c834fb8a5b7645b3aed0480e679551488677614 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:47:30 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:0187588608da2478f88cbf09ea780664a65d1f007e5827e913e688f4b6151953`  
		Last Modified: Mon, 09 Oct 2017 21:54:15 GMT  
		Size: 44.2 MB (44221154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20be5ab4271029ed69a12c52039c804386a6c6739eddfdafbc050d935ad30eba`  
		Last Modified: Mon, 09 Oct 2017 21:57:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20171210` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:3bac4145b8475c8b626d636cdfa5a2c32a23e95dda9f082e210f23616f023d49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45334364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d52dae9b01581c213821f884f70af49869c839e33a0e967a1328e3eed211d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:49:16 GMT
ADD file:8913c4ebb9776b13a6b0df6875b6fd3e0b0b866919cf4ecc23e4aafef81a30f7 in / 
# Mon, 09 Oct 2017 21:49:16 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:49:53 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f7e9e36f94fbb786d1e259160f39def2a6fd3b71328b696aa038f08bfa6e7c17`  
		Last Modified: Mon, 09 Oct 2017 22:05:24 GMT  
		Size: 45.3 MB (45334143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3144174655f6822970cf02568914a606d116403c1994166523a2ee013fe6ee6`  
		Last Modified: Mon, 09 Oct 2017 22:06:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20171210` - linux; 386

```console
$ docker pull debian@sha256:d2b09a5e44f883b03401cf880a98aecb00400e5704870e53edc1f79eb89aab1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48397550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9c37401d65ec59a4b394d92d72eaaab43656bdbd906c5cac15f1f43fdcfa40`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:11 GMT
ADD file:a5150b237b5c85216daf9b13ed062a27effcaa798ff79a6ace4e4441568ae3f9 in / 
# Mon, 09 Oct 2017 21:46:12 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:46:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:18b3fc670c7b6c688b9baed955e3822a5bffd95430d278d3bc2ee9bad38e8b72`  
		Last Modified: Mon, 09 Oct 2017 21:57:34 GMT  
		Size: 48.4 MB (48397331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f7494fda43f59bb14dbe7f64ae33686ac6a02cc075f83b07132ff1f7acb8c8`  
		Last Modified: Mon, 09 Oct 2017 22:01:30 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20171210` - linux; ppc64le

```console
$ docker pull debian@sha256:04c2b9960a668ac56dc7bab6579356e864af734f7d93a48cfe068bd8979875e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48723819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdcc7183f60a88a9a786d27772b3506fa931d043273387252fa7d19a207c990`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:47 GMT
ADD file:f7d68627ff6ad6afe6816606a32cc7c6bf5b28bc216533855037b3098e499189 in / 
# Mon, 09 Oct 2017 21:46:50 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:47:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1a7d63987e962f760ed3ccc66ae2539c18534088b2753493d508c8b1343ec7ce`  
		Last Modified: Mon, 09 Oct 2017 21:54:57 GMT  
		Size: 48.7 MB (48723597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c2f88f5e2de1fd1b8ca281cd9f7c8245fd587be79c3c693c9fd11bcffba8a`  
		Last Modified: Mon, 09 Oct 2017 21:56:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20171210` - linux; s390x

```console
$ docker pull debian@sha256:9bb8cfdf3d1ebe79d21cd865b768bde0a1ead4cefad7e9ff1cafcbeb1afc30ab
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47293136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5109c026ef1b187cfdea4db600555c7ba72dea3752d1a44d025dd85417bf6436`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:10 GMT
ADD file:a676ddd83b973a3db56a3f220150964c2235b1e392c085594424093de703796d in / 
# Mon, 09 Oct 2017 21:45:11 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:45:28 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:8274adfe946912f7389ed4933c34a65700a8b7f00502063e2f6f2e6f40a7fc64`  
		Last Modified: Mon, 09 Oct 2017 21:49:50 GMT  
		Size: 47.3 MB (47292916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fe4833c72c53af0ff4afe3ddd1cf1e92a9c76a454840adf0ba23d7db9359b6`  
		Last Modified: Mon, 09 Oct 2017 21:50:10 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
