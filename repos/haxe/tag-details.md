<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haxe`

-	[`haxe:3.1`](#haxe31)
-	[`haxe:3.1.3`](#haxe313)
-	[`haxe:3.1.3-jessie`](#haxe313-jessie)
-	[`haxe:3.1.3-onbuild`](#haxe313-onbuild)
-	[`haxe:3.1.3-stretch`](#haxe313-stretch)
-	[`haxe:3.1.3-windowsservercore`](#haxe313-windowsservercore)
-	[`haxe:3.1-jessie`](#haxe31-jessie)
-	[`haxe:3.1-onbuild`](#haxe31-onbuild)
-	[`haxe:3.1-stretch`](#haxe31-stretch)
-	[`haxe:3.1-windowsservercore`](#haxe31-windowsservercore)
-	[`haxe:3.2`](#haxe32)
-	[`haxe:3.2.1`](#haxe321)
-	[`haxe:3.2.1-jessie`](#haxe321-jessie)
-	[`haxe:3.2.1-onbuild`](#haxe321-onbuild)
-	[`haxe:3.2.1-stretch`](#haxe321-stretch)
-	[`haxe:3.2.1-windowsservercore`](#haxe321-windowsservercore)
-	[`haxe:3.2-jessie`](#haxe32-jessie)
-	[`haxe:3.2-onbuild`](#haxe32-onbuild)
-	[`haxe:3.2-stretch`](#haxe32-stretch)
-	[`haxe:3.2-windowsservercore`](#haxe32-windowsservercore)
-	[`haxe:3.3`](#haxe33)
-	[`haxe:3.3.0`](#haxe330)
-	[`haxe:3.3.0-jessie`](#haxe330-jessie)
-	[`haxe:3.3.0-onbuild`](#haxe330-onbuild)
-	[`haxe:3.3.0-rc.1`](#haxe330-rc1)
-	[`haxe:3.3.0-rc.1-jessie`](#haxe330-rc1-jessie)
-	[`haxe:3.3.0-rc.1-onbuild`](#haxe330-rc1-onbuild)
-	[`haxe:3.3.0-rc.1-stretch`](#haxe330-rc1-stretch)
-	[`haxe:3.3.0-rc.1-windowsservercore`](#haxe330-rc1-windowsservercore)
-	[`haxe:3.3.0-stretch`](#haxe330-stretch)
-	[`haxe:3.3.0-windowsservercore`](#haxe330-windowsservercore)
-	[`haxe:3.3-jessie`](#haxe33-jessie)
-	[`haxe:3.3-onbuild`](#haxe33-onbuild)
-	[`haxe:3.3-stretch`](#haxe33-stretch)
-	[`haxe:3.3-windowsservercore`](#haxe33-windowsservercore)
-	[`haxe:3.4`](#haxe34)
-	[`haxe:3.4.2`](#haxe342)
-	[`haxe:3.4.2-jessie`](#haxe342-jessie)
-	[`haxe:3.4.2-onbuild`](#haxe342-onbuild)
-	[`haxe:3.4.2-stretch`](#haxe342-stretch)
-	[`haxe:3.4.2-windowsservercore`](#haxe342-windowsservercore)
-	[`haxe:3.4-jessie`](#haxe34-jessie)
-	[`haxe:3.4-onbuild`](#haxe34-onbuild)
-	[`haxe:3.4-stretch`](#haxe34-stretch)
-	[`haxe:3.4-windowsservercore`](#haxe34-windowsservercore)
-	[`haxe:latest`](#haxelatest)

## `haxe:3.1`

```console
$ docker pull haxe@sha256:8dda1658e4744181968052a19d98d9609060ec749274833e0316cccb36a41a5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1` - linux; amd64

```console
$ docker pull haxe@sha256:693cbd91722cb5d619d038742bc0901fe20d102fce8794f0e379dc2f5869773c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d41e7c5aec86baf202213385a5dc3f8e70c4c57f083dbde90117e5b2f99ba02`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:53:49 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 14 Sep 2017 01:54:37 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:54:37 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4489f4a5dd5c36b7a5a16217bdb68677b084eca664491fe0a35dbeabbc0b4`  
		Last Modified: Thu, 14 Sep 2017 01:59:45 GMT  
		Size: 4.1 MB (4107938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3`

```console
$ docker pull haxe@sha256:8dda1658e4744181968052a19d98d9609060ec749274833e0316cccb36a41a5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3` - linux; amd64

```console
$ docker pull haxe@sha256:693cbd91722cb5d619d038742bc0901fe20d102fce8794f0e379dc2f5869773c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d41e7c5aec86baf202213385a5dc3f8e70c4c57f083dbde90117e5b2f99ba02`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:53:49 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 14 Sep 2017 01:54:37 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:54:37 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4489f4a5dd5c36b7a5a16217bdb68677b084eca664491fe0a35dbeabbc0b4`  
		Last Modified: Thu, 14 Sep 2017 01:59:45 GMT  
		Size: 4.1 MB (4107938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-jessie`

```console
$ docker pull haxe@sha256:03a8bb3360585875dff3ea08ad991066fb5694cc6d9b38c6b10d193ea0a3b4aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:6f8023ca5dabc99571bc25649294d1c0358df8ccd8a33d98423d977661dc44fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122018039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351bacebfacd066b9500a77e01067af73a09cc4c44a659bc8766ce214026f058`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:59 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:46:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 14 Sep 2017 01:47:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:54:39 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 14 Sep 2017 01:55:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:55:58 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b75f3a4d44501f05d34a910e6f31ae3214600404660c970a0595fb428713e9`  
		Last Modified: Thu, 14 Sep 2017 01:56:52 GMT  
		Size: 485.6 KB (485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8308c30d39a97f9e5147549dc4599703c9163f1a934bcb0669a96687ea07ff7`  
		Last Modified: Thu, 14 Sep 2017 01:56:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e691485be1ddf27fefb979387a0fab2f25db2a5e40bad55c61a9990dc574ab`  
		Last Modified: Thu, 14 Sep 2017 01:56:53 GMT  
		Size: 2.3 MB (2287681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa102a1bba7c558e49e4215cbd5ee574723795b6960c970308eaf0f2f52cee6a`  
		Last Modified: Thu, 14 Sep 2017 02:00:14 GMT  
		Size: 4.2 MB (4157471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-onbuild`

```console
$ docker pull haxe@sha256:6c474a812cecf479b028bbd722612faa3c692c1786bac206b587f2ad80fe4e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:30c374aa40d4b1aa855d011add98a9bfca0d5f0294ed8f3be1f81133cbaa5373
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91274779746bd6f44cc113bfdeed982c83e132cf6bda91c983e3fa018465bdcb`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:53:49 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 14 Sep 2017 01:54:37 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:54:37 GMT
CMD ["haxe"]
# Thu, 14 Sep 2017 01:56:00 GMT
RUN mkdir -p /usr/src/app
# Thu, 14 Sep 2017 01:56:00 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 01:56:00 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 14 Sep 2017 01:56:00 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 14 Sep 2017 01:56:01 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 01:56:01 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 14 Sep 2017 01:56:01 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4489f4a5dd5c36b7a5a16217bdb68677b084eca664491fe0a35dbeabbc0b4`  
		Last Modified: Thu, 14 Sep 2017 01:59:45 GMT  
		Size: 4.1 MB (4107938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d81f201bb3cdaa064363c643282106e5634218cc721088a76eb2dd0f51eea06`  
		Last Modified: Thu, 14 Sep 2017 02:01:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-stretch`

```console
$ docker pull haxe@sha256:8dda1658e4744181968052a19d98d9609060ec749274833e0316cccb36a41a5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:693cbd91722cb5d619d038742bc0901fe20d102fce8794f0e379dc2f5869773c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d41e7c5aec86baf202213385a5dc3f8e70c4c57f083dbde90117e5b2f99ba02`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:53:49 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 14 Sep 2017 01:54:37 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:54:37 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4489f4a5dd5c36b7a5a16217bdb68677b084eca664491fe0a35dbeabbc0b4`  
		Last Modified: Thu, 14 Sep 2017 01:59:45 GMT  
		Size: 4.1 MB (4107938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-windowsservercore`

```console
$ docker pull haxe@sha256:089f49c2cae2e1d05f288e9f51d5def0557b6ea4591dc0bceffa59fd41945ed0
```

-	Platforms:
	-	windows; amd64

### `haxe:3.1.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5329925599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a673afd0bb62eb45381640c122dd06f4631a533d8fbfa5e26a6a425da2f69420`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 31 Aug 2017 16:37:45 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 31 Aug 2017 16:37:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 31 Aug 2017 16:37:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 31 Aug 2017 16:37:53 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 31 Aug 2017 16:37:56 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 31 Aug 2017 16:38:26 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:38:49 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 31 Aug 2017 16:38:53 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 31 Aug 2017 16:39:22 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:45:47 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 31 Aug 2017 16:46:47 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.1.3/haxe-3.1.3-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (4cf84cdbf7960a61ae70b0d9166c6f9bde16388c3b81e54af91446f4c9e44ae4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '4cf84cdbf7960a61ae70b0d9166c6f9bde16388c3b81e54af91446f4c9e44ae4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:47:09 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 31 Aug 2017 16:47:12 GMT
ENV HOMEDRIVE=C:
# Thu, 31 Aug 2017 16:47:34 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:47:39 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9edba0156b215ba5e5fa0b8605521c65858923aa698fdee0e8fe8c4a32d38a`  
		Last Modified: Thu, 31 Aug 2017 16:47:58 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85683e5eafad4f9907484aa82a6d89fbbe7ac8eab97b354aa36107680d4469f`  
		Last Modified: Thu, 31 Aug 2017 16:47:57 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af557a3d81d08ce66714919a23ae2ead853398b0d1d5a8b6f3bb76e78adb0a62`  
		Last Modified: Thu, 31 Aug 2017 16:47:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19fd7f9f58e67f80668a62d86d440ff7879119841aed4ccbf92fd022dcb121`  
		Last Modified: Thu, 31 Aug 2017 16:47:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151177ed5fa566a316f7e70f3a851a5d24028274f30578f4a3da88edc76e0fde`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffba7479d406f739c21fb021d302382bc37dab20d75326f8cf1455777f536db7`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4746643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a6c26e357083b80521f0a40a55214e493b7cd10b881013d7d48144317fa60c`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4740964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31041740769a8c2cee39989c8f8649f39eaa604113839ef46b87b3a25ce5d2`  
		Last Modified: Thu, 31 Aug 2017 16:47:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1d341786aa181b9054e80f1bdf42fa3d46f25c1a1749a76cc15647df7f662`  
		Last Modified: Thu, 31 Aug 2017 16:47:52 GMT  
		Size: 7.2 MB (7228751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13faf147e3ee009eac2011a54b06dabb23a4a91aa754eaad2c9d4bba2cc3911`  
		Last Modified: Thu, 31 Aug 2017 16:48:47 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3aaad102390aea802738516439c522fb93be57e1306f477d5904160e16332b4`  
		Last Modified: Thu, 31 Aug 2017 16:48:48 GMT  
		Size: 8.4 MB (8428408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef874b9111d61f480089b08b5712825cab1bd93cf0a557ac4d882517e080b0ba`  
		Last Modified: Thu, 31 Aug 2017 16:48:46 GMT  
		Size: 4.7 MB (4719397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c54c998efa8bf78d97ba63c78b554046bc35a528f6567997751477c1e54e417`  
		Last Modified: Thu, 31 Aug 2017 16:48:43 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c199eebe7201008265fa7ad37ccfa14a9b39254de637a071fe8ebc684bc4c547`  
		Last Modified: Thu, 31 Aug 2017 16:48:45 GMT  
		Size: 4.7 MB (4719697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9755c831eac26c056d4b44d3ba6088dcbab471fdb8f319e2abfe4d6a00f1f2b`  
		Last Modified: Thu, 31 Aug 2017 16:48:43 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-jessie`

```console
$ docker pull haxe@sha256:03a8bb3360585875dff3ea08ad991066fb5694cc6d9b38c6b10d193ea0a3b4aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:6f8023ca5dabc99571bc25649294d1c0358df8ccd8a33d98423d977661dc44fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122018039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351bacebfacd066b9500a77e01067af73a09cc4c44a659bc8766ce214026f058`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:59 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:46:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 14 Sep 2017 01:47:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:54:39 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 14 Sep 2017 01:55:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:55:58 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b75f3a4d44501f05d34a910e6f31ae3214600404660c970a0595fb428713e9`  
		Last Modified: Thu, 14 Sep 2017 01:56:52 GMT  
		Size: 485.6 KB (485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8308c30d39a97f9e5147549dc4599703c9163f1a934bcb0669a96687ea07ff7`  
		Last Modified: Thu, 14 Sep 2017 01:56:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e691485be1ddf27fefb979387a0fab2f25db2a5e40bad55c61a9990dc574ab`  
		Last Modified: Thu, 14 Sep 2017 01:56:53 GMT  
		Size: 2.3 MB (2287681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa102a1bba7c558e49e4215cbd5ee574723795b6960c970308eaf0f2f52cee6a`  
		Last Modified: Thu, 14 Sep 2017 02:00:14 GMT  
		Size: 4.2 MB (4157471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-onbuild`

```console
$ docker pull haxe@sha256:6c474a812cecf479b028bbd722612faa3c692c1786bac206b587f2ad80fe4e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:30c374aa40d4b1aa855d011add98a9bfca0d5f0294ed8f3be1f81133cbaa5373
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91274779746bd6f44cc113bfdeed982c83e132cf6bda91c983e3fa018465bdcb`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:53:49 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 14 Sep 2017 01:54:37 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:54:37 GMT
CMD ["haxe"]
# Thu, 14 Sep 2017 01:56:00 GMT
RUN mkdir -p /usr/src/app
# Thu, 14 Sep 2017 01:56:00 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 01:56:00 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 14 Sep 2017 01:56:00 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 14 Sep 2017 01:56:01 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 01:56:01 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 14 Sep 2017 01:56:01 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4489f4a5dd5c36b7a5a16217bdb68677b084eca664491fe0a35dbeabbc0b4`  
		Last Modified: Thu, 14 Sep 2017 01:59:45 GMT  
		Size: 4.1 MB (4107938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d81f201bb3cdaa064363c643282106e5634218cc721088a76eb2dd0f51eea06`  
		Last Modified: Thu, 14 Sep 2017 02:01:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-stretch`

```console
$ docker pull haxe@sha256:8dda1658e4744181968052a19d98d9609060ec749274833e0316cccb36a41a5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:693cbd91722cb5d619d038742bc0901fe20d102fce8794f0e379dc2f5869773c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d41e7c5aec86baf202213385a5dc3f8e70c4c57f083dbde90117e5b2f99ba02`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:53:49 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 14 Sep 2017 01:54:37 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:54:37 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4489f4a5dd5c36b7a5a16217bdb68677b084eca664491fe0a35dbeabbc0b4`  
		Last Modified: Thu, 14 Sep 2017 01:59:45 GMT  
		Size: 4.1 MB (4107938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-windowsservercore`

```console
$ docker pull haxe@sha256:089f49c2cae2e1d05f288e9f51d5def0557b6ea4591dc0bceffa59fd41945ed0
```

-	Platforms:
	-	windows; amd64

### `haxe:3.1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5329925599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a673afd0bb62eb45381640c122dd06f4631a533d8fbfa5e26a6a425da2f69420`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 31 Aug 2017 16:37:45 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 31 Aug 2017 16:37:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 31 Aug 2017 16:37:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 31 Aug 2017 16:37:53 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 31 Aug 2017 16:37:56 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 31 Aug 2017 16:38:26 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:38:49 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 31 Aug 2017 16:38:53 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 31 Aug 2017 16:39:22 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:45:47 GMT
ENV HAXE_VERSION=3.1.3
# Thu, 31 Aug 2017 16:46:47 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.1.3/haxe-3.1.3-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (4cf84cdbf7960a61ae70b0d9166c6f9bde16388c3b81e54af91446f4c9e44ae4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '4cf84cdbf7960a61ae70b0d9166c6f9bde16388c3b81e54af91446f4c9e44ae4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:47:09 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 31 Aug 2017 16:47:12 GMT
ENV HOMEDRIVE=C:
# Thu, 31 Aug 2017 16:47:34 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:47:39 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9edba0156b215ba5e5fa0b8605521c65858923aa698fdee0e8fe8c4a32d38a`  
		Last Modified: Thu, 31 Aug 2017 16:47:58 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85683e5eafad4f9907484aa82a6d89fbbe7ac8eab97b354aa36107680d4469f`  
		Last Modified: Thu, 31 Aug 2017 16:47:57 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af557a3d81d08ce66714919a23ae2ead853398b0d1d5a8b6f3bb76e78adb0a62`  
		Last Modified: Thu, 31 Aug 2017 16:47:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19fd7f9f58e67f80668a62d86d440ff7879119841aed4ccbf92fd022dcb121`  
		Last Modified: Thu, 31 Aug 2017 16:47:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151177ed5fa566a316f7e70f3a851a5d24028274f30578f4a3da88edc76e0fde`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffba7479d406f739c21fb021d302382bc37dab20d75326f8cf1455777f536db7`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4746643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a6c26e357083b80521f0a40a55214e493b7cd10b881013d7d48144317fa60c`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4740964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31041740769a8c2cee39989c8f8649f39eaa604113839ef46b87b3a25ce5d2`  
		Last Modified: Thu, 31 Aug 2017 16:47:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1d341786aa181b9054e80f1bdf42fa3d46f25c1a1749a76cc15647df7f662`  
		Last Modified: Thu, 31 Aug 2017 16:47:52 GMT  
		Size: 7.2 MB (7228751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13faf147e3ee009eac2011a54b06dabb23a4a91aa754eaad2c9d4bba2cc3911`  
		Last Modified: Thu, 31 Aug 2017 16:48:47 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3aaad102390aea802738516439c522fb93be57e1306f477d5904160e16332b4`  
		Last Modified: Thu, 31 Aug 2017 16:48:48 GMT  
		Size: 8.4 MB (8428408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef874b9111d61f480089b08b5712825cab1bd93cf0a557ac4d882517e080b0ba`  
		Last Modified: Thu, 31 Aug 2017 16:48:46 GMT  
		Size: 4.7 MB (4719397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c54c998efa8bf78d97ba63c78b554046bc35a528f6567997751477c1e54e417`  
		Last Modified: Thu, 31 Aug 2017 16:48:43 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c199eebe7201008265fa7ad37ccfa14a9b39254de637a071fe8ebc684bc4c547`  
		Last Modified: Thu, 31 Aug 2017 16:48:45 GMT  
		Size: 4.7 MB (4719697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9755c831eac26c056d4b44d3ba6088dcbab471fdb8f319e2abfe4d6a00f1f2b`  
		Last Modified: Thu, 31 Aug 2017 16:48:43 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2`

```console
$ docker pull haxe@sha256:e545987f1e7ca420d2cb38615aadeecdeda1a349c8800eb9c5c1f240fc0a60d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2` - linux; amd64

```console
$ docker pull haxe@sha256:f98932656d112cac74bb2879ca4ef7943ba9d61e03c9fe6d0fa3d33c0bde0162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118630571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c450769086fdc6fca90453eadb9aed1866185e8f50ef03999bfb58e8449c5e3`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:50:22 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 14 Sep 2017 01:51:02 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:51:02 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec8de270a6964eac4946fba66069f0c52b75998696a59d989389cfb0a21db6`  
		Last Modified: Thu, 14 Sep 2017 01:58:48 GMT  
		Size: 4.4 MB (4419682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1`

```console
$ docker pull haxe@sha256:e545987f1e7ca420d2cb38615aadeecdeda1a349c8800eb9c5c1f240fc0a60d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1` - linux; amd64

```console
$ docker pull haxe@sha256:f98932656d112cac74bb2879ca4ef7943ba9d61e03c9fe6d0fa3d33c0bde0162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118630571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c450769086fdc6fca90453eadb9aed1866185e8f50ef03999bfb58e8449c5e3`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:50:22 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 14 Sep 2017 01:51:02 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:51:02 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec8de270a6964eac4946fba66069f0c52b75998696a59d989389cfb0a21db6`  
		Last Modified: Thu, 14 Sep 2017 01:58:48 GMT  
		Size: 4.4 MB (4419682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-jessie`

```console
$ docker pull haxe@sha256:40b0997fe52b70e497c73a04071100065896cee7a58033817e798aa27443ec75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:4ac4c98f0fa60a32957f45081f48ce3d441c8e29d2afef7f33e5f3b413d3783f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122311843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2938019251c7f5b41b5b50cf35e02d75e4487aebfec331d904d68e66b53e85`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:59 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:46:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 14 Sep 2017 01:47:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:51:06 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 14 Sep 2017 01:52:24 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:52:25 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b75f3a4d44501f05d34a910e6f31ae3214600404660c970a0595fb428713e9`  
		Last Modified: Thu, 14 Sep 2017 01:56:52 GMT  
		Size: 485.6 KB (485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8308c30d39a97f9e5147549dc4599703c9163f1a934bcb0669a96687ea07ff7`  
		Last Modified: Thu, 14 Sep 2017 01:56:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e691485be1ddf27fefb979387a0fab2f25db2a5e40bad55c61a9990dc574ab`  
		Last Modified: Thu, 14 Sep 2017 01:56:53 GMT  
		Size: 2.3 MB (2287681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c10aea5c477ab41b29f2e9cc55105865840cfbff0529e7e79dcfb646b2a07a8`  
		Last Modified: Thu, 14 Sep 2017 01:59:16 GMT  
		Size: 4.5 MB (4451275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-onbuild`

```console
$ docker pull haxe@sha256:da5fb5efe7f20c6442c779911a7267063e5b2b546a43847c792dae76b0beeef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:f3fc6471d22aec1b45996eeeef2c603cfb4daab69f83edc54132e7a4b4aa94f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118630700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2687d9875e5082268801d8529b862a24958672c86d4d856a62eaf1dd54ad37b8`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:50:22 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 14 Sep 2017 01:51:02 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:51:02 GMT
CMD ["haxe"]
# Thu, 14 Sep 2017 01:53:44 GMT
RUN mkdir -p /usr/src/app
# Thu, 14 Sep 2017 01:53:44 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 01:53:44 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 14 Sep 2017 01:53:45 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 14 Sep 2017 01:53:45 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 01:53:45 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 14 Sep 2017 01:53:45 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec8de270a6964eac4946fba66069f0c52b75998696a59d989389cfb0a21db6`  
		Last Modified: Thu, 14 Sep 2017 01:58:48 GMT  
		Size: 4.4 MB (4419682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57302737928f06b14a8d08e58c46bc2554d286e010f3f5073b31d1c8ec4daf84`  
		Last Modified: Thu, 14 Sep 2017 01:59:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-stretch`

```console
$ docker pull haxe@sha256:e545987f1e7ca420d2cb38615aadeecdeda1a349c8800eb9c5c1f240fc0a60d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:f98932656d112cac74bb2879ca4ef7943ba9d61e03c9fe6d0fa3d33c0bde0162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118630571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c450769086fdc6fca90453eadb9aed1866185e8f50ef03999bfb58e8449c5e3`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:50:22 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 14 Sep 2017 01:51:02 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:51:02 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec8de270a6964eac4946fba66069f0c52b75998696a59d989389cfb0a21db6`  
		Last Modified: Thu, 14 Sep 2017 01:58:48 GMT  
		Size: 4.4 MB (4419682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-windowsservercore`

```console
$ docker pull haxe@sha256:80b1f84bf5d74cee63f90c4e955c1166cfa4ce7932a3999cbaf6e41f540a8e10
```

-	Platforms:
	-	windows; amd64

### `haxe:3.2.1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5330149934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57f30b92ce6220c902629d8625010a9e3203452e0b7bcdb48f1c77b6f6131ea`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 31 Aug 2017 16:37:45 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 31 Aug 2017 16:37:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 31 Aug 2017 16:37:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 31 Aug 2017 16:37:53 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 31 Aug 2017 16:37:56 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 31 Aug 2017 16:38:26 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:38:49 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 31 Aug 2017 16:38:53 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 31 Aug 2017 16:39:22 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:43:51 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 31 Aug 2017 16:44:56 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.2.1/haxe-3.2.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (af57d42ca474bba826426e9403b2cb21c210d56addc8bbc0e8fafa88b3660db3) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'af57d42ca474bba826426e9403b2cb21c210d56addc8bbc0e8fafa88b3660db3') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:45:16 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 31 Aug 2017 16:45:20 GMT
ENV HOMEDRIVE=C:
# Thu, 31 Aug 2017 16:45:40 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:45:43 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9edba0156b215ba5e5fa0b8605521c65858923aa698fdee0e8fe8c4a32d38a`  
		Last Modified: Thu, 31 Aug 2017 16:47:58 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85683e5eafad4f9907484aa82a6d89fbbe7ac8eab97b354aa36107680d4469f`  
		Last Modified: Thu, 31 Aug 2017 16:47:57 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af557a3d81d08ce66714919a23ae2ead853398b0d1d5a8b6f3bb76e78adb0a62`  
		Last Modified: Thu, 31 Aug 2017 16:47:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19fd7f9f58e67f80668a62d86d440ff7879119841aed4ccbf92fd022dcb121`  
		Last Modified: Thu, 31 Aug 2017 16:47:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151177ed5fa566a316f7e70f3a851a5d24028274f30578f4a3da88edc76e0fde`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffba7479d406f739c21fb021d302382bc37dab20d75326f8cf1455777f536db7`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4746643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a6c26e357083b80521f0a40a55214e493b7cd10b881013d7d48144317fa60c`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4740964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31041740769a8c2cee39989c8f8649f39eaa604113839ef46b87b3a25ce5d2`  
		Last Modified: Thu, 31 Aug 2017 16:47:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1d341786aa181b9054e80f1bdf42fa3d46f25c1a1749a76cc15647df7f662`  
		Last Modified: Thu, 31 Aug 2017 16:47:52 GMT  
		Size: 7.2 MB (7228751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd988decbdff63a4644012c1c3d554dbdb67371c937e0e30d36bc7a9b3ed6ea`  
		Last Modified: Thu, 31 Aug 2017 16:48:33 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de39082c671d5278413723c632c3a3b8690a8337b02cffdec3e8a5d5e46283b`  
		Last Modified: Thu, 31 Aug 2017 16:48:33 GMT  
		Size: 8.7 MB (8723565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ded1f7b6508d4f3bae874287608ec39f13e24c80c9f12ccfe45b904db98478`  
		Last Modified: Thu, 31 Aug 2017 16:48:32 GMT  
		Size: 4.7 MB (4684418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f77768ffbcea2f061fb51c1e92edefcc52509900567ffbefb5a0b1b3c5a613e`  
		Last Modified: Thu, 31 Aug 2017 16:48:30 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2410b29588efde5608ded50275bcb5cbe7e71e1e4e93933adb4ea88e6e05c4`  
		Last Modified: Thu, 31 Aug 2017 16:48:32 GMT  
		Size: 4.7 MB (4683862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa096676c723930933c19ac14d4eccc2d3fe5e5d021ae55564e88ca57c573c2`  
		Last Modified: Thu, 31 Aug 2017 16:48:30 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-jessie`

```console
$ docker pull haxe@sha256:40b0997fe52b70e497c73a04071100065896cee7a58033817e798aa27443ec75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:4ac4c98f0fa60a32957f45081f48ce3d441c8e29d2afef7f33e5f3b413d3783f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122311843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2938019251c7f5b41b5b50cf35e02d75e4487aebfec331d904d68e66b53e85`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:59 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:46:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 14 Sep 2017 01:47:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:51:06 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 14 Sep 2017 01:52:24 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:52:25 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b75f3a4d44501f05d34a910e6f31ae3214600404660c970a0595fb428713e9`  
		Last Modified: Thu, 14 Sep 2017 01:56:52 GMT  
		Size: 485.6 KB (485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8308c30d39a97f9e5147549dc4599703c9163f1a934bcb0669a96687ea07ff7`  
		Last Modified: Thu, 14 Sep 2017 01:56:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e691485be1ddf27fefb979387a0fab2f25db2a5e40bad55c61a9990dc574ab`  
		Last Modified: Thu, 14 Sep 2017 01:56:53 GMT  
		Size: 2.3 MB (2287681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c10aea5c477ab41b29f2e9cc55105865840cfbff0529e7e79dcfb646b2a07a8`  
		Last Modified: Thu, 14 Sep 2017 01:59:16 GMT  
		Size: 4.5 MB (4451275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-onbuild`

```console
$ docker pull haxe@sha256:da5fb5efe7f20c6442c779911a7267063e5b2b546a43847c792dae76b0beeef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:f3fc6471d22aec1b45996eeeef2c603cfb4daab69f83edc54132e7a4b4aa94f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118630700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2687d9875e5082268801d8529b862a24958672c86d4d856a62eaf1dd54ad37b8`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:50:22 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 14 Sep 2017 01:51:02 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:51:02 GMT
CMD ["haxe"]
# Thu, 14 Sep 2017 01:53:44 GMT
RUN mkdir -p /usr/src/app
# Thu, 14 Sep 2017 01:53:44 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 01:53:44 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 14 Sep 2017 01:53:45 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 14 Sep 2017 01:53:45 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 01:53:45 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 14 Sep 2017 01:53:45 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec8de270a6964eac4946fba66069f0c52b75998696a59d989389cfb0a21db6`  
		Last Modified: Thu, 14 Sep 2017 01:58:48 GMT  
		Size: 4.4 MB (4419682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57302737928f06b14a8d08e58c46bc2554d286e010f3f5073b31d1c8ec4daf84`  
		Last Modified: Thu, 14 Sep 2017 01:59:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-stretch`

```console
$ docker pull haxe@sha256:e545987f1e7ca420d2cb38615aadeecdeda1a349c8800eb9c5c1f240fc0a60d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:f98932656d112cac74bb2879ca4ef7943ba9d61e03c9fe6d0fa3d33c0bde0162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118630571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c450769086fdc6fca90453eadb9aed1866185e8f50ef03999bfb58e8449c5e3`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:50:22 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 14 Sep 2017 01:51:02 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:51:02 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec8de270a6964eac4946fba66069f0c52b75998696a59d989389cfb0a21db6`  
		Last Modified: Thu, 14 Sep 2017 01:58:48 GMT  
		Size: 4.4 MB (4419682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-windowsservercore`

```console
$ docker pull haxe@sha256:80b1f84bf5d74cee63f90c4e955c1166cfa4ce7932a3999cbaf6e41f540a8e10
```

-	Platforms:
	-	windows; amd64

### `haxe:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5330149934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57f30b92ce6220c902629d8625010a9e3203452e0b7bcdb48f1c77b6f6131ea`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 31 Aug 2017 16:37:45 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 31 Aug 2017 16:37:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 31 Aug 2017 16:37:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 31 Aug 2017 16:37:53 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 31 Aug 2017 16:37:56 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 31 Aug 2017 16:38:26 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:38:49 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 31 Aug 2017 16:38:53 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 31 Aug 2017 16:39:22 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:43:51 GMT
ENV HAXE_VERSION=3.2.1
# Thu, 31 Aug 2017 16:44:56 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.2.1/haxe-3.2.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (af57d42ca474bba826426e9403b2cb21c210d56addc8bbc0e8fafa88b3660db3) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'af57d42ca474bba826426e9403b2cb21c210d56addc8bbc0e8fafa88b3660db3') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:45:16 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 31 Aug 2017 16:45:20 GMT
ENV HOMEDRIVE=C:
# Thu, 31 Aug 2017 16:45:40 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:45:43 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9edba0156b215ba5e5fa0b8605521c65858923aa698fdee0e8fe8c4a32d38a`  
		Last Modified: Thu, 31 Aug 2017 16:47:58 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85683e5eafad4f9907484aa82a6d89fbbe7ac8eab97b354aa36107680d4469f`  
		Last Modified: Thu, 31 Aug 2017 16:47:57 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af557a3d81d08ce66714919a23ae2ead853398b0d1d5a8b6f3bb76e78adb0a62`  
		Last Modified: Thu, 31 Aug 2017 16:47:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19fd7f9f58e67f80668a62d86d440ff7879119841aed4ccbf92fd022dcb121`  
		Last Modified: Thu, 31 Aug 2017 16:47:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151177ed5fa566a316f7e70f3a851a5d24028274f30578f4a3da88edc76e0fde`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffba7479d406f739c21fb021d302382bc37dab20d75326f8cf1455777f536db7`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4746643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a6c26e357083b80521f0a40a55214e493b7cd10b881013d7d48144317fa60c`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4740964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31041740769a8c2cee39989c8f8649f39eaa604113839ef46b87b3a25ce5d2`  
		Last Modified: Thu, 31 Aug 2017 16:47:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1d341786aa181b9054e80f1bdf42fa3d46f25c1a1749a76cc15647df7f662`  
		Last Modified: Thu, 31 Aug 2017 16:47:52 GMT  
		Size: 7.2 MB (7228751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd988decbdff63a4644012c1c3d554dbdb67371c937e0e30d36bc7a9b3ed6ea`  
		Last Modified: Thu, 31 Aug 2017 16:48:33 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de39082c671d5278413723c632c3a3b8690a8337b02cffdec3e8a5d5e46283b`  
		Last Modified: Thu, 31 Aug 2017 16:48:33 GMT  
		Size: 8.7 MB (8723565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ded1f7b6508d4f3bae874287608ec39f13e24c80c9f12ccfe45b904db98478`  
		Last Modified: Thu, 31 Aug 2017 16:48:32 GMT  
		Size: 4.7 MB (4684418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f77768ffbcea2f061fb51c1e92edefcc52509900567ffbefb5a0b1b3c5a613e`  
		Last Modified: Thu, 31 Aug 2017 16:48:30 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2410b29588efde5608ded50275bcb5cbe7e71e1e4e93933adb4ea88e6e05c4`  
		Last Modified: Thu, 31 Aug 2017 16:48:32 GMT  
		Size: 4.7 MB (4683862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa096676c723930933c19ac14d4eccc2d3fe5e5d021ae55564e88ca57c573c2`  
		Last Modified: Thu, 31 Aug 2017 16:48:30 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3`

```console
$ docker pull haxe@sha256:c2c3119f3185062a5779a10387fcfae38be3001f3301a9326f27800d818a2bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3` - linux; amd64

```console
$ docker pull haxe@sha256:08437118cef475008fc229ffb4ff31f47fad026824930b102e46f44225525d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119614820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9292d9d7eacacb451ce492144936fb25bf927e733332e8b5f1b24379498c7e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:48:31 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:49:07 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:49:07 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde62b3a26c97f8135f64567a92513b818fd8a77d2d2de875c3a343bef7e6961`  
		Last Modified: Thu, 14 Sep 2017 01:57:29 GMT  
		Size: 5.4 MB (5403931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0`

```console
$ docker pull haxe@sha256:c2c3119f3185062a5779a10387fcfae38be3001f3301a9326f27800d818a2bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0` - linux; amd64

```console
$ docker pull haxe@sha256:08437118cef475008fc229ffb4ff31f47fad026824930b102e46f44225525d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119614820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9292d9d7eacacb451ce492144936fb25bf927e733332e8b5f1b24379498c7e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:48:31 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:49:07 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:49:07 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde62b3a26c97f8135f64567a92513b818fd8a77d2d2de875c3a343bef7e6961`  
		Last Modified: Thu, 14 Sep 2017 01:57:29 GMT  
		Size: 5.4 MB (5403931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-jessie`

```console
$ docker pull haxe@sha256:8d71258b9c4ffa252b7d0fb8bbe7eecbfdfbc57920fd9ee5083bc09b4f2599ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:a118b61ec4120ba5a0063d54599feafa5ebcfdb6ae87c23f323c09381906dec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123255745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9f71dae0906aa2f7a5910af64de35c85f925af6c9e41541bbfb0360fa296c0`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:59 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:46:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 14 Sep 2017 01:47:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:49:09 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:50:13 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:50:13 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b75f3a4d44501f05d34a910e6f31ae3214600404660c970a0595fb428713e9`  
		Last Modified: Thu, 14 Sep 2017 01:56:52 GMT  
		Size: 485.6 KB (485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8308c30d39a97f9e5147549dc4599703c9163f1a934bcb0669a96687ea07ff7`  
		Last Modified: Thu, 14 Sep 2017 01:56:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e691485be1ddf27fefb979387a0fab2f25db2a5e40bad55c61a9990dc574ab`  
		Last Modified: Thu, 14 Sep 2017 01:56:53 GMT  
		Size: 2.3 MB (2287681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2f8a12b86b69e4ca9e408b471cb836e02eb0c526b6d924d7e858f7f8615a0e`  
		Last Modified: Thu, 14 Sep 2017 01:58:04 GMT  
		Size: 5.4 MB (5395177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-onbuild`

```console
$ docker pull haxe@sha256:d65fabfcb16a660e18abbf29b08775ad5d4c1f1ce5c5189593784d340bfb0170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:978fb391bde14ea1718e4fdb2abc48047aff47e79d3585881ef73d6bcc7b7f41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119614950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b5e6959d1b60f04f31ec05a28bf9a93db523c48291890af9117c582e57d7f8`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:48:31 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:49:07 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:49:07 GMT
CMD ["haxe"]
# Thu, 14 Sep 2017 01:50:18 GMT
RUN mkdir -p /usr/src/app
# Thu, 14 Sep 2017 01:50:18 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 01:50:18 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 14 Sep 2017 01:50:18 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 14 Sep 2017 01:50:19 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 01:50:19 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 14 Sep 2017 01:50:19 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde62b3a26c97f8135f64567a92513b818fd8a77d2d2de875c3a343bef7e6961`  
		Last Modified: Thu, 14 Sep 2017 01:57:29 GMT  
		Size: 5.4 MB (5403931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309daebd10ddff2c07f3f09e54220beefe8eb91c2c5d66b2d7b0883b32feca9a`  
		Last Modified: Thu, 14 Sep 2017 01:58:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1`

```console
$ docker pull haxe@sha256:c2c3119f3185062a5779a10387fcfae38be3001f3301a9326f27800d818a2bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1` - linux; amd64

```console
$ docker pull haxe@sha256:08437118cef475008fc229ffb4ff31f47fad026824930b102e46f44225525d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119614820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9292d9d7eacacb451ce492144936fb25bf927e733332e8b5f1b24379498c7e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:48:31 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:49:07 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:49:07 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde62b3a26c97f8135f64567a92513b818fd8a77d2d2de875c3a343bef7e6961`  
		Last Modified: Thu, 14 Sep 2017 01:57:29 GMT  
		Size: 5.4 MB (5403931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-jessie`

```console
$ docker pull haxe@sha256:8d71258b9c4ffa252b7d0fb8bbe7eecbfdfbc57920fd9ee5083bc09b4f2599ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:a118b61ec4120ba5a0063d54599feafa5ebcfdb6ae87c23f323c09381906dec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123255745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9f71dae0906aa2f7a5910af64de35c85f925af6c9e41541bbfb0360fa296c0`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:59 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:46:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 14 Sep 2017 01:47:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:49:09 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:50:13 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:50:13 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b75f3a4d44501f05d34a910e6f31ae3214600404660c970a0595fb428713e9`  
		Last Modified: Thu, 14 Sep 2017 01:56:52 GMT  
		Size: 485.6 KB (485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8308c30d39a97f9e5147549dc4599703c9163f1a934bcb0669a96687ea07ff7`  
		Last Modified: Thu, 14 Sep 2017 01:56:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e691485be1ddf27fefb979387a0fab2f25db2a5e40bad55c61a9990dc574ab`  
		Last Modified: Thu, 14 Sep 2017 01:56:53 GMT  
		Size: 2.3 MB (2287681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2f8a12b86b69e4ca9e408b471cb836e02eb0c526b6d924d7e858f7f8615a0e`  
		Last Modified: Thu, 14 Sep 2017 01:58:04 GMT  
		Size: 5.4 MB (5395177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-onbuild`

```console
$ docker pull haxe@sha256:d65fabfcb16a660e18abbf29b08775ad5d4c1f1ce5c5189593784d340bfb0170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:978fb391bde14ea1718e4fdb2abc48047aff47e79d3585881ef73d6bcc7b7f41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119614950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b5e6959d1b60f04f31ec05a28bf9a93db523c48291890af9117c582e57d7f8`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:48:31 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:49:07 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:49:07 GMT
CMD ["haxe"]
# Thu, 14 Sep 2017 01:50:18 GMT
RUN mkdir -p /usr/src/app
# Thu, 14 Sep 2017 01:50:18 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 01:50:18 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 14 Sep 2017 01:50:18 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 14 Sep 2017 01:50:19 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 01:50:19 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 14 Sep 2017 01:50:19 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde62b3a26c97f8135f64567a92513b818fd8a77d2d2de875c3a343bef7e6961`  
		Last Modified: Thu, 14 Sep 2017 01:57:29 GMT  
		Size: 5.4 MB (5403931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309daebd10ddff2c07f3f09e54220beefe8eb91c2c5d66b2d7b0883b32feca9a`  
		Last Modified: Thu, 14 Sep 2017 01:58:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-stretch`

```console
$ docker pull haxe@sha256:c2c3119f3185062a5779a10387fcfae38be3001f3301a9326f27800d818a2bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:08437118cef475008fc229ffb4ff31f47fad026824930b102e46f44225525d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119614820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9292d9d7eacacb451ce492144936fb25bf927e733332e8b5f1b24379498c7e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:48:31 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:49:07 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:49:07 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde62b3a26c97f8135f64567a92513b818fd8a77d2d2de875c3a343bef7e6961`  
		Last Modified: Thu, 14 Sep 2017 01:57:29 GMT  
		Size: 5.4 MB (5403931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-windowsservercore`

```console
$ docker pull haxe@sha256:1dbfaef81f0592c300c0f9dac4fadbfb6a179f74ac6378970365e791779585e7
```

-	Platforms:
	-	windows; amd64

### `haxe:3.3.0-rc.1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5330788468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dfa00c3e83f635661d5ca70dadb0463c89da394f702976e3a1c7b13df3f036a`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 31 Aug 2017 16:37:45 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 31 Aug 2017 16:37:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 31 Aug 2017 16:37:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 31 Aug 2017 16:37:53 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 31 Aug 2017 16:37:56 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 31 Aug 2017 16:38:26 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:38:49 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 31 Aug 2017 16:38:53 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 31 Aug 2017 16:39:22 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:41:48 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 31 Aug 2017 16:43:00 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.3.0-rc1/haxe-3.3.0-rc.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:43:21 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 31 Aug 2017 16:43:25 GMT
ENV HOMEDRIVE=C:
# Thu, 31 Aug 2017 16:43:43 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:43:47 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9edba0156b215ba5e5fa0b8605521c65858923aa698fdee0e8fe8c4a32d38a`  
		Last Modified: Thu, 31 Aug 2017 16:47:58 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85683e5eafad4f9907484aa82a6d89fbbe7ac8eab97b354aa36107680d4469f`  
		Last Modified: Thu, 31 Aug 2017 16:47:57 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af557a3d81d08ce66714919a23ae2ead853398b0d1d5a8b6f3bb76e78adb0a62`  
		Last Modified: Thu, 31 Aug 2017 16:47:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19fd7f9f58e67f80668a62d86d440ff7879119841aed4ccbf92fd022dcb121`  
		Last Modified: Thu, 31 Aug 2017 16:47:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151177ed5fa566a316f7e70f3a851a5d24028274f30578f4a3da88edc76e0fde`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffba7479d406f739c21fb021d302382bc37dab20d75326f8cf1455777f536db7`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4746643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a6c26e357083b80521f0a40a55214e493b7cd10b881013d7d48144317fa60c`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4740964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31041740769a8c2cee39989c8f8649f39eaa604113839ef46b87b3a25ce5d2`  
		Last Modified: Thu, 31 Aug 2017 16:47:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1d341786aa181b9054e80f1bdf42fa3d46f25c1a1749a76cc15647df7f662`  
		Last Modified: Thu, 31 Aug 2017 16:47:52 GMT  
		Size: 7.2 MB (7228751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8571d0a426bc18833affd18445552a4bec519ba57bdef5d7bc7ef299382f8c2`  
		Last Modified: Thu, 31 Aug 2017 16:48:15 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06598b7b7255bf13983f31d27cfa8070d3cbbc86bbf6433e70da97e7132f8401`  
		Last Modified: Thu, 31 Aug 2017 16:48:15 GMT  
		Size: 9.4 MB (9360433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b0ee2b2a8318d806bc09872b2079404077088bbefeb125a1347ecd718b0395`  
		Last Modified: Thu, 31 Aug 2017 16:48:14 GMT  
		Size: 4.7 MB (4685106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567ce6c094ccc42c7c9bcdd47951ee9d850627ab3b40149e36acb47a986677fc`  
		Last Modified: Thu, 31 Aug 2017 16:48:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647603884a5256067e48e578f2106faf33db4d4d374927026eb26b91d5749b68`  
		Last Modified: Thu, 31 Aug 2017 16:48:13 GMT  
		Size: 4.7 MB (4684848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65d3388cb5c5bd119766e95963c0b8a3de146e6e1807f19426accde5abd3d5f`  
		Last Modified: Thu, 31 Aug 2017 16:48:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-stretch`

```console
$ docker pull haxe@sha256:c2c3119f3185062a5779a10387fcfae38be3001f3301a9326f27800d818a2bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:08437118cef475008fc229ffb4ff31f47fad026824930b102e46f44225525d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119614820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9292d9d7eacacb451ce492144936fb25bf927e733332e8b5f1b24379498c7e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:48:31 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:49:07 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:49:07 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde62b3a26c97f8135f64567a92513b818fd8a77d2d2de875c3a343bef7e6961`  
		Last Modified: Thu, 14 Sep 2017 01:57:29 GMT  
		Size: 5.4 MB (5403931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-windowsservercore`

```console
$ docker pull haxe@sha256:1dbfaef81f0592c300c0f9dac4fadbfb6a179f74ac6378970365e791779585e7
```

-	Platforms:
	-	windows; amd64

### `haxe:3.3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5330788468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dfa00c3e83f635661d5ca70dadb0463c89da394f702976e3a1c7b13df3f036a`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 31 Aug 2017 16:37:45 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 31 Aug 2017 16:37:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 31 Aug 2017 16:37:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 31 Aug 2017 16:37:53 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 31 Aug 2017 16:37:56 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 31 Aug 2017 16:38:26 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:38:49 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 31 Aug 2017 16:38:53 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 31 Aug 2017 16:39:22 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:41:48 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 31 Aug 2017 16:43:00 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.3.0-rc1/haxe-3.3.0-rc.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:43:21 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 31 Aug 2017 16:43:25 GMT
ENV HOMEDRIVE=C:
# Thu, 31 Aug 2017 16:43:43 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:43:47 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9edba0156b215ba5e5fa0b8605521c65858923aa698fdee0e8fe8c4a32d38a`  
		Last Modified: Thu, 31 Aug 2017 16:47:58 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85683e5eafad4f9907484aa82a6d89fbbe7ac8eab97b354aa36107680d4469f`  
		Last Modified: Thu, 31 Aug 2017 16:47:57 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af557a3d81d08ce66714919a23ae2ead853398b0d1d5a8b6f3bb76e78adb0a62`  
		Last Modified: Thu, 31 Aug 2017 16:47:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19fd7f9f58e67f80668a62d86d440ff7879119841aed4ccbf92fd022dcb121`  
		Last Modified: Thu, 31 Aug 2017 16:47:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151177ed5fa566a316f7e70f3a851a5d24028274f30578f4a3da88edc76e0fde`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffba7479d406f739c21fb021d302382bc37dab20d75326f8cf1455777f536db7`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4746643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a6c26e357083b80521f0a40a55214e493b7cd10b881013d7d48144317fa60c`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4740964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31041740769a8c2cee39989c8f8649f39eaa604113839ef46b87b3a25ce5d2`  
		Last Modified: Thu, 31 Aug 2017 16:47:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1d341786aa181b9054e80f1bdf42fa3d46f25c1a1749a76cc15647df7f662`  
		Last Modified: Thu, 31 Aug 2017 16:47:52 GMT  
		Size: 7.2 MB (7228751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8571d0a426bc18833affd18445552a4bec519ba57bdef5d7bc7ef299382f8c2`  
		Last Modified: Thu, 31 Aug 2017 16:48:15 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06598b7b7255bf13983f31d27cfa8070d3cbbc86bbf6433e70da97e7132f8401`  
		Last Modified: Thu, 31 Aug 2017 16:48:15 GMT  
		Size: 9.4 MB (9360433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b0ee2b2a8318d806bc09872b2079404077088bbefeb125a1347ecd718b0395`  
		Last Modified: Thu, 31 Aug 2017 16:48:14 GMT  
		Size: 4.7 MB (4685106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567ce6c094ccc42c7c9bcdd47951ee9d850627ab3b40149e36acb47a986677fc`  
		Last Modified: Thu, 31 Aug 2017 16:48:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647603884a5256067e48e578f2106faf33db4d4d374927026eb26b91d5749b68`  
		Last Modified: Thu, 31 Aug 2017 16:48:13 GMT  
		Size: 4.7 MB (4684848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65d3388cb5c5bd119766e95963c0b8a3de146e6e1807f19426accde5abd3d5f`  
		Last Modified: Thu, 31 Aug 2017 16:48:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-jessie`

```console
$ docker pull haxe@sha256:8d71258b9c4ffa252b7d0fb8bbe7eecbfdfbc57920fd9ee5083bc09b4f2599ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:a118b61ec4120ba5a0063d54599feafa5ebcfdb6ae87c23f323c09381906dec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123255745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9f71dae0906aa2f7a5910af64de35c85f925af6c9e41541bbfb0360fa296c0`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:59 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:46:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 14 Sep 2017 01:47:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:49:09 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:50:13 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:50:13 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b75f3a4d44501f05d34a910e6f31ae3214600404660c970a0595fb428713e9`  
		Last Modified: Thu, 14 Sep 2017 01:56:52 GMT  
		Size: 485.6 KB (485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8308c30d39a97f9e5147549dc4599703c9163f1a934bcb0669a96687ea07ff7`  
		Last Modified: Thu, 14 Sep 2017 01:56:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e691485be1ddf27fefb979387a0fab2f25db2a5e40bad55c61a9990dc574ab`  
		Last Modified: Thu, 14 Sep 2017 01:56:53 GMT  
		Size: 2.3 MB (2287681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2f8a12b86b69e4ca9e408b471cb836e02eb0c526b6d924d7e858f7f8615a0e`  
		Last Modified: Thu, 14 Sep 2017 01:58:04 GMT  
		Size: 5.4 MB (5395177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-onbuild`

```console
$ docker pull haxe@sha256:d65fabfcb16a660e18abbf29b08775ad5d4c1f1ce5c5189593784d340bfb0170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:978fb391bde14ea1718e4fdb2abc48047aff47e79d3585881ef73d6bcc7b7f41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119614950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b5e6959d1b60f04f31ec05a28bf9a93db523c48291890af9117c582e57d7f8`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:48:31 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:49:07 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:49:07 GMT
CMD ["haxe"]
# Thu, 14 Sep 2017 01:50:18 GMT
RUN mkdir -p /usr/src/app
# Thu, 14 Sep 2017 01:50:18 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 01:50:18 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 14 Sep 2017 01:50:18 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 14 Sep 2017 01:50:19 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 01:50:19 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 14 Sep 2017 01:50:19 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde62b3a26c97f8135f64567a92513b818fd8a77d2d2de875c3a343bef7e6961`  
		Last Modified: Thu, 14 Sep 2017 01:57:29 GMT  
		Size: 5.4 MB (5403931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309daebd10ddff2c07f3f09e54220beefe8eb91c2c5d66b2d7b0883b32feca9a`  
		Last Modified: Thu, 14 Sep 2017 01:58:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-stretch`

```console
$ docker pull haxe@sha256:c2c3119f3185062a5779a10387fcfae38be3001f3301a9326f27800d818a2bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:08437118cef475008fc229ffb4ff31f47fad026824930b102e46f44225525d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119614820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9292d9d7eacacb451ce492144936fb25bf927e733332e8b5f1b24379498c7e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:48:31 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 14 Sep 2017 01:49:07 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:49:07 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde62b3a26c97f8135f64567a92513b818fd8a77d2d2de875c3a343bef7e6961`  
		Last Modified: Thu, 14 Sep 2017 01:57:29 GMT  
		Size: 5.4 MB (5403931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-windowsservercore`

```console
$ docker pull haxe@sha256:1dbfaef81f0592c300c0f9dac4fadbfb6a179f74ac6378970365e791779585e7
```

-	Platforms:
	-	windows; amd64

### `haxe:3.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5330788468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dfa00c3e83f635661d5ca70dadb0463c89da394f702976e3a1c7b13df3f036a`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 31 Aug 2017 16:37:45 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 31 Aug 2017 16:37:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 31 Aug 2017 16:37:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 31 Aug 2017 16:37:53 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 31 Aug 2017 16:37:56 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 31 Aug 2017 16:38:26 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:38:49 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 31 Aug 2017 16:38:53 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 31 Aug 2017 16:39:22 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:41:48 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Thu, 31 Aug 2017 16:43:00 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.3.0-rc1/haxe-3.3.0-rc.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:43:21 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 31 Aug 2017 16:43:25 GMT
ENV HOMEDRIVE=C:
# Thu, 31 Aug 2017 16:43:43 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:43:47 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9edba0156b215ba5e5fa0b8605521c65858923aa698fdee0e8fe8c4a32d38a`  
		Last Modified: Thu, 31 Aug 2017 16:47:58 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85683e5eafad4f9907484aa82a6d89fbbe7ac8eab97b354aa36107680d4469f`  
		Last Modified: Thu, 31 Aug 2017 16:47:57 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af557a3d81d08ce66714919a23ae2ead853398b0d1d5a8b6f3bb76e78adb0a62`  
		Last Modified: Thu, 31 Aug 2017 16:47:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19fd7f9f58e67f80668a62d86d440ff7879119841aed4ccbf92fd022dcb121`  
		Last Modified: Thu, 31 Aug 2017 16:47:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151177ed5fa566a316f7e70f3a851a5d24028274f30578f4a3da88edc76e0fde`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffba7479d406f739c21fb021d302382bc37dab20d75326f8cf1455777f536db7`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4746643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a6c26e357083b80521f0a40a55214e493b7cd10b881013d7d48144317fa60c`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4740964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31041740769a8c2cee39989c8f8649f39eaa604113839ef46b87b3a25ce5d2`  
		Last Modified: Thu, 31 Aug 2017 16:47:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1d341786aa181b9054e80f1bdf42fa3d46f25c1a1749a76cc15647df7f662`  
		Last Modified: Thu, 31 Aug 2017 16:47:52 GMT  
		Size: 7.2 MB (7228751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8571d0a426bc18833affd18445552a4bec519ba57bdef5d7bc7ef299382f8c2`  
		Last Modified: Thu, 31 Aug 2017 16:48:15 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06598b7b7255bf13983f31d27cfa8070d3cbbc86bbf6433e70da97e7132f8401`  
		Last Modified: Thu, 31 Aug 2017 16:48:15 GMT  
		Size: 9.4 MB (9360433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b0ee2b2a8318d806bc09872b2079404077088bbefeb125a1347ecd718b0395`  
		Last Modified: Thu, 31 Aug 2017 16:48:14 GMT  
		Size: 4.7 MB (4685106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567ce6c094ccc42c7c9bcdd47951ee9d850627ab3b40149e36acb47a986677fc`  
		Last Modified: Thu, 31 Aug 2017 16:48:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647603884a5256067e48e578f2106faf33db4d4d374927026eb26b91d5749b68`  
		Last Modified: Thu, 31 Aug 2017 16:48:13 GMT  
		Size: 4.7 MB (4684848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65d3388cb5c5bd119766e95963c0b8a3de146e6e1807f19426accde5abd3d5f`  
		Last Modified: Thu, 31 Aug 2017 16:48:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4`

```console
$ docker pull haxe@sha256:aad0fce727f3a2b9219f1e59fa92a5b335d43a4fa7339d7a58946f8541d90ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4` - linux; amd64

```console
$ docker pull haxe@sha256:a25dae7ec4ae1c4afa993655e73a3667eeb84afd8158bc4e8ea8376127a21731
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120141997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3b22fa518b4ed71ca1083656a94a2039a23029b1b876ce04ba2505d760ec6e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:44:59 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 14 Sep 2017 01:45:39 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:45:40 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0b088fa15cfe724f1740694db3b05d3157564ab2c4ca89a0de35050ce1248`  
		Last Modified: Thu, 14 Sep 2017 01:56:20 GMT  
		Size: 5.9 MB (5931108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2`

```console
$ docker pull haxe@sha256:aad0fce727f3a2b9219f1e59fa92a5b335d43a4fa7339d7a58946f8541d90ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.2` - linux; amd64

```console
$ docker pull haxe@sha256:a25dae7ec4ae1c4afa993655e73a3667eeb84afd8158bc4e8ea8376127a21731
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120141997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3b22fa518b4ed71ca1083656a94a2039a23029b1b876ce04ba2505d760ec6e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:44:59 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 14 Sep 2017 01:45:39 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:45:40 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0b088fa15cfe724f1740694db3b05d3157564ab2c4ca89a0de35050ce1248`  
		Last Modified: Thu, 14 Sep 2017 01:56:20 GMT  
		Size: 5.9 MB (5931108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2-jessie`

```console
$ docker pull haxe@sha256:4ab33e7b02dd29b2abeef9c585fe70a7f61f001871978c3663663a6bb6020b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:14160920b77fc5e70453f3d7c8f621617d327888a78d169b93540e098d952dc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123776977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6c996a0c65bfe11f1109855299b939d822ed283ac6c356116a2b25aa4b7a8a`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:59 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:46:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 14 Sep 2017 01:47:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:47:27 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 14 Sep 2017 01:48:26 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:48:26 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b75f3a4d44501f05d34a910e6f31ae3214600404660c970a0595fb428713e9`  
		Last Modified: Thu, 14 Sep 2017 01:56:52 GMT  
		Size: 485.6 KB (485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8308c30d39a97f9e5147549dc4599703c9163f1a934bcb0669a96687ea07ff7`  
		Last Modified: Thu, 14 Sep 2017 01:56:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e691485be1ddf27fefb979387a0fab2f25db2a5e40bad55c61a9990dc574ab`  
		Last Modified: Thu, 14 Sep 2017 01:56:53 GMT  
		Size: 2.3 MB (2287681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a701388e0ce5f6f25497f8efd28c76a5a45b07eb367320e25af1c9e253545068`  
		Last Modified: Thu, 14 Sep 2017 01:56:56 GMT  
		Size: 5.9 MB (5916409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2-onbuild`

```console
$ docker pull haxe@sha256:337d9f9006c5451015346b42eed444ff9b5803939dcefe779100466fbc8a8a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:19f3eed4cab582d155d9529aa033cf9f22e5dd88a3c694aee5ec90b9d155fa56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120142128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c56593828359f5b9e81e4ee543bb94687a9fb83654eef5764eb94b529dd90a`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:44:59 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 14 Sep 2017 01:45:39 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:45:40 GMT
CMD ["haxe"]
# Thu, 14 Sep 2017 01:48:28 GMT
RUN mkdir -p /usr/src/app
# Thu, 14 Sep 2017 01:48:28 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0b088fa15cfe724f1740694db3b05d3157564ab2c4ca89a0de35050ce1248`  
		Last Modified: Thu, 14 Sep 2017 01:56:20 GMT  
		Size: 5.9 MB (5931108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b0d9f338a1819435e2894871ca15087e74174d2c4377e4847d984e0923574b`  
		Last Modified: Thu, 14 Sep 2017 01:57:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2-stretch`

```console
$ docker pull haxe@sha256:aad0fce727f3a2b9219f1e59fa92a5b335d43a4fa7339d7a58946f8541d90ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:a25dae7ec4ae1c4afa993655e73a3667eeb84afd8158bc4e8ea8376127a21731
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120141997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3b22fa518b4ed71ca1083656a94a2039a23029b1b876ce04ba2505d760ec6e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:44:59 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 14 Sep 2017 01:45:39 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:45:40 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0b088fa15cfe724f1740694db3b05d3157564ab2c4ca89a0de35050ce1248`  
		Last Modified: Thu, 14 Sep 2017 01:56:20 GMT  
		Size: 5.9 MB (5931108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2-windowsservercore`

```console
$ docker pull haxe@sha256:e3bf5abc99fa859c5e9d36c5bbe25535e294b587558437caa664b6e8cbc12334
```

-	Platforms:
	-	windows; amd64

### `haxe:3.4.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5330994540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0394bd7912fe92d28b39a5938247241ccd808d57a745d8c3b0ae660725cca47`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 31 Aug 2017 16:37:45 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 31 Aug 2017 16:37:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 31 Aug 2017 16:37:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 31 Aug 2017 16:37:53 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 31 Aug 2017 16:37:56 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 31 Aug 2017 16:38:26 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:38:49 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 31 Aug 2017 16:38:53 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 31 Aug 2017 16:39:22 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:39:25 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 31 Aug 2017 16:40:55 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.4.2/haxe-3.4.2-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (8251bac3e58abebfd4f6618a8b036dc83ae7309a3e11d622ad4132f1442cc38d) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '8251bac3e58abebfd4f6618a8b036dc83ae7309a3e11d622ad4132f1442cc38d') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:41:18 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 31 Aug 2017 16:41:22 GMT
ENV HOMEDRIVE=C:
# Thu, 31 Aug 2017 16:41:42 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:41:45 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9edba0156b215ba5e5fa0b8605521c65858923aa698fdee0e8fe8c4a32d38a`  
		Last Modified: Thu, 31 Aug 2017 16:47:58 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85683e5eafad4f9907484aa82a6d89fbbe7ac8eab97b354aa36107680d4469f`  
		Last Modified: Thu, 31 Aug 2017 16:47:57 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af557a3d81d08ce66714919a23ae2ead853398b0d1d5a8b6f3bb76e78adb0a62`  
		Last Modified: Thu, 31 Aug 2017 16:47:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19fd7f9f58e67f80668a62d86d440ff7879119841aed4ccbf92fd022dcb121`  
		Last Modified: Thu, 31 Aug 2017 16:47:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151177ed5fa566a316f7e70f3a851a5d24028274f30578f4a3da88edc76e0fde`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffba7479d406f739c21fb021d302382bc37dab20d75326f8cf1455777f536db7`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4746643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a6c26e357083b80521f0a40a55214e493b7cd10b881013d7d48144317fa60c`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4740964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31041740769a8c2cee39989c8f8649f39eaa604113839ef46b87b3a25ce5d2`  
		Last Modified: Thu, 31 Aug 2017 16:47:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1d341786aa181b9054e80f1bdf42fa3d46f25c1a1749a76cc15647df7f662`  
		Last Modified: Thu, 31 Aug 2017 16:47:52 GMT  
		Size: 7.2 MB (7228751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ae2687885ea99e3b73e5b6a47eeaca40aeb5c008f3d4e5887b2a6a6504771a`  
		Last Modified: Thu, 31 Aug 2017 16:47:49 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18c753b6581529a186a8116e2d911e00e25988da7b669d98bf6a20f613da95e`  
		Last Modified: Thu, 31 Aug 2017 16:47:49 GMT  
		Size: 9.6 MB (9567639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90f23ef1e844ecfce4bb0ca57091ea335c2b32841a41414510a73254147309d`  
		Last Modified: Thu, 31 Aug 2017 16:47:48 GMT  
		Size: 4.7 MB (4684496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ba0c591420356ddf8ee148653bf49088d8eb1056a3829c1094f528527fb582`  
		Last Modified: Thu, 31 Aug 2017 16:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad7af851a98ca1b8b83c5f645ead8b8ee6011f573629bf35036dd2a551aa891`  
		Last Modified: Thu, 31 Aug 2017 16:47:47 GMT  
		Size: 4.7 MB (4684314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efb6f2c24298222b84ea23cbe8a3b900046bd0030422d3c46e1ef2773e0bb18`  
		Last Modified: Thu, 31 Aug 2017 16:47:45 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-jessie`

```console
$ docker pull haxe@sha256:4ab33e7b02dd29b2abeef9c585fe70a7f61f001871978c3663663a6bb6020b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:14160920b77fc5e70453f3d7c8f621617d327888a78d169b93540e098d952dc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123776977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6c996a0c65bfe11f1109855299b939d822ed283ac6c356116a2b25aa4b7a8a`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:45:59 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:46:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 14 Sep 2017 01:47:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:47:27 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 14 Sep 2017 01:48:26 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:48:26 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b75f3a4d44501f05d34a910e6f31ae3214600404660c970a0595fb428713e9`  
		Last Modified: Thu, 14 Sep 2017 01:56:52 GMT  
		Size: 485.6 KB (485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8308c30d39a97f9e5147549dc4599703c9163f1a934bcb0669a96687ea07ff7`  
		Last Modified: Thu, 14 Sep 2017 01:56:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e691485be1ddf27fefb979387a0fab2f25db2a5e40bad55c61a9990dc574ab`  
		Last Modified: Thu, 14 Sep 2017 01:56:53 GMT  
		Size: 2.3 MB (2287681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a701388e0ce5f6f25497f8efd28c76a5a45b07eb367320e25af1c9e253545068`  
		Last Modified: Thu, 14 Sep 2017 01:56:56 GMT  
		Size: 5.9 MB (5916409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-onbuild`

```console
$ docker pull haxe@sha256:337d9f9006c5451015346b42eed444ff9b5803939dcefe779100466fbc8a8a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:19f3eed4cab582d155d9529aa033cf9f22e5dd88a3c694aee5ec90b9d155fa56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120142128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c56593828359f5b9e81e4ee543bb94687a9fb83654eef5764eb94b529dd90a`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:44:59 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 14 Sep 2017 01:45:39 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:45:40 GMT
CMD ["haxe"]
# Thu, 14 Sep 2017 01:48:28 GMT
RUN mkdir -p /usr/src/app
# Thu, 14 Sep 2017 01:48:28 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 14 Sep 2017 01:48:29 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0b088fa15cfe724f1740694db3b05d3157564ab2c4ca89a0de35050ce1248`  
		Last Modified: Thu, 14 Sep 2017 01:56:20 GMT  
		Size: 5.9 MB (5931108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b0d9f338a1819435e2894871ca15087e74174d2c4377e4847d984e0923574b`  
		Last Modified: Thu, 14 Sep 2017 01:57:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-stretch`

```console
$ docker pull haxe@sha256:aad0fce727f3a2b9219f1e59fa92a5b335d43a4fa7339d7a58946f8541d90ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:a25dae7ec4ae1c4afa993655e73a3667eeb84afd8158bc4e8ea8376127a21731
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120141997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3b22fa518b4ed71ca1083656a94a2039a23029b1b876ce04ba2505d760ec6e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:44:59 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 14 Sep 2017 01:45:39 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:45:40 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0b088fa15cfe724f1740694db3b05d3157564ab2c4ca89a0de35050ce1248`  
		Last Modified: Thu, 14 Sep 2017 01:56:20 GMT  
		Size: 5.9 MB (5931108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-windowsservercore`

```console
$ docker pull haxe@sha256:e3bf5abc99fa859c5e9d36c5bbe25535e294b587558437caa664b6e8cbc12334
```

-	Platforms:
	-	windows; amd64

### `haxe:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5330994540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0394bd7912fe92d28b39a5938247241ccd808d57a745d8c3b0ae660725cca47`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 31 Aug 2017 16:37:45 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 31 Aug 2017 16:37:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 31 Aug 2017 16:37:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 31 Aug 2017 16:37:53 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 31 Aug 2017 16:37:56 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 31 Aug 2017 16:38:26 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:38:49 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 31 Aug 2017 16:38:53 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 31 Aug 2017 16:39:22 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:39:25 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 31 Aug 2017 16:40:55 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.4.2/haxe-3.4.2-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (8251bac3e58abebfd4f6618a8b036dc83ae7309a3e11d622ad4132f1442cc38d) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '8251bac3e58abebfd4f6618a8b036dc83ae7309a3e11d622ad4132f1442cc38d') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Thu, 31 Aug 2017 16:41:18 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 31 Aug 2017 16:41:22 GMT
ENV HOMEDRIVE=C:
# Thu, 31 Aug 2017 16:41:42 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 31 Aug 2017 16:41:45 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9edba0156b215ba5e5fa0b8605521c65858923aa698fdee0e8fe8c4a32d38a`  
		Last Modified: Thu, 31 Aug 2017 16:47:58 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85683e5eafad4f9907484aa82a6d89fbbe7ac8eab97b354aa36107680d4469f`  
		Last Modified: Thu, 31 Aug 2017 16:47:57 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af557a3d81d08ce66714919a23ae2ead853398b0d1d5a8b6f3bb76e78adb0a62`  
		Last Modified: Thu, 31 Aug 2017 16:47:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19fd7f9f58e67f80668a62d86d440ff7879119841aed4ccbf92fd022dcb121`  
		Last Modified: Thu, 31 Aug 2017 16:47:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151177ed5fa566a316f7e70f3a851a5d24028274f30578f4a3da88edc76e0fde`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffba7479d406f739c21fb021d302382bc37dab20d75326f8cf1455777f536db7`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4746643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a6c26e357083b80521f0a40a55214e493b7cd10b881013d7d48144317fa60c`  
		Last Modified: Thu, 31 Aug 2017 16:47:54 GMT  
		Size: 4.7 MB (4740964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31041740769a8c2cee39989c8f8649f39eaa604113839ef46b87b3a25ce5d2`  
		Last Modified: Thu, 31 Aug 2017 16:47:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1d341786aa181b9054e80f1bdf42fa3d46f25c1a1749a76cc15647df7f662`  
		Last Modified: Thu, 31 Aug 2017 16:47:52 GMT  
		Size: 7.2 MB (7228751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ae2687885ea99e3b73e5b6a47eeaca40aeb5c008f3d4e5887b2a6a6504771a`  
		Last Modified: Thu, 31 Aug 2017 16:47:49 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18c753b6581529a186a8116e2d911e00e25988da7b669d98bf6a20f613da95e`  
		Last Modified: Thu, 31 Aug 2017 16:47:49 GMT  
		Size: 9.6 MB (9567639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90f23ef1e844ecfce4bb0ca57091ea335c2b32841a41414510a73254147309d`  
		Last Modified: Thu, 31 Aug 2017 16:47:48 GMT  
		Size: 4.7 MB (4684496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ba0c591420356ddf8ee148653bf49088d8eb1056a3829c1094f528527fb582`  
		Last Modified: Thu, 31 Aug 2017 16:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad7af851a98ca1b8b83c5f645ead8b8ee6011f573629bf35036dd2a551aa891`  
		Last Modified: Thu, 31 Aug 2017 16:47:47 GMT  
		Size: 4.7 MB (4684314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efb6f2c24298222b84ea23cbe8a3b900046bd0030422d3c46e1ef2773e0bb18`  
		Last Modified: Thu, 31 Aug 2017 16:47:45 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:latest`

```console
$ docker pull haxe@sha256:aad0fce727f3a2b9219f1e59fa92a5b335d43a4fa7339d7a58946f8541d90ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:latest` - linux; amd64

```console
$ docker pull haxe@sha256:a25dae7ec4ae1c4afa993655e73a3667eeb84afd8158bc4e8ea8376127a21731
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120141997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3b22fa518b4ed71ca1083656a94a2039a23029b1b876ce04ba2505d760ec6e`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:43:44 GMT
ENV NEKO_VERSION=2.1.0
# Thu, 14 Sep 2017 01:44:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 14 Sep 2017 01:44:59 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 14 Sep 2017 01:45:39 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 14 Sep 2017 01:45:40 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f797d8aafef5c1c7dba6c2fda27db31d1ab771acd6b406764ed0a310fef54b88`  
		Last Modified: Thu, 14 Sep 2017 01:56:17 GMT  
		Size: 568.0 KB (568041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53b5d17f1d1612b8e057af09191c27c27190723968ea5bcd17939311caa094`  
		Last Modified: Thu, 14 Sep 2017 01:56:19 GMT  
		Size: 2.8 MB (2764040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0b088fa15cfe724f1740694db3b05d3157564ab2c4ca89a0de35050ce1248`  
		Last Modified: Thu, 14 Sep 2017 01:56:20 GMT  
		Size: 5.9 MB (5931108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
