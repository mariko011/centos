## `debian:experimental-20171210`

```console
$ docker pull debian@sha256:a4eaf43e9f506980c2dd8e008f6607b31d8b6a167abd4208ecb87ed4d60b3451
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
$ docker pull debian@sha256:4c8079f823b8dd1b8d5747f3d8f3e5ad96cb7a319d79807086c9cc2de2453105
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48429263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482ac71e0f30039b47d8a0a428b1bd8133ea0efa28528112952773411c02f47b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:45:32 GMT
ADD file:957b950d67042842b71e1b5cecbf5312ba4bb487ee680be3733fd990c324ea84 in / 
# Tue, 12 Dec 2017 01:45:32 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:46:35 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5ee18ad89bbbca1e99102a1d354cb2ff20c247906d1f650ba43ca3d0c828c2ae`  
		Last Modified: Tue, 12 Dec 2017 01:57:41 GMT  
		Size: 48.4 MB (48429041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0631cfab5acbc1c7363e28d98daf7230376dff190dc4aeb70d2ff25652fa10f2`  
		Last Modified: Tue, 12 Dec 2017 02:00:54 GMT  
		Size: 222.0 B  
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
$ docker pull debian@sha256:005bab5a6cd078298521b45f7f5184a9dab65f993c0affca0fe6fc97592088d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49652248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b75a81d70858ad532d37437219584fcbda30efe9372c0bc78d85a3e4f7340b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:36:24 GMT
ADD file:a93811f5ad3cd911c45fd506d8f636d1d5dc7dbf9895d753a2dfa34e4556cf1a in / 
# Tue, 12 Dec 2017 01:36:25 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:36:47 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:fcf89c08ffe3bf009811ac5c2dc0a7193dde0d7ede4e09d4a24adbb347b271fd`  
		Last Modified: Tue, 12 Dec 2017 01:44:13 GMT  
		Size: 49.7 MB (49652028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22811db6d1afd42145963570d2b00e05aef77bc0d053b17e302369fde022e0e6`  
		Last Modified: Tue, 12 Dec 2017 01:44:48 GMT  
		Size: 220.0 B  
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
