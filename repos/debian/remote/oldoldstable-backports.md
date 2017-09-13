## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:cbd90808ea54b4ddab3150e447ec609472dbf98280f676a9321d2a1606e023a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:407bf51ddc313eddea9177570c37849562c9e80d2a365172de545270c4f51286
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214d239ecddec243b24b60706b20d0bfe8b228bbdc3bc6dcc5e519487b9d1f25`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:55 GMT
ADD file:d82d51e6ed1fcccb8e4e24f86818fd10bcdb881589d21cbc83522a2e4c0705fd in / 
# Wed, 13 Sep 2017 08:40:56 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:57 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:65689d4e0da60f3983410b7b4c0b2360138c75f7affad8a1d441bebca7a6f6f1`  
		Last Modified: Wed, 13 Sep 2017 08:43:57 GMT  
		Size: 38.1 MB (38103132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9af808228e17248ec8864ff4e4088cf1a4a321cac4cd5c895b0b612d2f94dc1`  
		Last Modified: Wed, 13 Sep 2017 08:44:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:60fd6d7ac151625f336622010a1d48452ebd3a32b881d9d2a1a7e25daa1f99c9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36945271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67e476d8037ef4b5588d15980b8c32b26398d277f2b3843ea2b9183da98daef3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 19:58:05 GMT
ADD file:08f941dd8bb2205218d05a136067851f497c38193c94f51175236a4647f6d9af in / 
# Fri, 08 Sep 2017 19:58:07 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:58:24 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:167d5d524242cb73bf7937f300ae432ab4bc1171f28038340c464777e661ec72`  
		Last Modified: Fri, 08 Sep 2017 20:13:51 GMT  
		Size: 36.9 MB (36945042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8161400eac8e360792c0448b2cca7b3b9b1157ea47956de9e6b1c1d9d65c49`  
		Last Modified: Fri, 08 Sep 2017 20:14:14 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:26a51878c1446a6241eb7b85856dd1ac1e0f74fd951eaf50f9ce5b47ff1c648f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35655418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f99e5a063c0189e6338ade0b6c6afbad95e4c25b1e61698c4fd0161e3128eed3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:41:13 GMT
ADD file:89dfa52dd598e3a0056f5517a6e10ba6039bdf7f337ed1ecf804af9bcdc681e3 in / 
# Sat, 09 Sep 2017 01:41:15 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:41:23 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:cc164f2a9a07a0c741164832b28b351043f20e6ecd844126503fd41e3f542032`  
		Last Modified: Sat, 09 Sep 2017 01:52:18 GMT  
		Size: 35.7 MB (35655189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0aefaf97d05221bd28737f33410c6bc5e455137a3a7160e4784aaefa51fa14`  
		Last Modified: Sat, 09 Sep 2017 01:52:33 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:33e6ddb0b67089f1f852aaa1ffcdfd41b253e9f31ff38ddb615b42805d4fd9dd
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37433497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8795062dc9e5fcad9df6117323dae1a3729b440f81d9470f25086d36b3c3ae84`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:15 GMT
ADD file:681e5db2d673047ac687919d2183dd5a9144de45158ea2daaac0efa8802505d0 in / 
# Fri, 08 Sep 2017 13:18:16 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:18:19 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f75b0cde75e201e462928330b4e4739e85136df8d9ac74f02a464c905bf7d31d`  
		Last Modified: Fri, 08 Sep 2017 13:23:36 GMT  
		Size: 37.4 MB (37433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70e6bf7e110bfb1d56a4c2062f98bf08843d19e2687ba5a407290ca55aee762`  
		Last Modified: Fri, 08 Sep 2017 13:23:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
