## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:1c9cb7fa7f00cb99e8e0c8069de2d71a1217022b8fdf14af90c0b3eb0c3e9171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:80ffcf037716c7f3a5b3cf0f5843513e712ea962a9b2d9b049e97743e4e71488
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312ec5fd0bbf4652d110804a4c618b5f24737c048c499bbbbee34b775c7939c4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:19 GMT
ADD file:b1a1c179e13b294eb1d0ce45a9dd21b3ad8cd71d44dbf95ec525e1220460e266 in / 
# Mon, 09 Oct 2017 21:31:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:31:25 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b89ff6f35f4faafb9380eac2c961e765474dbf42f8fdcfd473619ba9150d797d`  
		Last Modified: Mon, 09 Oct 2017 21:37:55 GMT  
		Size: 38.1 MB (38103151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f5dbfe06261c507ddaa7639cab0b572d77a9c540f21e3e1b07d36409004b32`  
		Last Modified: Mon, 09 Oct 2017 21:38:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:2bf53c6de1179744a61621f83e2fac733049b8bc24efaf8d25ba6f8fd2894b8b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36943101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93787d1eb94fe2bcb3100c222347c53596cdd63754d784f57d413e9bf7bca30`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:49 GMT
ADD file:08f941dd8bb2205218d05a136067851f497c38193c94f51175236a4647f6d9af in / 
# Wed, 27 Sep 2017 14:24:50 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:24:54 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f26f8f2f7004901efe8ad6eeb5b7aef96f8267aaff3de6bff8e3eca0ab66bf1d`  
		Last Modified: Wed, 27 Sep 2017 14:29:02 GMT  
		Size: 36.9 MB (36942870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558ea0fc87519dccbf5e50306b9bf76c586249c035091af53107d2dcef63d78a`  
		Last Modified: Wed, 27 Sep 2017 14:29:08 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:60ec72d4c354f45a8688971e16de1b655fc97b0e46d1c73f4bfbf4a5c90b81eb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35656553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceffbb2cb3ba13060b57a80602c59cf37c5af3f51ac455b4dcaab8c898a63a49`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:49 GMT
ADD file:89dfa52dd598e3a0056f5517a6e10ba6039bdf7f337ed1ecf804af9bcdc681e3 in / 
# Wed, 27 Sep 2017 04:12:50 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:12:54 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:81d33c6a5c8e76345ee98ff5606074dfe7c46781f11194b74a38e8243c25f884`  
		Last Modified: Wed, 27 Sep 2017 04:18:00 GMT  
		Size: 35.7 MB (35656324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f475f00f8a01fd060632698c4fa73c129bcf5ec982b846342b5f1ad4b5eea8`  
		Last Modified: Wed, 27 Sep 2017 04:18:08 GMT  
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
