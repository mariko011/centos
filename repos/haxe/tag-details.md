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
-	[`haxe:3.4.3`](#haxe343)
-	[`haxe:3.4.3-jessie`](#haxe343-jessie)
-	[`haxe:3.4.3-onbuild`](#haxe343-onbuild)
-	[`haxe:3.4.3-stretch`](#haxe343-stretch)
-	[`haxe:3.4.3-windowsservercore`](#haxe343-windowsservercore)
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
$ docker pull haxe@sha256:28c91e2257b2f1557f1531c901a580828a39a24de9f208df96115143f779d201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `haxe:3.1.3-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull haxe@sha256:8574c9d1f5081b5b26f395888820207edfae9988ace1439190c43080918d6c7d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5370948897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce716008279d6a4ba02f163c5801d47c2062ece0bf7cc9e7b66da9106046bed`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:26:26 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Fri, 15 Sep 2017 16:26:28 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Fri, 15 Sep 2017 16:26:32 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Fri, 15 Sep 2017 16:26:35 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Fri, 15 Sep 2017 16:26:38 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Fri, 15 Sep 2017 16:27:00 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:27:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Fri, 15 Sep 2017 16:27:28 GMT
ENV NEKO_VERSION=2.1.0
# Fri, 15 Sep 2017 16:27:57 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:33:52 GMT
ENV HAXE_VERSION=3.1.3
# Fri, 15 Sep 2017 16:34:52 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.1.3/haxe-3.1.3-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (4cf84cdbf7960a61ae70b0d9166c6f9bde16388c3b81e54af91446f4c9e44ae4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '4cf84cdbf7960a61ae70b0d9166c6f9bde16388c3b81e54af91446f4c9e44ae4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:35:13 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Fri, 15 Sep 2017 16:35:17 GMT
ENV HOMEDRIVE=C:
# Fri, 15 Sep 2017 16:35:41 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:35:45 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728ebf20f1d488bae7716c20f8bab7cdd1ccff21f33f4606e4e96bc2b271a1`  
		Last Modified: Fri, 15 Sep 2017 16:36:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d741ea3d1f02fe96ac7b3efad0e6ccadf54ae754b9ed1a14ce59a9c6dc63fec`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89fbedbf9f3792f9f03ca9aa05a3392bd56c975f98cdd12a64f407c08ed56`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcbd4a34fc354dd45063bebd2fca9650414991cbec7946ba460470acf26147`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa770c707458d8bf7cb37045922630691222bdacc760f3656002f8c0b8061cbb`  
		Last Modified: Fri, 15 Sep 2017 16:36:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb95f61c8e5d987abd6d3a58393ae0ceda03dc4e02af5f37a7ed378b5b392db`  
		Last Modified: Fri, 15 Sep 2017 16:36:17 GMT  
		Size: 4.8 MB (4839162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775105993aecc2e731a6105990530b49beab9fb90e7f8fb21bf1967634cbd83`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 4.8 MB (4840921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda97876441887037eb3f4185b53d5fb5aee5e3292dee19179706eece5f018a`  
		Last Modified: Fri, 15 Sep 2017 16:36:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001c2bdec71820efb627cf0bef8668a5f77c77c7dfa6c6332c9c9c2882c3858`  
		Last Modified: Fri, 15 Sep 2017 16:36:13 GMT  
		Size: 7.3 MB (7311747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9980c8ba2e2e2d1ad8ff227806c4c2b8c71297b9e9deff472bbe7aab6a91d`  
		Last Modified: Fri, 15 Sep 2017 16:36:52 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47307ecd09e0b44540e2cc4e7f229d12e7eaac7d7ee8443b94e0b1977431446`  
		Last Modified: Fri, 15 Sep 2017 16:36:53 GMT  
		Size: 8.5 MB (8518425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b579e678b847d2cc60b84646e5cddaa3e5c08e81276419cab66b3ed39ca5ee`  
		Last Modified: Fri, 15 Sep 2017 16:36:51 GMT  
		Size: 4.8 MB (4808232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793f4eaa1d2d2948c6450694876d9611d7bf0318dac595ae0fc93d5ccfe94468`  
		Last Modified: Fri, 15 Sep 2017 16:36:48 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f9d29f7898f8902f4cb4c123ed0c715e2344ff2c42dddd7f6b6e53f31fd637`  
		Last Modified: Fri, 15 Sep 2017 16:36:51 GMT  
		Size: 4.8 MB (4809760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5247591157cd077c81520c64fba4a9d4ccc50f575d09d6b9412dd8eae1d43d6`  
		Last Modified: Fri, 15 Sep 2017 16:36:49 GMT  
		Size: 1.2 KB (1225 bytes)  
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
$ docker pull haxe@sha256:28c91e2257b2f1557f1531c901a580828a39a24de9f208df96115143f779d201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `haxe:3.1-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull haxe@sha256:8574c9d1f5081b5b26f395888820207edfae9988ace1439190c43080918d6c7d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5370948897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce716008279d6a4ba02f163c5801d47c2062ece0bf7cc9e7b66da9106046bed`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:26:26 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Fri, 15 Sep 2017 16:26:28 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Fri, 15 Sep 2017 16:26:32 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Fri, 15 Sep 2017 16:26:35 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Fri, 15 Sep 2017 16:26:38 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Fri, 15 Sep 2017 16:27:00 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:27:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Fri, 15 Sep 2017 16:27:28 GMT
ENV NEKO_VERSION=2.1.0
# Fri, 15 Sep 2017 16:27:57 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:33:52 GMT
ENV HAXE_VERSION=3.1.3
# Fri, 15 Sep 2017 16:34:52 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.1.3/haxe-3.1.3-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (4cf84cdbf7960a61ae70b0d9166c6f9bde16388c3b81e54af91446f4c9e44ae4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '4cf84cdbf7960a61ae70b0d9166c6f9bde16388c3b81e54af91446f4c9e44ae4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:35:13 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Fri, 15 Sep 2017 16:35:17 GMT
ENV HOMEDRIVE=C:
# Fri, 15 Sep 2017 16:35:41 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:35:45 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728ebf20f1d488bae7716c20f8bab7cdd1ccff21f33f4606e4e96bc2b271a1`  
		Last Modified: Fri, 15 Sep 2017 16:36:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d741ea3d1f02fe96ac7b3efad0e6ccadf54ae754b9ed1a14ce59a9c6dc63fec`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89fbedbf9f3792f9f03ca9aa05a3392bd56c975f98cdd12a64f407c08ed56`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcbd4a34fc354dd45063bebd2fca9650414991cbec7946ba460470acf26147`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa770c707458d8bf7cb37045922630691222bdacc760f3656002f8c0b8061cbb`  
		Last Modified: Fri, 15 Sep 2017 16:36:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb95f61c8e5d987abd6d3a58393ae0ceda03dc4e02af5f37a7ed378b5b392db`  
		Last Modified: Fri, 15 Sep 2017 16:36:17 GMT  
		Size: 4.8 MB (4839162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775105993aecc2e731a6105990530b49beab9fb90e7f8fb21bf1967634cbd83`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 4.8 MB (4840921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda97876441887037eb3f4185b53d5fb5aee5e3292dee19179706eece5f018a`  
		Last Modified: Fri, 15 Sep 2017 16:36:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001c2bdec71820efb627cf0bef8668a5f77c77c7dfa6c6332c9c9c2882c3858`  
		Last Modified: Fri, 15 Sep 2017 16:36:13 GMT  
		Size: 7.3 MB (7311747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9980c8ba2e2e2d1ad8ff227806c4c2b8c71297b9e9deff472bbe7aab6a91d`  
		Last Modified: Fri, 15 Sep 2017 16:36:52 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47307ecd09e0b44540e2cc4e7f229d12e7eaac7d7ee8443b94e0b1977431446`  
		Last Modified: Fri, 15 Sep 2017 16:36:53 GMT  
		Size: 8.5 MB (8518425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b579e678b847d2cc60b84646e5cddaa3e5c08e81276419cab66b3ed39ca5ee`  
		Last Modified: Fri, 15 Sep 2017 16:36:51 GMT  
		Size: 4.8 MB (4808232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793f4eaa1d2d2948c6450694876d9611d7bf0318dac595ae0fc93d5ccfe94468`  
		Last Modified: Fri, 15 Sep 2017 16:36:48 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f9d29f7898f8902f4cb4c123ed0c715e2344ff2c42dddd7f6b6e53f31fd637`  
		Last Modified: Fri, 15 Sep 2017 16:36:51 GMT  
		Size: 4.8 MB (4809760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5247591157cd077c81520c64fba4a9d4ccc50f575d09d6b9412dd8eae1d43d6`  
		Last Modified: Fri, 15 Sep 2017 16:36:49 GMT  
		Size: 1.2 KB (1225 bytes)  
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
$ docker pull haxe@sha256:c1529eb69a0cb9e919bcda5bcf1ec1e22b45c6174728f4e0a71eb22b2082fd56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `haxe:3.2.1-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull haxe@sha256:84e2f279f0fbed546e7f1c55ac8d624bf5b444be77cee247924a3d9452605bd1
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5371180533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47b0eb56235da47a6b539beeddb129c29a7a091a7898bb04cfecf6daa2cfaf7`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:26:26 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Fri, 15 Sep 2017 16:26:28 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Fri, 15 Sep 2017 16:26:32 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Fri, 15 Sep 2017 16:26:35 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Fri, 15 Sep 2017 16:26:38 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Fri, 15 Sep 2017 16:27:00 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:27:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Fri, 15 Sep 2017 16:27:28 GMT
ENV NEKO_VERSION=2.1.0
# Fri, 15 Sep 2017 16:27:57 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:31:42 GMT
ENV HAXE_VERSION=3.2.1
# Fri, 15 Sep 2017 16:32:47 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.2.1/haxe-3.2.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (af57d42ca474bba826426e9403b2cb21c210d56addc8bbc0e8fafa88b3660db3) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'af57d42ca474bba826426e9403b2cb21c210d56addc8bbc0e8fafa88b3660db3') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:33:12 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Fri, 15 Sep 2017 16:33:18 GMT
ENV HOMEDRIVE=C:
# Fri, 15 Sep 2017 16:33:41 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:33:47 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728ebf20f1d488bae7716c20f8bab7cdd1ccff21f33f4606e4e96bc2b271a1`  
		Last Modified: Fri, 15 Sep 2017 16:36:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d741ea3d1f02fe96ac7b3efad0e6ccadf54ae754b9ed1a14ce59a9c6dc63fec`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89fbedbf9f3792f9f03ca9aa05a3392bd56c975f98cdd12a64f407c08ed56`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcbd4a34fc354dd45063bebd2fca9650414991cbec7946ba460470acf26147`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa770c707458d8bf7cb37045922630691222bdacc760f3656002f8c0b8061cbb`  
		Last Modified: Fri, 15 Sep 2017 16:36:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb95f61c8e5d987abd6d3a58393ae0ceda03dc4e02af5f37a7ed378b5b392db`  
		Last Modified: Fri, 15 Sep 2017 16:36:17 GMT  
		Size: 4.8 MB (4839162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775105993aecc2e731a6105990530b49beab9fb90e7f8fb21bf1967634cbd83`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 4.8 MB (4840921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda97876441887037eb3f4185b53d5fb5aee5e3292dee19179706eece5f018a`  
		Last Modified: Fri, 15 Sep 2017 16:36:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001c2bdec71820efb627cf0bef8668a5f77c77c7dfa6c6332c9c9c2882c3858`  
		Last Modified: Fri, 15 Sep 2017 16:36:13 GMT  
		Size: 7.3 MB (7311747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9003a69653cb4424ad7d106ebc0974285f1bfdbbefdb9bee0e785a1ebc3ca1`  
		Last Modified: Fri, 15 Sep 2017 16:36:36 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9d0351ed9d86a44aec5f8001b8c5d997a5d433e915f7dbbd16030ab346ff37`  
		Last Modified: Fri, 15 Sep 2017 16:36:36 GMT  
		Size: 8.8 MB (8815798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef17056767ba8db59dce80057b101af8d554a8f37e508cd308e4ee11596bc76`  
		Last Modified: Fri, 15 Sep 2017 16:36:36 GMT  
		Size: 4.8 MB (4776244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32df10410ffbbc1750da925f9b11a5a9dd227fe93aab46c650e5a4722a5368`  
		Last Modified: Fri, 15 Sep 2017 16:36:33 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e1d751aa4bea8437fed9e833a994d825c044bb7efda8c8719f1e0db48beec5`  
		Last Modified: Fri, 15 Sep 2017 16:36:34 GMT  
		Size: 4.8 MB (4776003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e014223d997f9103c635d9d41f73165207fa1ec6dd9617e6d23135a500a55a`  
		Last Modified: Fri, 15 Sep 2017 16:36:32 GMT  
		Size: 1.2 KB (1236 bytes)  
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
$ docker pull haxe@sha256:c1529eb69a0cb9e919bcda5bcf1ec1e22b45c6174728f4e0a71eb22b2082fd56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `haxe:3.2-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull haxe@sha256:84e2f279f0fbed546e7f1c55ac8d624bf5b444be77cee247924a3d9452605bd1
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5371180533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47b0eb56235da47a6b539beeddb129c29a7a091a7898bb04cfecf6daa2cfaf7`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:26:26 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Fri, 15 Sep 2017 16:26:28 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Fri, 15 Sep 2017 16:26:32 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Fri, 15 Sep 2017 16:26:35 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Fri, 15 Sep 2017 16:26:38 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Fri, 15 Sep 2017 16:27:00 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:27:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Fri, 15 Sep 2017 16:27:28 GMT
ENV NEKO_VERSION=2.1.0
# Fri, 15 Sep 2017 16:27:57 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:31:42 GMT
ENV HAXE_VERSION=3.2.1
# Fri, 15 Sep 2017 16:32:47 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.2.1/haxe-3.2.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (af57d42ca474bba826426e9403b2cb21c210d56addc8bbc0e8fafa88b3660db3) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'af57d42ca474bba826426e9403b2cb21c210d56addc8bbc0e8fafa88b3660db3') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:33:12 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Fri, 15 Sep 2017 16:33:18 GMT
ENV HOMEDRIVE=C:
# Fri, 15 Sep 2017 16:33:41 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:33:47 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728ebf20f1d488bae7716c20f8bab7cdd1ccff21f33f4606e4e96bc2b271a1`  
		Last Modified: Fri, 15 Sep 2017 16:36:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d741ea3d1f02fe96ac7b3efad0e6ccadf54ae754b9ed1a14ce59a9c6dc63fec`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89fbedbf9f3792f9f03ca9aa05a3392bd56c975f98cdd12a64f407c08ed56`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcbd4a34fc354dd45063bebd2fca9650414991cbec7946ba460470acf26147`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa770c707458d8bf7cb37045922630691222bdacc760f3656002f8c0b8061cbb`  
		Last Modified: Fri, 15 Sep 2017 16:36:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb95f61c8e5d987abd6d3a58393ae0ceda03dc4e02af5f37a7ed378b5b392db`  
		Last Modified: Fri, 15 Sep 2017 16:36:17 GMT  
		Size: 4.8 MB (4839162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775105993aecc2e731a6105990530b49beab9fb90e7f8fb21bf1967634cbd83`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 4.8 MB (4840921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda97876441887037eb3f4185b53d5fb5aee5e3292dee19179706eece5f018a`  
		Last Modified: Fri, 15 Sep 2017 16:36:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001c2bdec71820efb627cf0bef8668a5f77c77c7dfa6c6332c9c9c2882c3858`  
		Last Modified: Fri, 15 Sep 2017 16:36:13 GMT  
		Size: 7.3 MB (7311747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9003a69653cb4424ad7d106ebc0974285f1bfdbbefdb9bee0e785a1ebc3ca1`  
		Last Modified: Fri, 15 Sep 2017 16:36:36 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9d0351ed9d86a44aec5f8001b8c5d997a5d433e915f7dbbd16030ab346ff37`  
		Last Modified: Fri, 15 Sep 2017 16:36:36 GMT  
		Size: 8.8 MB (8815798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef17056767ba8db59dce80057b101af8d554a8f37e508cd308e4ee11596bc76`  
		Last Modified: Fri, 15 Sep 2017 16:36:36 GMT  
		Size: 4.8 MB (4776244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32df10410ffbbc1750da925f9b11a5a9dd227fe93aab46c650e5a4722a5368`  
		Last Modified: Fri, 15 Sep 2017 16:36:33 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e1d751aa4bea8437fed9e833a994d825c044bb7efda8c8719f1e0db48beec5`  
		Last Modified: Fri, 15 Sep 2017 16:36:34 GMT  
		Size: 4.8 MB (4776003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e014223d997f9103c635d9d41f73165207fa1ec6dd9617e6d23135a500a55a`  
		Last Modified: Fri, 15 Sep 2017 16:36:32 GMT  
		Size: 1.2 KB (1236 bytes)  
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
$ docker pull haxe@sha256:bd160322790d8deb7dba93f47103949031c5fe67877b11a50de64bb015afaefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `haxe:3.3.0-rc.1-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull haxe@sha256:46ea9849fe92c969283f4e751399a58c9fceaf956677a9c4fa242841797077c7
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5371814629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc9056ac83c9fde644196700548b2364734f782a93ea552a7f481ff3eeb7a4a`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:26:26 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Fri, 15 Sep 2017 16:26:28 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Fri, 15 Sep 2017 16:26:32 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Fri, 15 Sep 2017 16:26:35 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Fri, 15 Sep 2017 16:26:38 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Fri, 15 Sep 2017 16:27:00 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:27:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Fri, 15 Sep 2017 16:27:28 GMT
ENV NEKO_VERSION=2.1.0
# Fri, 15 Sep 2017 16:27:57 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:29:16 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Fri, 15 Sep 2017 16:30:33 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.3.0-rc1/haxe-3.3.0-rc.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:30:54 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Fri, 15 Sep 2017 16:30:59 GMT
ENV HOMEDRIVE=C:
# Fri, 15 Sep 2017 16:31:24 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:31:29 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728ebf20f1d488bae7716c20f8bab7cdd1ccff21f33f4606e4e96bc2b271a1`  
		Last Modified: Fri, 15 Sep 2017 16:36:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d741ea3d1f02fe96ac7b3efad0e6ccadf54ae754b9ed1a14ce59a9c6dc63fec`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89fbedbf9f3792f9f03ca9aa05a3392bd56c975f98cdd12a64f407c08ed56`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcbd4a34fc354dd45063bebd2fca9650414991cbec7946ba460470acf26147`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa770c707458d8bf7cb37045922630691222bdacc760f3656002f8c0b8061cbb`  
		Last Modified: Fri, 15 Sep 2017 16:36:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb95f61c8e5d987abd6d3a58393ae0ceda03dc4e02af5f37a7ed378b5b392db`  
		Last Modified: Fri, 15 Sep 2017 16:36:17 GMT  
		Size: 4.8 MB (4839162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775105993aecc2e731a6105990530b49beab9fb90e7f8fb21bf1967634cbd83`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 4.8 MB (4840921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda97876441887037eb3f4185b53d5fb5aee5e3292dee19179706eece5f018a`  
		Last Modified: Fri, 15 Sep 2017 16:36:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001c2bdec71820efb627cf0bef8668a5f77c77c7dfa6c6332c9c9c2882c3858`  
		Last Modified: Fri, 15 Sep 2017 16:36:13 GMT  
		Size: 7.3 MB (7311747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba05a7c28394b6007afcd40525008be60109d5ee67147b0ff511b9bb3ed8db0`  
		Last Modified: Fri, 15 Sep 2017 16:36:11 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83274e78419ea3db023bfce442ddc4d81da84ba3f896592f9ddc0539f5f84d6`  
		Last Modified: Fri, 15 Sep 2017 16:36:11 GMT  
		Size: 9.4 MB (9449045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a246c027f45a631aed68fba75183a53d9421b68f4b0b9fc4fec0672485530a`  
		Last Modified: Fri, 15 Sep 2017 16:36:11 GMT  
		Size: 4.8 MB (4776681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0ad720af9824c6578ae4b0619acfa08757679a6409513d980ade08cae8beb0`  
		Last Modified: Fri, 15 Sep 2017 16:36:06 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a17845dce35e9adfececd848c73550927b4e59e0d95c73930fca065cef02535`  
		Last Modified: Fri, 15 Sep 2017 16:36:09 GMT  
		Size: 4.8 MB (4776430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f267367beff93e6c971b28a3f345e9887da7aae73ade173b7dd7a11fe52c74`  
		Last Modified: Fri, 15 Sep 2017 16:36:08 GMT  
		Size: 1.2 KB (1216 bytes)  
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
$ docker pull haxe@sha256:bd160322790d8deb7dba93f47103949031c5fe67877b11a50de64bb015afaefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `haxe:3.3.0-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull haxe@sha256:46ea9849fe92c969283f4e751399a58c9fceaf956677a9c4fa242841797077c7
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5371814629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc9056ac83c9fde644196700548b2364734f782a93ea552a7f481ff3eeb7a4a`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:26:26 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Fri, 15 Sep 2017 16:26:28 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Fri, 15 Sep 2017 16:26:32 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Fri, 15 Sep 2017 16:26:35 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Fri, 15 Sep 2017 16:26:38 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Fri, 15 Sep 2017 16:27:00 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:27:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Fri, 15 Sep 2017 16:27:28 GMT
ENV NEKO_VERSION=2.1.0
# Fri, 15 Sep 2017 16:27:57 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:29:16 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Fri, 15 Sep 2017 16:30:33 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.3.0-rc1/haxe-3.3.0-rc.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:30:54 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Fri, 15 Sep 2017 16:30:59 GMT
ENV HOMEDRIVE=C:
# Fri, 15 Sep 2017 16:31:24 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:31:29 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728ebf20f1d488bae7716c20f8bab7cdd1ccff21f33f4606e4e96bc2b271a1`  
		Last Modified: Fri, 15 Sep 2017 16:36:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d741ea3d1f02fe96ac7b3efad0e6ccadf54ae754b9ed1a14ce59a9c6dc63fec`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89fbedbf9f3792f9f03ca9aa05a3392bd56c975f98cdd12a64f407c08ed56`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcbd4a34fc354dd45063bebd2fca9650414991cbec7946ba460470acf26147`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa770c707458d8bf7cb37045922630691222bdacc760f3656002f8c0b8061cbb`  
		Last Modified: Fri, 15 Sep 2017 16:36:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb95f61c8e5d987abd6d3a58393ae0ceda03dc4e02af5f37a7ed378b5b392db`  
		Last Modified: Fri, 15 Sep 2017 16:36:17 GMT  
		Size: 4.8 MB (4839162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775105993aecc2e731a6105990530b49beab9fb90e7f8fb21bf1967634cbd83`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 4.8 MB (4840921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda97876441887037eb3f4185b53d5fb5aee5e3292dee19179706eece5f018a`  
		Last Modified: Fri, 15 Sep 2017 16:36:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001c2bdec71820efb627cf0bef8668a5f77c77c7dfa6c6332c9c9c2882c3858`  
		Last Modified: Fri, 15 Sep 2017 16:36:13 GMT  
		Size: 7.3 MB (7311747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba05a7c28394b6007afcd40525008be60109d5ee67147b0ff511b9bb3ed8db0`  
		Last Modified: Fri, 15 Sep 2017 16:36:11 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83274e78419ea3db023bfce442ddc4d81da84ba3f896592f9ddc0539f5f84d6`  
		Last Modified: Fri, 15 Sep 2017 16:36:11 GMT  
		Size: 9.4 MB (9449045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a246c027f45a631aed68fba75183a53d9421b68f4b0b9fc4fec0672485530a`  
		Last Modified: Fri, 15 Sep 2017 16:36:11 GMT  
		Size: 4.8 MB (4776681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0ad720af9824c6578ae4b0619acfa08757679a6409513d980ade08cae8beb0`  
		Last Modified: Fri, 15 Sep 2017 16:36:06 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a17845dce35e9adfececd848c73550927b4e59e0d95c73930fca065cef02535`  
		Last Modified: Fri, 15 Sep 2017 16:36:09 GMT  
		Size: 4.8 MB (4776430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f267367beff93e6c971b28a3f345e9887da7aae73ade173b7dd7a11fe52c74`  
		Last Modified: Fri, 15 Sep 2017 16:36:08 GMT  
		Size: 1.2 KB (1216 bytes)  
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
$ docker pull haxe@sha256:bd160322790d8deb7dba93f47103949031c5fe67877b11a50de64bb015afaefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `haxe:3.3-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull haxe@sha256:46ea9849fe92c969283f4e751399a58c9fceaf956677a9c4fa242841797077c7
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5371814629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc9056ac83c9fde644196700548b2364734f782a93ea552a7f481ff3eeb7a4a`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:26:26 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Fri, 15 Sep 2017 16:26:28 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Fri, 15 Sep 2017 16:26:32 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Fri, 15 Sep 2017 16:26:35 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Fri, 15 Sep 2017 16:26:38 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Fri, 15 Sep 2017 16:27:00 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:27:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Fri, 15 Sep 2017 16:27:28 GMT
ENV NEKO_VERSION=2.1.0
# Fri, 15 Sep 2017 16:27:57 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:29:16 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Fri, 15 Sep 2017 16:30:33 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.3.0-rc1/haxe-3.3.0-rc.1-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne 'fa51621132432328a47e5e0416ab3b9f2f734b217a2bc9b650826aae2f12c6f4') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:30:54 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Fri, 15 Sep 2017 16:30:59 GMT
ENV HOMEDRIVE=C:
# Fri, 15 Sep 2017 16:31:24 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:31:29 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728ebf20f1d488bae7716c20f8bab7cdd1ccff21f33f4606e4e96bc2b271a1`  
		Last Modified: Fri, 15 Sep 2017 16:36:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d741ea3d1f02fe96ac7b3efad0e6ccadf54ae754b9ed1a14ce59a9c6dc63fec`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89fbedbf9f3792f9f03ca9aa05a3392bd56c975f98cdd12a64f407c08ed56`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcbd4a34fc354dd45063bebd2fca9650414991cbec7946ba460470acf26147`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa770c707458d8bf7cb37045922630691222bdacc760f3656002f8c0b8061cbb`  
		Last Modified: Fri, 15 Sep 2017 16:36:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb95f61c8e5d987abd6d3a58393ae0ceda03dc4e02af5f37a7ed378b5b392db`  
		Last Modified: Fri, 15 Sep 2017 16:36:17 GMT  
		Size: 4.8 MB (4839162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775105993aecc2e731a6105990530b49beab9fb90e7f8fb21bf1967634cbd83`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 4.8 MB (4840921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda97876441887037eb3f4185b53d5fb5aee5e3292dee19179706eece5f018a`  
		Last Modified: Fri, 15 Sep 2017 16:36:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001c2bdec71820efb627cf0bef8668a5f77c77c7dfa6c6332c9c9c2882c3858`  
		Last Modified: Fri, 15 Sep 2017 16:36:13 GMT  
		Size: 7.3 MB (7311747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba05a7c28394b6007afcd40525008be60109d5ee67147b0ff511b9bb3ed8db0`  
		Last Modified: Fri, 15 Sep 2017 16:36:11 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83274e78419ea3db023bfce442ddc4d81da84ba3f896592f9ddc0539f5f84d6`  
		Last Modified: Fri, 15 Sep 2017 16:36:11 GMT  
		Size: 9.4 MB (9449045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a246c027f45a631aed68fba75183a53d9421b68f4b0b9fc4fec0672485530a`  
		Last Modified: Fri, 15 Sep 2017 16:36:11 GMT  
		Size: 4.8 MB (4776681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0ad720af9824c6578ae4b0619acfa08757679a6409513d980ade08cae8beb0`  
		Last Modified: Fri, 15 Sep 2017 16:36:06 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a17845dce35e9adfececd848c73550927b4e59e0d95c73930fca065cef02535`  
		Last Modified: Fri, 15 Sep 2017 16:36:09 GMT  
		Size: 4.8 MB (4776430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f267367beff93e6c971b28a3f345e9887da7aae73ade173b7dd7a11fe52c74`  
		Last Modified: Fri, 15 Sep 2017 16:36:08 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4`

```console
$ docker pull haxe@sha256:68318afe196075c0f8da22ab1e7b44d9972ffc737668e14893166504bf25b9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4` - linux; amd64

```console
$ docker pull haxe@sha256:14de37448feb9eb8c8f58d96f3c490059fae32b3016b932d6b56814a30ce5e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120183504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfafe171e8cc1a4f7f34b80c39fa545dc24483ff45103f4749116767f2fcc93`
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
# Wed, 27 Sep 2017 17:48:46 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:49:44 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 27 Sep 2017 17:49:45 GMT
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
	-	`sha256:abbe9086d65aef2b522f87f40abc5898cfe6ea523d7437d5eda7bee32255da75`  
		Last Modified: Wed, 27 Sep 2017 17:52:15 GMT  
		Size: 6.0 MB (5972615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.3`

```console
$ docker pull haxe@sha256:68318afe196075c0f8da22ab1e7b44d9972ffc737668e14893166504bf25b9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.3` - linux; amd64

```console
$ docker pull haxe@sha256:14de37448feb9eb8c8f58d96f3c490059fae32b3016b932d6b56814a30ce5e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120183504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfafe171e8cc1a4f7f34b80c39fa545dc24483ff45103f4749116767f2fcc93`
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
# Wed, 27 Sep 2017 17:48:46 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:49:44 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 27 Sep 2017 17:49:45 GMT
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
	-	`sha256:abbe9086d65aef2b522f87f40abc5898cfe6ea523d7437d5eda7bee32255da75`  
		Last Modified: Wed, 27 Sep 2017 17:52:15 GMT  
		Size: 6.0 MB (5972615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.3-jessie`

```console
$ docker pull haxe@sha256:e040b69c35bb8f63df7ef45c78a178209e3987c59216ffd262330a69e53c8cac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.3-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:8083495299dbd61ce6001364f69926540e68c7500e6190bde26dd0c11d5fd71d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123818099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab5f364fe2eae882e8553f063c1279b9652dc55c32d734843915eabc25e1762`
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
# Wed, 27 Sep 2017 17:50:02 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:51:33 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 27 Sep 2017 17:51:34 GMT
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
	-	`sha256:eeafa1fa644f16ba0ff841d6e1fb78b026763828982ca0544edbd38384962703`  
		Last Modified: Wed, 27 Sep 2017 17:53:04 GMT  
		Size: 6.0 MB (5957531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.3-onbuild`

```console
$ docker pull haxe@sha256:fcbdeb75ce2a3cb496a2b39aac76b0da4ce803a7a2e8ac53b64c8775cb554d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.3-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:1ad3c246ef303b2213b579bbb21b429b58aec7fda6c7729830e2e89ddfede9a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120183636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285e485475725d541dc5c20bbf2bd7d7be76cbe441631fdebeef919ee3ec8f78`
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
# Wed, 27 Sep 2017 17:48:46 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:49:44 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 27 Sep 2017 17:49:45 GMT
CMD ["haxe"]
# Wed, 27 Sep 2017 17:51:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 27 Sep 2017 17:51:46 GMT
WORKDIR /usr/src/app
# Wed, 27 Sep 2017 17:51:47 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Wed, 27 Sep 2017 17:51:47 GMT
ONBUILD RUN yes | haxelib install all
# Wed, 27 Sep 2017 17:51:47 GMT
ONBUILD COPY . /usr/src/app
# Wed, 27 Sep 2017 17:51:47 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Wed, 27 Sep 2017 17:51:48 GMT
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
	-	`sha256:abbe9086d65aef2b522f87f40abc5898cfe6ea523d7437d5eda7bee32255da75`  
		Last Modified: Wed, 27 Sep 2017 17:52:15 GMT  
		Size: 6.0 MB (5972615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ac1eb90cca727141e106ff4d38e98cd25d41123336aeecf21e7dc3b239428e`  
		Last Modified: Wed, 27 Sep 2017 17:53:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.3-stretch`

```console
$ docker pull haxe@sha256:68318afe196075c0f8da22ab1e7b44d9972ffc737668e14893166504bf25b9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.3-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:14de37448feb9eb8c8f58d96f3c490059fae32b3016b932d6b56814a30ce5e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120183504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfafe171e8cc1a4f7f34b80c39fa545dc24483ff45103f4749116767f2fcc93`
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
# Wed, 27 Sep 2017 17:48:46 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:49:44 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 27 Sep 2017 17:49:45 GMT
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
	-	`sha256:abbe9086d65aef2b522f87f40abc5898cfe6ea523d7437d5eda7bee32255da75`  
		Last Modified: Wed, 27 Sep 2017 17:52:15 GMT  
		Size: 6.0 MB (5972615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.3-windowsservercore`

```console
$ docker pull haxe@sha256:9bcb28acf79ad38fbaa902ca2202dd44a941e9dbc1fbb34d1ec60c3a08586aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `haxe:3.4.3-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull haxe@sha256:7877f7e32f4cf9db5b209f7bea93c129a7fa676f2a216fff166a0207d36400b4
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5372068322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7065b5e6688bc5e5188a70da52104edd1a126331a5ce80ce5c453e7c8ff9c79`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:26:26 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Fri, 15 Sep 2017 16:26:28 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Fri, 15 Sep 2017 16:26:32 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Fri, 15 Sep 2017 16:26:35 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Fri, 15 Sep 2017 16:26:38 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Fri, 15 Sep 2017 16:27:00 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:27:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Fri, 15 Sep 2017 16:27:28 GMT
ENV NEKO_VERSION=2.1.0
# Fri, 15 Sep 2017 16:27:57 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Wed, 27 Sep 2017 17:49:20 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:50:34 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.4.3/haxe-3.4.3-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (0ac0b4115ff2a551c8784bdc415f2355a392e866aff61f17cb116539fcf55f93) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '0ac0b4115ff2a551c8784bdc415f2355a392e866aff61f17cb116539fcf55f93') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Wed, 27 Sep 2017 17:50:56 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Wed, 27 Sep 2017 17:51:01 GMT
ENV HOMEDRIVE=C:
# Wed, 27 Sep 2017 17:51:24 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 27 Sep 2017 17:51:28 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728ebf20f1d488bae7716c20f8bab7cdd1ccff21f33f4606e4e96bc2b271a1`  
		Last Modified: Fri, 15 Sep 2017 16:36:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d741ea3d1f02fe96ac7b3efad0e6ccadf54ae754b9ed1a14ce59a9c6dc63fec`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89fbedbf9f3792f9f03ca9aa05a3392bd56c975f98cdd12a64f407c08ed56`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcbd4a34fc354dd45063bebd2fca9650414991cbec7946ba460470acf26147`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa770c707458d8bf7cb37045922630691222bdacc760f3656002f8c0b8061cbb`  
		Last Modified: Fri, 15 Sep 2017 16:36:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb95f61c8e5d987abd6d3a58393ae0ceda03dc4e02af5f37a7ed378b5b392db`  
		Last Modified: Fri, 15 Sep 2017 16:36:17 GMT  
		Size: 4.8 MB (4839162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775105993aecc2e731a6105990530b49beab9fb90e7f8fb21bf1967634cbd83`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 4.8 MB (4840921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda97876441887037eb3f4185b53d5fb5aee5e3292dee19179706eece5f018a`  
		Last Modified: Fri, 15 Sep 2017 16:36:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001c2bdec71820efb627cf0bef8668a5f77c77c7dfa6c6332c9c9c2882c3858`  
		Last Modified: Fri, 15 Sep 2017 16:36:13 GMT  
		Size: 7.3 MB (7311747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc74b1fa4c03771f94e07b4c3fe218905737eadb2c98c7ffd2a40a1fa8a163d`  
		Last Modified: Wed, 27 Sep 2017 17:52:00 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc12cd68b2c776843996b133126d68289476a7a3e81d3eedb69f71698f750d4`  
		Last Modified: Wed, 27 Sep 2017 17:51:59 GMT  
		Size: 9.7 MB (9680496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b38563ecbc424a161a26ac4d1ec025e19dafa740932958f56b10d580f9aa50c`  
		Last Modified: Wed, 27 Sep 2017 17:51:58 GMT  
		Size: 4.8 MB (4787853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bd1b175813b83ea8b529d1dcd7d4d6f1c59803dc26cf112399042676834179`  
		Last Modified: Wed, 27 Sep 2017 17:51:57 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903eaba6e3592d0b341c7985b1a9eeb7aa6f3b3b936df02368e0f8bf9f623c6b`  
		Last Modified: Wed, 27 Sep 2017 17:51:57 GMT  
		Size: 4.8 MB (4787498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf0952a5023ee1c24e292ccd28ea17c2f2f6ec07836e4a930d4165591cc493`  
		Last Modified: Wed, 27 Sep 2017 17:51:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-jessie`

```console
$ docker pull haxe@sha256:e040b69c35bb8f63df7ef45c78a178209e3987c59216ffd262330a69e53c8cac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:8083495299dbd61ce6001364f69926540e68c7500e6190bde26dd0c11d5fd71d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123818099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab5f364fe2eae882e8553f063c1279b9652dc55c32d734843915eabc25e1762`
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
# Wed, 27 Sep 2017 17:50:02 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:51:33 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 27 Sep 2017 17:51:34 GMT
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
	-	`sha256:eeafa1fa644f16ba0ff841d6e1fb78b026763828982ca0544edbd38384962703`  
		Last Modified: Wed, 27 Sep 2017 17:53:04 GMT  
		Size: 6.0 MB (5957531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-onbuild`

```console
$ docker pull haxe@sha256:fcbdeb75ce2a3cb496a2b39aac76b0da4ce803a7a2e8ac53b64c8775cb554d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:1ad3c246ef303b2213b579bbb21b429b58aec7fda6c7729830e2e89ddfede9a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120183636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285e485475725d541dc5c20bbf2bd7d7be76cbe441631fdebeef919ee3ec8f78`
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
# Wed, 27 Sep 2017 17:48:46 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:49:44 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 27 Sep 2017 17:49:45 GMT
CMD ["haxe"]
# Wed, 27 Sep 2017 17:51:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 27 Sep 2017 17:51:46 GMT
WORKDIR /usr/src/app
# Wed, 27 Sep 2017 17:51:47 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Wed, 27 Sep 2017 17:51:47 GMT
ONBUILD RUN yes | haxelib install all
# Wed, 27 Sep 2017 17:51:47 GMT
ONBUILD COPY . /usr/src/app
# Wed, 27 Sep 2017 17:51:47 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Wed, 27 Sep 2017 17:51:48 GMT
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
	-	`sha256:abbe9086d65aef2b522f87f40abc5898cfe6ea523d7437d5eda7bee32255da75`  
		Last Modified: Wed, 27 Sep 2017 17:52:15 GMT  
		Size: 6.0 MB (5972615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ac1eb90cca727141e106ff4d38e98cd25d41123336aeecf21e7dc3b239428e`  
		Last Modified: Wed, 27 Sep 2017 17:53:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-stretch`

```console
$ docker pull haxe@sha256:68318afe196075c0f8da22ab1e7b44d9972ffc737668e14893166504bf25b9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:14de37448feb9eb8c8f58d96f3c490059fae32b3016b932d6b56814a30ce5e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120183504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfafe171e8cc1a4f7f34b80c39fa545dc24483ff45103f4749116767f2fcc93`
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
# Wed, 27 Sep 2017 17:48:46 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:49:44 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 27 Sep 2017 17:49:45 GMT
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
	-	`sha256:abbe9086d65aef2b522f87f40abc5898cfe6ea523d7437d5eda7bee32255da75`  
		Last Modified: Wed, 27 Sep 2017 17:52:15 GMT  
		Size: 6.0 MB (5972615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-windowsservercore`

```console
$ docker pull haxe@sha256:9bcb28acf79ad38fbaa902ca2202dd44a941e9dbc1fbb34d1ec60c3a08586aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `haxe:3.4-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull haxe@sha256:7877f7e32f4cf9db5b209f7bea93c129a7fa676f2a216fff166a0207d36400b4
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5372068322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7065b5e6688bc5e5188a70da52104edd1a126331a5ce80ce5c453e7c8ff9c79`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:26:26 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Fri, 15 Sep 2017 16:26:28 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Fri, 15 Sep 2017 16:26:32 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Fri, 15 Sep 2017 16:26:35 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Fri, 15 Sep 2017 16:26:38 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Fri, 15 Sep 2017 16:27:00 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 15 Sep 2017 16:27:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Fri, 15 Sep 2017 16:27:28 GMT
ENV NEKO_VERSION=2.1.0
# Fri, 15 Sep 2017 16:27:57 GMT
RUN $url = 'http://nekovm.org/media/neko-2.1.0-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'ad7f8ead8300cdbfdc062bcf7ba63b1b1993d975023cde2dfd61936950eddb0e') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Wed, 27 Sep 2017 17:49:20 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:50:34 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/3.4.3/haxe-3.4.3-win.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (0ac0b4115ff2a551c8784bdc415f2355a392e866aff61f17cb116539fcf55f93) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '0ac0b4115ff2a551c8784bdc415f2355a392e866aff61f17cb116539fcf55f93') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 		Write-Host 'Complete.';
# Wed, 27 Sep 2017 17:50:56 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Wed, 27 Sep 2017 17:51:01 GMT
ENV HOMEDRIVE=C:
# Wed, 27 Sep 2017 17:51:24 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 27 Sep 2017 17:51:28 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728ebf20f1d488bae7716c20f8bab7cdd1ccff21f33f4606e4e96bc2b271a1`  
		Last Modified: Fri, 15 Sep 2017 16:36:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d741ea3d1f02fe96ac7b3efad0e6ccadf54ae754b9ed1a14ce59a9c6dc63fec`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89fbedbf9f3792f9f03ca9aa05a3392bd56c975f98cdd12a64f407c08ed56`  
		Last Modified: Fri, 15 Sep 2017 16:36:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dcbd4a34fc354dd45063bebd2fca9650414991cbec7946ba460470acf26147`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa770c707458d8bf7cb37045922630691222bdacc760f3656002f8c0b8061cbb`  
		Last Modified: Fri, 15 Sep 2017 16:36:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb95f61c8e5d987abd6d3a58393ae0ceda03dc4e02af5f37a7ed378b5b392db`  
		Last Modified: Fri, 15 Sep 2017 16:36:17 GMT  
		Size: 4.8 MB (4839162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775105993aecc2e731a6105990530b49beab9fb90e7f8fb21bf1967634cbd83`  
		Last Modified: Fri, 15 Sep 2017 16:36:16 GMT  
		Size: 4.8 MB (4840921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bda97876441887037eb3f4185b53d5fb5aee5e3292dee19179706eece5f018a`  
		Last Modified: Fri, 15 Sep 2017 16:36:12 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001c2bdec71820efb627cf0bef8668a5f77c77c7dfa6c6332c9c9c2882c3858`  
		Last Modified: Fri, 15 Sep 2017 16:36:13 GMT  
		Size: 7.3 MB (7311747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc74b1fa4c03771f94e07b4c3fe218905737eadb2c98c7ffd2a40a1fa8a163d`  
		Last Modified: Wed, 27 Sep 2017 17:52:00 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc12cd68b2c776843996b133126d68289476a7a3e81d3eedb69f71698f750d4`  
		Last Modified: Wed, 27 Sep 2017 17:51:59 GMT  
		Size: 9.7 MB (9680496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b38563ecbc424a161a26ac4d1ec025e19dafa740932958f56b10d580f9aa50c`  
		Last Modified: Wed, 27 Sep 2017 17:51:58 GMT  
		Size: 4.8 MB (4787853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bd1b175813b83ea8b529d1dcd7d4d6f1c59803dc26cf112399042676834179`  
		Last Modified: Wed, 27 Sep 2017 17:51:57 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903eaba6e3592d0b341c7985b1a9eeb7aa6f3b3b936df02368e0f8bf9f623c6b`  
		Last Modified: Wed, 27 Sep 2017 17:51:57 GMT  
		Size: 4.8 MB (4787498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf0952a5023ee1c24e292ccd28ea17c2f2f6ec07836e4a930d4165591cc493`  
		Last Modified: Wed, 27 Sep 2017 17:51:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:latest`

```console
$ docker pull haxe@sha256:68318afe196075c0f8da22ab1e7b44d9972ffc737668e14893166504bf25b9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:latest` - linux; amd64

```console
$ docker pull haxe@sha256:14de37448feb9eb8c8f58d96f3c490059fae32b3016b932d6b56814a30ce5e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120183504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfafe171e8cc1a4f7f34b80c39fa545dc24483ff45103f4749116767f2fcc93`
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
# Wed, 27 Sep 2017 17:48:46 GMT
ENV HAXE_VERSION=3.4.3
# Wed, 27 Sep 2017 17:49:44 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 27 Sep 2017 17:49:45 GMT
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
	-	`sha256:abbe9086d65aef2b522f87f40abc5898cfe6ea523d7437d5eda7bee32255da75`  
		Last Modified: Wed, 27 Sep 2017 17:52:15 GMT  
		Size: 6.0 MB (5972615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
