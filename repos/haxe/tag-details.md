<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haxe`

-	[`haxe:3.4.2-stretch`](#haxe342-stretch)
-	[`haxe:3.4-stretch`](#haxe34-stretch)
-	[`haxe:3.4.2`](#haxe342)
-	[`haxe:3.4`](#haxe34)
-	[`haxe:latest`](#haxelatest)
-	[`haxe:3.4.2-jessie`](#haxe342-jessie)
-	[`haxe:3.4-jessie`](#haxe34-jessie)
-	[`haxe:3.4.2-onbuild`](#haxe342-onbuild)
-	[`haxe:3.4-onbuild`](#haxe34-onbuild)
-	[`haxe:3.4.2-windowsservercore`](#haxe342-windowsservercore)
-	[`haxe:3.4-windowsservercore`](#haxe34-windowsservercore)
-	[`haxe:3.3.0-rc.1-stretch`](#haxe330-rc1-stretch)
-	[`haxe:3.3.0-stretch`](#haxe330-stretch)
-	[`haxe:3.3-stretch`](#haxe33-stretch)
-	[`haxe:3.3.0-rc.1`](#haxe330-rc1)
-	[`haxe:3.3.0`](#haxe330)
-	[`haxe:3.3`](#haxe33)
-	[`haxe:3.3.0-rc.1-jessie`](#haxe330-rc1-jessie)
-	[`haxe:3.3.0-jessie`](#haxe330-jessie)
-	[`haxe:3.3-jessie`](#haxe33-jessie)
-	[`haxe:3.3.0-rc.1-onbuild`](#haxe330-rc1-onbuild)
-	[`haxe:3.3.0-onbuild`](#haxe330-onbuild)
-	[`haxe:3.3-onbuild`](#haxe33-onbuild)
-	[`haxe:3.3.0-rc.1-windowsservercore`](#haxe330-rc1-windowsservercore)
-	[`haxe:3.3.0-windowsservercore`](#haxe330-windowsservercore)
-	[`haxe:3.3-windowsservercore`](#haxe33-windowsservercore)
-	[`haxe:3.2.1-stretch`](#haxe321-stretch)
-	[`haxe:3.2-stretch`](#haxe32-stretch)
-	[`haxe:3.2.1`](#haxe321)
-	[`haxe:3.2`](#haxe32)
-	[`haxe:3.2.1-jessie`](#haxe321-jessie)
-	[`haxe:3.2-jessie`](#haxe32-jessie)
-	[`haxe:3.2.1-onbuild`](#haxe321-onbuild)
-	[`haxe:3.2-onbuild`](#haxe32-onbuild)
-	[`haxe:3.2.1-windowsservercore`](#haxe321-windowsservercore)
-	[`haxe:3.2-windowsservercore`](#haxe32-windowsservercore)
-	[`haxe:3.1.3-stretch`](#haxe313-stretch)
-	[`haxe:3.1-stretch`](#haxe31-stretch)
-	[`haxe:3.1.3`](#haxe313)
-	[`haxe:3.1`](#haxe31)
-	[`haxe:3.1.3-jessie`](#haxe313-jessie)
-	[`haxe:3.1-jessie`](#haxe31-jessie)
-	[`haxe:3.1.3-onbuild`](#haxe313-onbuild)
-	[`haxe:3.1-onbuild`](#haxe31-onbuild)
-	[`haxe:3.1.3-windowsservercore`](#haxe313-windowsservercore)
-	[`haxe:3.1-windowsservercore`](#haxe31-windowsservercore)

## `haxe:3.4.2-stretch`

```console
$ docker pull haxe@sha256:321447c11f10c2955372deb07cd870324c3df18065c0ea115b132ea3e9c85e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:54fe0e2e2bd6df65f432aba44af455056f6cbdecb487d201c97db76d6ad2574b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119918953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0931636b0b9ab38b20f602a1110594ab991b1c5bdcf6998f153eb3e70210b7`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:16:32 GMT
ENV HAXE_VERSION=3.4.2
# Tue, 12 Sep 2017 23:17:10 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:17:10 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f38599b708f0c9d52637fa6f11df5bf40cacc5700144e1550c32b86c0c943`  
		Last Modified: Tue, 12 Sep 2017 23:25:48 GMT  
		Size: 5.9 MB (5931369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-stretch`

```console
$ docker pull haxe@sha256:321447c11f10c2955372deb07cd870324c3df18065c0ea115b132ea3e9c85e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:54fe0e2e2bd6df65f432aba44af455056f6cbdecb487d201c97db76d6ad2574b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119918953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0931636b0b9ab38b20f602a1110594ab991b1c5bdcf6998f153eb3e70210b7`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:16:32 GMT
ENV HAXE_VERSION=3.4.2
# Tue, 12 Sep 2017 23:17:10 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:17:10 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f38599b708f0c9d52637fa6f11df5bf40cacc5700144e1550c32b86c0c943`  
		Last Modified: Tue, 12 Sep 2017 23:25:48 GMT  
		Size: 5.9 MB (5931369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2`

```console
$ docker pull haxe@sha256:321447c11f10c2955372deb07cd870324c3df18065c0ea115b132ea3e9c85e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.2` - linux; amd64

```console
$ docker pull haxe@sha256:54fe0e2e2bd6df65f432aba44af455056f6cbdecb487d201c97db76d6ad2574b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119918953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0931636b0b9ab38b20f602a1110594ab991b1c5bdcf6998f153eb3e70210b7`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:16:32 GMT
ENV HAXE_VERSION=3.4.2
# Tue, 12 Sep 2017 23:17:10 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:17:10 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f38599b708f0c9d52637fa6f11df5bf40cacc5700144e1550c32b86c0c943`  
		Last Modified: Tue, 12 Sep 2017 23:25:48 GMT  
		Size: 5.9 MB (5931369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4`

```console
$ docker pull haxe@sha256:321447c11f10c2955372deb07cd870324c3df18065c0ea115b132ea3e9c85e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4` - linux; amd64

```console
$ docker pull haxe@sha256:54fe0e2e2bd6df65f432aba44af455056f6cbdecb487d201c97db76d6ad2574b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119918953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0931636b0b9ab38b20f602a1110594ab991b1c5bdcf6998f153eb3e70210b7`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:16:32 GMT
ENV HAXE_VERSION=3.4.2
# Tue, 12 Sep 2017 23:17:10 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:17:10 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f38599b708f0c9d52637fa6f11df5bf40cacc5700144e1550c32b86c0c943`  
		Last Modified: Tue, 12 Sep 2017 23:25:48 GMT  
		Size: 5.9 MB (5931369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:latest`

```console
$ docker pull haxe@sha256:321447c11f10c2955372deb07cd870324c3df18065c0ea115b132ea3e9c85e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:latest` - linux; amd64

```console
$ docker pull haxe@sha256:54fe0e2e2bd6df65f432aba44af455056f6cbdecb487d201c97db76d6ad2574b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119918953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0931636b0b9ab38b20f602a1110594ab991b1c5bdcf6998f153eb3e70210b7`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:16:32 GMT
ENV HAXE_VERSION=3.4.2
# Tue, 12 Sep 2017 23:17:10 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:17:10 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f38599b708f0c9d52637fa6f11df5bf40cacc5700144e1550c32b86c0c943`  
		Last Modified: Tue, 12 Sep 2017 23:25:48 GMT  
		Size: 5.9 MB (5931369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2-jessie`

```console
$ docker pull haxe@sha256:9c00bbf308f608178c253d29391d1193906f7d990e2d0a95854e0bd26141d06c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:068751460e01a533f268470bfedc049d9effcc0e59ae95ef30fe8d4ca2b3480c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123776509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f37f90322e6eb1a302162e0a92925fce2d02232e5b815b021e5907c612f86db`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:28 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:17:29 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 12 Sep 2017 23:19:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:19:26 GMT
ENV HAXE_VERSION=3.4.2
# Tue, 12 Sep 2017 23:20:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:20:32 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4dabd52ac522b185a2f2577ba800a1f43f9c80af19f0c922df4ffa25d1e14`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 485.6 KB (485613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acbeebe78ca01af36143d81d65f609db8f7f1ecc9c9ed38ae272a6895b640e5`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8b08c3ff4dbbc54df909baa792be067997e1ee48acb8c9d8f16724d840e294`  
		Last Modified: Tue, 12 Sep 2017 23:26:06 GMT  
		Size: 2.3 MB (2287519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037925d4031bef21a1a996626930d68178387c76bdfdd2939f02764efbbbc512`  
		Last Modified: Tue, 12 Sep 2017 23:26:09 GMT  
		Size: 5.9 MB (5916331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-jessie`

```console
$ docker pull haxe@sha256:9c00bbf308f608178c253d29391d1193906f7d990e2d0a95854e0bd26141d06c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:068751460e01a533f268470bfedc049d9effcc0e59ae95ef30fe8d4ca2b3480c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123776509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f37f90322e6eb1a302162e0a92925fce2d02232e5b815b021e5907c612f86db`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:28 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:17:29 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 12 Sep 2017 23:19:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:19:26 GMT
ENV HAXE_VERSION=3.4.2
# Tue, 12 Sep 2017 23:20:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:20:32 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4dabd52ac522b185a2f2577ba800a1f43f9c80af19f0c922df4ffa25d1e14`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 485.6 KB (485613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acbeebe78ca01af36143d81d65f609db8f7f1ecc9c9ed38ae272a6895b640e5`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8b08c3ff4dbbc54df909baa792be067997e1ee48acb8c9d8f16724d840e294`  
		Last Modified: Tue, 12 Sep 2017 23:26:06 GMT  
		Size: 2.3 MB (2287519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037925d4031bef21a1a996626930d68178387c76bdfdd2939f02764efbbbc512`  
		Last Modified: Tue, 12 Sep 2017 23:26:09 GMT  
		Size: 5.9 MB (5916331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2-onbuild`

```console
$ docker pull haxe@sha256:ba8c319d03118a9393c4bbe4807799ce23ddc9112b50b2d275271635e01adb62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:59610717942e8c6f2d72555c534a1f7fe188995212bf77a64d3c36f77e6a5b0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119919085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b7bc5bcab075d12baa044f22b15684b41853aa60b56bd314b0126ce4262817`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:16:32 GMT
ENV HAXE_VERSION=3.4.2
# Tue, 12 Sep 2017 23:17:10 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:17:10 GMT
CMD ["haxe"]
# Tue, 12 Sep 2017 23:20:34 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 23:20:34 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:20:34 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 12 Sep 2017 23:20:34 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 12 Sep 2017 23:20:34 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:20:35 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 12 Sep 2017 23:20:35 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f38599b708f0c9d52637fa6f11df5bf40cacc5700144e1550c32b86c0c943`  
		Last Modified: Tue, 12 Sep 2017 23:25:48 GMT  
		Size: 5.9 MB (5931369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d596836e38efdab9ee5327d3ecd1217cd91bbc96aa90015f15c2e881262aa94e`  
		Last Modified: Tue, 12 Sep 2017 23:26:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-onbuild`

```console
$ docker pull haxe@sha256:ba8c319d03118a9393c4bbe4807799ce23ddc9112b50b2d275271635e01adb62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:59610717942e8c6f2d72555c534a1f7fe188995212bf77a64d3c36f77e6a5b0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119919085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b7bc5bcab075d12baa044f22b15684b41853aa60b56bd314b0126ce4262817`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:16:32 GMT
ENV HAXE_VERSION=3.4.2
# Tue, 12 Sep 2017 23:17:10 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:17:10 GMT
CMD ["haxe"]
# Tue, 12 Sep 2017 23:20:34 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 23:20:34 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:20:34 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 12 Sep 2017 23:20:34 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 12 Sep 2017 23:20:34 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:20:35 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 12 Sep 2017 23:20:35 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f38599b708f0c9d52637fa6f11df5bf40cacc5700144e1550c32b86c0c943`  
		Last Modified: Tue, 12 Sep 2017 23:25:48 GMT  
		Size: 5.9 MB (5931369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d596836e38efdab9ee5327d3ecd1217cd91bbc96aa90015f15c2e881262aa94e`  
		Last Modified: Tue, 12 Sep 2017 23:26:18 GMT  
		Size: 132.0 B  
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

## `haxe:3.3.0-rc.1-stretch`

```console
$ docker pull haxe@sha256:41b1a9272bbc44a954c4f42a10e1e9427efd8340d895c08b8f8babc84ffe16ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:5628e90c5dcdc89b0baea57b6cba96b1061d509147df760bd6ebb392de583d77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119391628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b01af55b32e51b5619c00321439450aa24a1eb966082f68c1cb7107740341e0`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:20:36 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:21:12 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:21:12 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ae6cf51ef572d102efd6b5cf4ac2d3cdabeab967f1788c797ffd3c8c6c3fff`  
		Last Modified: Tue, 12 Sep 2017 23:26:31 GMT  
		Size: 5.4 MB (5404044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-stretch`

```console
$ docker pull haxe@sha256:41b1a9272bbc44a954c4f42a10e1e9427efd8340d895c08b8f8babc84ffe16ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:5628e90c5dcdc89b0baea57b6cba96b1061d509147df760bd6ebb392de583d77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119391628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b01af55b32e51b5619c00321439450aa24a1eb966082f68c1cb7107740341e0`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:20:36 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:21:12 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:21:12 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ae6cf51ef572d102efd6b5cf4ac2d3cdabeab967f1788c797ffd3c8c6c3fff`  
		Last Modified: Tue, 12 Sep 2017 23:26:31 GMT  
		Size: 5.4 MB (5404044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-stretch`

```console
$ docker pull haxe@sha256:41b1a9272bbc44a954c4f42a10e1e9427efd8340d895c08b8f8babc84ffe16ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:5628e90c5dcdc89b0baea57b6cba96b1061d509147df760bd6ebb392de583d77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119391628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b01af55b32e51b5619c00321439450aa24a1eb966082f68c1cb7107740341e0`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:20:36 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:21:12 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:21:12 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ae6cf51ef572d102efd6b5cf4ac2d3cdabeab967f1788c797ffd3c8c6c3fff`  
		Last Modified: Tue, 12 Sep 2017 23:26:31 GMT  
		Size: 5.4 MB (5404044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1`

```console
$ docker pull haxe@sha256:41b1a9272bbc44a954c4f42a10e1e9427efd8340d895c08b8f8babc84ffe16ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1` - linux; amd64

```console
$ docker pull haxe@sha256:5628e90c5dcdc89b0baea57b6cba96b1061d509147df760bd6ebb392de583d77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119391628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b01af55b32e51b5619c00321439450aa24a1eb966082f68c1cb7107740341e0`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:20:36 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:21:12 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:21:12 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ae6cf51ef572d102efd6b5cf4ac2d3cdabeab967f1788c797ffd3c8c6c3fff`  
		Last Modified: Tue, 12 Sep 2017 23:26:31 GMT  
		Size: 5.4 MB (5404044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0`

```console
$ docker pull haxe@sha256:41b1a9272bbc44a954c4f42a10e1e9427efd8340d895c08b8f8babc84ffe16ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0` - linux; amd64

```console
$ docker pull haxe@sha256:5628e90c5dcdc89b0baea57b6cba96b1061d509147df760bd6ebb392de583d77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119391628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b01af55b32e51b5619c00321439450aa24a1eb966082f68c1cb7107740341e0`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:20:36 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:21:12 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:21:12 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ae6cf51ef572d102efd6b5cf4ac2d3cdabeab967f1788c797ffd3c8c6c3fff`  
		Last Modified: Tue, 12 Sep 2017 23:26:31 GMT  
		Size: 5.4 MB (5404044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3`

```console
$ docker pull haxe@sha256:41b1a9272bbc44a954c4f42a10e1e9427efd8340d895c08b8f8babc84ffe16ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3` - linux; amd64

```console
$ docker pull haxe@sha256:5628e90c5dcdc89b0baea57b6cba96b1061d509147df760bd6ebb392de583d77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119391628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b01af55b32e51b5619c00321439450aa24a1eb966082f68c1cb7107740341e0`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:20:36 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:21:12 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:21:12 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ae6cf51ef572d102efd6b5cf4ac2d3cdabeab967f1788c797ffd3c8c6c3fff`  
		Last Modified: Tue, 12 Sep 2017 23:26:31 GMT  
		Size: 5.4 MB (5404044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-jessie`

```console
$ docker pull haxe@sha256:eb479c38ea0420469e665ac4c6f61623e08cc63d3934af99e8f0adc9e98f0da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:995381c45778b9fb13e8f2b0be10c191b6cf937d1ea360e3c6d6787c78424563
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123255237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24af5d02c7ef4902a3f2a80389f22abf2674b3914a0f4b7852ce2c366ae11248`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:28 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:17:29 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 12 Sep 2017 23:19:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:21:13 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:22:18 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:22:18 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4dabd52ac522b185a2f2577ba800a1f43f9c80af19f0c922df4ffa25d1e14`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 485.6 KB (485613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acbeebe78ca01af36143d81d65f609db8f7f1ecc9c9ed38ae272a6895b640e5`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8b08c3ff4dbbc54df909baa792be067997e1ee48acb8c9d8f16724d840e294`  
		Last Modified: Tue, 12 Sep 2017 23:26:06 GMT  
		Size: 2.3 MB (2287519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac05e2e9e48560aa8afe460052f430cf986f350c7083ed0514c2e854d283ab3d`  
		Last Modified: Tue, 12 Sep 2017 23:26:53 GMT  
		Size: 5.4 MB (5395059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-jessie`

```console
$ docker pull haxe@sha256:eb479c38ea0420469e665ac4c6f61623e08cc63d3934af99e8f0adc9e98f0da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:995381c45778b9fb13e8f2b0be10c191b6cf937d1ea360e3c6d6787c78424563
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123255237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24af5d02c7ef4902a3f2a80389f22abf2674b3914a0f4b7852ce2c366ae11248`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:28 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:17:29 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 12 Sep 2017 23:19:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:21:13 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:22:18 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:22:18 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4dabd52ac522b185a2f2577ba800a1f43f9c80af19f0c922df4ffa25d1e14`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 485.6 KB (485613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acbeebe78ca01af36143d81d65f609db8f7f1ecc9c9ed38ae272a6895b640e5`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8b08c3ff4dbbc54df909baa792be067997e1ee48acb8c9d8f16724d840e294`  
		Last Modified: Tue, 12 Sep 2017 23:26:06 GMT  
		Size: 2.3 MB (2287519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac05e2e9e48560aa8afe460052f430cf986f350c7083ed0514c2e854d283ab3d`  
		Last Modified: Tue, 12 Sep 2017 23:26:53 GMT  
		Size: 5.4 MB (5395059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-jessie`

```console
$ docker pull haxe@sha256:eb479c38ea0420469e665ac4c6f61623e08cc63d3934af99e8f0adc9e98f0da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:995381c45778b9fb13e8f2b0be10c191b6cf937d1ea360e3c6d6787c78424563
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123255237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24af5d02c7ef4902a3f2a80389f22abf2674b3914a0f4b7852ce2c366ae11248`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:28 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:17:29 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 12 Sep 2017 23:19:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:21:13 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:22:18 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:22:18 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4dabd52ac522b185a2f2577ba800a1f43f9c80af19f0c922df4ffa25d1e14`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 485.6 KB (485613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acbeebe78ca01af36143d81d65f609db8f7f1ecc9c9ed38ae272a6895b640e5`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8b08c3ff4dbbc54df909baa792be067997e1ee48acb8c9d8f16724d840e294`  
		Last Modified: Tue, 12 Sep 2017 23:26:06 GMT  
		Size: 2.3 MB (2287519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac05e2e9e48560aa8afe460052f430cf986f350c7083ed0514c2e854d283ab3d`  
		Last Modified: Tue, 12 Sep 2017 23:26:53 GMT  
		Size: 5.4 MB (5395059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-onbuild`

```console
$ docker pull haxe@sha256:08cafc4cf7fb212e4d2549f36882a088f9a338cce579b964c91b9deda7f471b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:6300c98652b019bcaa2745294e367ab3b8c9b87c4646912f460e1ff7057c358b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119391760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1731e61baee9b80dabee28692c568871a33e598268bb5b81fa0cff9767fa80`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:20:36 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:21:12 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:21:12 GMT
CMD ["haxe"]
# Tue, 12 Sep 2017 23:22:19 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 23:22:20 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ae6cf51ef572d102efd6b5cf4ac2d3cdabeab967f1788c797ffd3c8c6c3fff`  
		Last Modified: Tue, 12 Sep 2017 23:26:31 GMT  
		Size: 5.4 MB (5404044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407de36cfb945fb12bc5f242e0eeb5e26a80da9f01230f63aaf3610273b0d309`  
		Last Modified: Tue, 12 Sep 2017 23:27:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-onbuild`

```console
$ docker pull haxe@sha256:08cafc4cf7fb212e4d2549f36882a088f9a338cce579b964c91b9deda7f471b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:6300c98652b019bcaa2745294e367ab3b8c9b87c4646912f460e1ff7057c358b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119391760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1731e61baee9b80dabee28692c568871a33e598268bb5b81fa0cff9767fa80`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:20:36 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:21:12 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:21:12 GMT
CMD ["haxe"]
# Tue, 12 Sep 2017 23:22:19 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 23:22:20 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ae6cf51ef572d102efd6b5cf4ac2d3cdabeab967f1788c797ffd3c8c6c3fff`  
		Last Modified: Tue, 12 Sep 2017 23:26:31 GMT  
		Size: 5.4 MB (5404044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407de36cfb945fb12bc5f242e0eeb5e26a80da9f01230f63aaf3610273b0d309`  
		Last Modified: Tue, 12 Sep 2017 23:27:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-onbuild`

```console
$ docker pull haxe@sha256:08cafc4cf7fb212e4d2549f36882a088f9a338cce579b964c91b9deda7f471b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:6300c98652b019bcaa2745294e367ab3b8c9b87c4646912f460e1ff7057c358b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119391760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1731e61baee9b80dabee28692c568871a33e598268bb5b81fa0cff9767fa80`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:20:36 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 12 Sep 2017 23:21:12 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:21:12 GMT
CMD ["haxe"]
# Tue, 12 Sep 2017 23:22:19 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 23:22:20 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 12 Sep 2017 23:22:20 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ae6cf51ef572d102efd6b5cf4ac2d3cdabeab967f1788c797ffd3c8c6c3fff`  
		Last Modified: Tue, 12 Sep 2017 23:26:31 GMT  
		Size: 5.4 MB (5404044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407de36cfb945fb12bc5f242e0eeb5e26a80da9f01230f63aaf3610273b0d309`  
		Last Modified: Tue, 12 Sep 2017 23:27:04 GMT  
		Size: 132.0 B  
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

## `haxe:3.2.1-stretch`

```console
$ docker pull haxe@sha256:6c61d96ccfea910214910497572613ed6ec2796997e4f79d2c50713e8918bfbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:d15dca9d712386cc028217351a15aee28472b249cd18c6fea67f86f4eb3acea3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118407377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416660eeef848e75bbacd43c272cfd02f85685931655ba152c68a14134aa86c7`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:22:21 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 12 Sep 2017 23:22:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:22:55 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997e16dd74a280facce5c4194192210559a9ae56b04bbe05d66f303ee81f8339`  
		Last Modified: Tue, 12 Sep 2017 23:27:18 GMT  
		Size: 4.4 MB (4419793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-stretch`

```console
$ docker pull haxe@sha256:6c61d96ccfea910214910497572613ed6ec2796997e4f79d2c50713e8918bfbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:d15dca9d712386cc028217351a15aee28472b249cd18c6fea67f86f4eb3acea3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118407377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416660eeef848e75bbacd43c272cfd02f85685931655ba152c68a14134aa86c7`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:22:21 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 12 Sep 2017 23:22:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:22:55 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997e16dd74a280facce5c4194192210559a9ae56b04bbe05d66f303ee81f8339`  
		Last Modified: Tue, 12 Sep 2017 23:27:18 GMT  
		Size: 4.4 MB (4419793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1`

```console
$ docker pull haxe@sha256:6c61d96ccfea910214910497572613ed6ec2796997e4f79d2c50713e8918bfbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1` - linux; amd64

```console
$ docker pull haxe@sha256:d15dca9d712386cc028217351a15aee28472b249cd18c6fea67f86f4eb3acea3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118407377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416660eeef848e75bbacd43c272cfd02f85685931655ba152c68a14134aa86c7`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:22:21 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 12 Sep 2017 23:22:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:22:55 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997e16dd74a280facce5c4194192210559a9ae56b04bbe05d66f303ee81f8339`  
		Last Modified: Tue, 12 Sep 2017 23:27:18 GMT  
		Size: 4.4 MB (4419793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2`

```console
$ docker pull haxe@sha256:6c61d96ccfea910214910497572613ed6ec2796997e4f79d2c50713e8918bfbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2` - linux; amd64

```console
$ docker pull haxe@sha256:d15dca9d712386cc028217351a15aee28472b249cd18c6fea67f86f4eb3acea3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118407377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416660eeef848e75bbacd43c272cfd02f85685931655ba152c68a14134aa86c7`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:22:21 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 12 Sep 2017 23:22:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:22:55 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997e16dd74a280facce5c4194192210559a9ae56b04bbe05d66f303ee81f8339`  
		Last Modified: Tue, 12 Sep 2017 23:27:18 GMT  
		Size: 4.4 MB (4419793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-jessie`

```console
$ docker pull haxe@sha256:72edba28103c027464279adbf599faa00632b4ae9a9ba46a66079a5267b0828d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:edf26c2672c3182ea9a551b8ab70fd75cfec7bb8dc938c1047dd8558e281c0a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122311391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a947ad9f67c2c06bab5589ea82cd2b536c2b835d43920a85ded77cc6ca952a`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:28 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:17:29 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 12 Sep 2017 23:19:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:22:56 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 12 Sep 2017 23:23:58 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:23:58 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4dabd52ac522b185a2f2577ba800a1f43f9c80af19f0c922df4ffa25d1e14`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 485.6 KB (485613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acbeebe78ca01af36143d81d65f609db8f7f1ecc9c9ed38ae272a6895b640e5`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8b08c3ff4dbbc54df909baa792be067997e1ee48acb8c9d8f16724d840e294`  
		Last Modified: Tue, 12 Sep 2017 23:26:06 GMT  
		Size: 2.3 MB (2287519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c48fbfd0e815a016e26af9565ae2f028660e24d490e25d17f3f762fbab8ba24`  
		Last Modified: Tue, 12 Sep 2017 23:27:34 GMT  
		Size: 4.5 MB (4451213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-jessie`

```console
$ docker pull haxe@sha256:72edba28103c027464279adbf599faa00632b4ae9a9ba46a66079a5267b0828d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:edf26c2672c3182ea9a551b8ab70fd75cfec7bb8dc938c1047dd8558e281c0a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122311391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a947ad9f67c2c06bab5589ea82cd2b536c2b835d43920a85ded77cc6ca952a`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:28 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:17:29 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 12 Sep 2017 23:19:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:22:56 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 12 Sep 2017 23:23:58 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:23:58 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4dabd52ac522b185a2f2577ba800a1f43f9c80af19f0c922df4ffa25d1e14`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 485.6 KB (485613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acbeebe78ca01af36143d81d65f609db8f7f1ecc9c9ed38ae272a6895b640e5`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8b08c3ff4dbbc54df909baa792be067997e1ee48acb8c9d8f16724d840e294`  
		Last Modified: Tue, 12 Sep 2017 23:26:06 GMT  
		Size: 2.3 MB (2287519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c48fbfd0e815a016e26af9565ae2f028660e24d490e25d17f3f762fbab8ba24`  
		Last Modified: Tue, 12 Sep 2017 23:27:34 GMT  
		Size: 4.5 MB (4451213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-onbuild`

```console
$ docker pull haxe@sha256:b0b90edd93ec6711ebe756b726fc148d0d71aa28d8b6779c31fa08639d0a5af3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:88b88c67495c8b989fb01f670bf77dde6f68c6eab5b61d1b36141d3243b09716
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118407509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05e294a7eb2a0833b203c63b2bbf0ee29b28ccc2e2f9a3b2bf1f91ad580fd3d`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:22:21 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 12 Sep 2017 23:22:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:22:55 GMT
CMD ["haxe"]
# Tue, 12 Sep 2017 23:23:59 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 23:23:59 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997e16dd74a280facce5c4194192210559a9ae56b04bbe05d66f303ee81f8339`  
		Last Modified: Tue, 12 Sep 2017 23:27:18 GMT  
		Size: 4.4 MB (4419793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6451548d76b7c288a48528bb3909ab460b914e457a11ba264be52e4b3fdf3df6`  
		Last Modified: Tue, 12 Sep 2017 23:27:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-onbuild`

```console
$ docker pull haxe@sha256:b0b90edd93ec6711ebe756b726fc148d0d71aa28d8b6779c31fa08639d0a5af3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:88b88c67495c8b989fb01f670bf77dde6f68c6eab5b61d1b36141d3243b09716
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118407509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05e294a7eb2a0833b203c63b2bbf0ee29b28ccc2e2f9a3b2bf1f91ad580fd3d`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:22:21 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 12 Sep 2017 23:22:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:22:55 GMT
CMD ["haxe"]
# Tue, 12 Sep 2017 23:23:59 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 23:23:59 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 12 Sep 2017 23:24:00 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997e16dd74a280facce5c4194192210559a9ae56b04bbe05d66f303ee81f8339`  
		Last Modified: Tue, 12 Sep 2017 23:27:18 GMT  
		Size: 4.4 MB (4419793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6451548d76b7c288a48528bb3909ab460b914e457a11ba264be52e4b3fdf3df6`  
		Last Modified: Tue, 12 Sep 2017 23:27:43 GMT  
		Size: 132.0 B  
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

## `haxe:3.1.3-stretch`

```console
$ docker pull haxe@sha256:775015ecbbd3cdbef9bb667e498973c8e617afd5dfd6ac71fa7bec62105fc1a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:a6e635be11892f3d2ee736726175522612d03cbc9d446c1f01e320f58a5cc4f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118095545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665f8af61cca1106c3ccf2722d41c57e30e2b15d07cba69ad42deaaffe794340`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:24:01 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 12 Sep 2017 23:24:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:24:32 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67a7dea8ad33ee6abef1cc7a9046029b82f309d9a350854aeb8764c88e1e288`  
		Last Modified: Tue, 12 Sep 2017 23:27:53 GMT  
		Size: 4.1 MB (4107961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-stretch`

```console
$ docker pull haxe@sha256:775015ecbbd3cdbef9bb667e498973c8e617afd5dfd6ac71fa7bec62105fc1a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:a6e635be11892f3d2ee736726175522612d03cbc9d446c1f01e320f58a5cc4f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118095545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665f8af61cca1106c3ccf2722d41c57e30e2b15d07cba69ad42deaaffe794340`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:24:01 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 12 Sep 2017 23:24:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:24:32 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67a7dea8ad33ee6abef1cc7a9046029b82f309d9a350854aeb8764c88e1e288`  
		Last Modified: Tue, 12 Sep 2017 23:27:53 GMT  
		Size: 4.1 MB (4107961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3`

```console
$ docker pull haxe@sha256:775015ecbbd3cdbef9bb667e498973c8e617afd5dfd6ac71fa7bec62105fc1a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3` - linux; amd64

```console
$ docker pull haxe@sha256:a6e635be11892f3d2ee736726175522612d03cbc9d446c1f01e320f58a5cc4f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118095545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665f8af61cca1106c3ccf2722d41c57e30e2b15d07cba69ad42deaaffe794340`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:24:01 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 12 Sep 2017 23:24:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:24:32 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67a7dea8ad33ee6abef1cc7a9046029b82f309d9a350854aeb8764c88e1e288`  
		Last Modified: Tue, 12 Sep 2017 23:27:53 GMT  
		Size: 4.1 MB (4107961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1`

```console
$ docker pull haxe@sha256:775015ecbbd3cdbef9bb667e498973c8e617afd5dfd6ac71fa7bec62105fc1a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1` - linux; amd64

```console
$ docker pull haxe@sha256:a6e635be11892f3d2ee736726175522612d03cbc9d446c1f01e320f58a5cc4f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118095545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665f8af61cca1106c3ccf2722d41c57e30e2b15d07cba69ad42deaaffe794340`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:24:01 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 12 Sep 2017 23:24:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:24:32 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67a7dea8ad33ee6abef1cc7a9046029b82f309d9a350854aeb8764c88e1e288`  
		Last Modified: Tue, 12 Sep 2017 23:27:53 GMT  
		Size: 4.1 MB (4107961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-jessie`

```console
$ docker pull haxe@sha256:c4a4073a23db161667af8d2c7926fb6c0f84d36a8ea95f14ff8f87ca58c1ac5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:089a6010e7415f547c825133e63455f786c20a85d5f1278894895d59074ca22f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122017723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514c9e3dd45b6aab42b81329ffabd78203f973954e478c5cc4084e6e7f923c92`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:28 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:17:29 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 12 Sep 2017 23:19:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:24:33 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 12 Sep 2017 23:25:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:25:23 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4dabd52ac522b185a2f2577ba800a1f43f9c80af19f0c922df4ffa25d1e14`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 485.6 KB (485613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acbeebe78ca01af36143d81d65f609db8f7f1ecc9c9ed38ae272a6895b640e5`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8b08c3ff4dbbc54df909baa792be067997e1ee48acb8c9d8f16724d840e294`  
		Last Modified: Tue, 12 Sep 2017 23:26:06 GMT  
		Size: 2.3 MB (2287519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3843c17dd95c0f529c78809bb6112e44a908f656d550dc824d928971e1ebcc`  
		Last Modified: Tue, 12 Sep 2017 23:28:12 GMT  
		Size: 4.2 MB (4157545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-jessie`

```console
$ docker pull haxe@sha256:c4a4073a23db161667af8d2c7926fb6c0f84d36a8ea95f14ff8f87ca58c1ac5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:089a6010e7415f547c825133e63455f786c20a85d5f1278894895d59074ca22f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122017723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514c9e3dd45b6aab42b81329ffabd78203f973954e478c5cc4084e6e7f923c92`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:17:28 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:17:29 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 12 Sep 2017 23:19:26 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:24:33 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 12 Sep 2017 23:25:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:25:23 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4dabd52ac522b185a2f2577ba800a1f43f9c80af19f0c922df4ffa25d1e14`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 485.6 KB (485613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acbeebe78ca01af36143d81d65f609db8f7f1ecc9c9ed38ae272a6895b640e5`  
		Last Modified: Tue, 12 Sep 2017 23:26:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8b08c3ff4dbbc54df909baa792be067997e1ee48acb8c9d8f16724d840e294`  
		Last Modified: Tue, 12 Sep 2017 23:26:06 GMT  
		Size: 2.3 MB (2287519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3843c17dd95c0f529c78809bb6112e44a908f656d550dc824d928971e1ebcc`  
		Last Modified: Tue, 12 Sep 2017 23:28:12 GMT  
		Size: 4.2 MB (4157545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-onbuild`

```console
$ docker pull haxe@sha256:825a5a71905d2abdf4f03c3fe773d79c6f15507034d8309482927a06242fe691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:7df2edf6f61ce4d27d31535e05bbbe80e7c69c95332d337550b5331caa145b6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118095676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6be79a7092fda48cb693925a785922660c51ef8280e592ace9fd77a72a44dc`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:24:01 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 12 Sep 2017 23:24:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:24:32 GMT
CMD ["haxe"]
# Tue, 12 Sep 2017 23:25:23 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 23:25:24 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67a7dea8ad33ee6abef1cc7a9046029b82f309d9a350854aeb8764c88e1e288`  
		Last Modified: Tue, 12 Sep 2017 23:27:53 GMT  
		Size: 4.1 MB (4107961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96435a59d0f28a4bf2931d3a89b50f82fe356328f12b52182bdd2ef659399be4`  
		Last Modified: Tue, 12 Sep 2017 23:28:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-onbuild`

```console
$ docker pull haxe@sha256:825a5a71905d2abdf4f03c3fe773d79c6f15507034d8309482927a06242fe691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:7df2edf6f61ce4d27d31535e05bbbe80e7c69c95332d337550b5331caa145b6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118095676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6be79a7092fda48cb693925a785922660c51ef8280e592ace9fd77a72a44dc`
-	Default Command: `["haxe"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:14:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:15:00 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 12 Sep 2017 23:16:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 12 Sep 2017 23:24:01 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 12 Sep 2017 23:24:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 12 Sep 2017 23:24:32 GMT
CMD ["haxe"]
# Tue, 12 Sep 2017 23:25:23 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 23:25:24 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 12 Sep 2017 23:25:24 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c50a000fada2fe3802437d09c9c4a77d7ec9e01f567c6211d39432d9fbdd921`  
		Last Modified: Tue, 12 Sep 2017 23:25:43 GMT  
		Size: 568.0 KB (568034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cdd9e0b433007ec141c993460860d106d193d2e686c0f10213171c91b446c`  
		Last Modified: Tue, 12 Sep 2017 23:25:45 GMT  
		Size: 2.8 MB (2764111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67a7dea8ad33ee6abef1cc7a9046029b82f309d9a350854aeb8764c88e1e288`  
		Last Modified: Tue, 12 Sep 2017 23:27:53 GMT  
		Size: 4.1 MB (4107961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96435a59d0f28a4bf2931d3a89b50f82fe356328f12b52182bdd2ef659399be4`  
		Last Modified: Tue, 12 Sep 2017 23:28:21 GMT  
		Size: 131.0 B  
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
