<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haxe`

-	[`haxe:3.1.3`](#haxe313)
-	[`haxe:3.1`](#haxe31)
-	[`haxe:3.1.3-onbuild`](#haxe313-onbuild)
-	[`haxe:3.1-onbuild`](#haxe31-onbuild)
-	[`haxe:3.2.1`](#haxe321)
-	[`haxe:3.2`](#haxe32)
-	[`haxe:3.2.1-onbuild`](#haxe321-onbuild)
-	[`haxe:3.2-onbuild`](#haxe32-onbuild)
-	[`haxe:3.3.0-rc.1`](#haxe330-rc1)
-	[`haxe:3.3.0`](#haxe330)
-	[`haxe:3.3`](#haxe33)
-	[`haxe:3.3.0-rc.1-onbuild`](#haxe330-rc1-onbuild)
-	[`haxe:3.3.0-onbuild`](#haxe330-onbuild)
-	[`haxe:3.3-onbuild`](#haxe33-onbuild)
-	[`haxe:3.4.2`](#haxe342)
-	[`haxe:3.4`](#haxe34)
-	[`haxe:latest`](#haxelatest)
-	[`haxe:3.4.2-onbuild`](#haxe342-onbuild)
-	[`haxe:3.4-onbuild`](#haxe34-onbuild)

## `haxe:3.1.3`

```console
$ docker pull haxe@sha256:7f6bce562d560b0fde3d26c8dffef2d70169a9e2b804c450f66d85fa698a8048
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119224697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3f5e0244495138e4c4b1d51603b011b06eb2291d87bb2a3649d56a771ad927`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:46:07 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 21 Mar 2017 20:46:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:46:55 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970a8536b1882e36b66828e5084725abd37c6f792f66e93cce5a89abc4f709c7`  
		Last Modified: Thu, 23 Mar 2017 18:59:21 GMT  
		Size: 4.1 MB (4090211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1`

```console
$ docker pull haxe@sha256:7f6bce562d560b0fde3d26c8dffef2d70169a9e2b804c450f66d85fa698a8048
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119224697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3f5e0244495138e4c4b1d51603b011b06eb2291d87bb2a3649d56a771ad927`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:46:07 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 21 Mar 2017 20:46:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:46:55 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970a8536b1882e36b66828e5084725abd37c6f792f66e93cce5a89abc4f709c7`  
		Last Modified: Thu, 23 Mar 2017 18:59:21 GMT  
		Size: 4.1 MB (4090211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-onbuild`

```console
$ docker pull haxe@sha256:6998d2490bc28d3dc4cab20f2a58664636d897b1e0f937267c65c480a4c57965
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119224823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a0932495079b9ed45266a320a9c34a0f31313c64788424d6b06e017dcb3431`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:46:07 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 21 Mar 2017 20:46:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:46:55 GMT
CMD ["haxe"]
# Tue, 21 Mar 2017 20:46:57 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 20:46:57 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 20:46:57 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 21 Mar 2017 20:46:58 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 21 Mar 2017 20:46:58 GMT
ONBUILD COPY . /usr/src/app
# Tue, 21 Mar 2017 20:46:59 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 21 Mar 2017 20:46:59 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970a8536b1882e36b66828e5084725abd37c6f792f66e93cce5a89abc4f709c7`  
		Last Modified: Thu, 23 Mar 2017 18:59:21 GMT  
		Size: 4.1 MB (4090211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18e39c1443de43507743a96adb2d26983f92a6d69f73a4b2cde36dd8164d006`  
		Last Modified: Thu, 23 Mar 2017 19:00:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-onbuild`

```console
$ docker pull haxe@sha256:6998d2490bc28d3dc4cab20f2a58664636d897b1e0f937267c65c480a4c57965
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119224823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a0932495079b9ed45266a320a9c34a0f31313c64788424d6b06e017dcb3431`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:46:07 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 21 Mar 2017 20:46:55 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:46:55 GMT
CMD ["haxe"]
# Tue, 21 Mar 2017 20:46:57 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 20:46:57 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 20:46:57 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 21 Mar 2017 20:46:58 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 21 Mar 2017 20:46:58 GMT
ONBUILD COPY . /usr/src/app
# Tue, 21 Mar 2017 20:46:59 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 21 Mar 2017 20:46:59 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970a8536b1882e36b66828e5084725abd37c6f792f66e93cce5a89abc4f709c7`  
		Last Modified: Thu, 23 Mar 2017 18:59:21 GMT  
		Size: 4.1 MB (4090211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18e39c1443de43507743a96adb2d26983f92a6d69f73a4b2cde36dd8164d006`  
		Last Modified: Thu, 23 Mar 2017 19:00:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1`

```console
$ docker pull haxe@sha256:697edead2a3384238f706d6c20668cff30eda3e54a945511a886901c67066480
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119509037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f567989587960d696cdda0a33d272a766dc6cd78fe5cd698c181b54b5e56fa`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:00 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 21 Mar 2017 20:47:47 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:47:47 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d819452644cac2903d6eb2b8f90bdc158b11d78374aec7c752eec56a5a61bffe`  
		Last Modified: Thu, 23 Mar 2017 19:00:50 GMT  
		Size: 4.4 MB (4374551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2`

```console
$ docker pull haxe@sha256:697edead2a3384238f706d6c20668cff30eda3e54a945511a886901c67066480
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119509037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f567989587960d696cdda0a33d272a766dc6cd78fe5cd698c181b54b5e56fa`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:00 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 21 Mar 2017 20:47:47 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:47:47 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d819452644cac2903d6eb2b8f90bdc158b11d78374aec7c752eec56a5a61bffe`  
		Last Modified: Thu, 23 Mar 2017 19:00:50 GMT  
		Size: 4.4 MB (4374551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-onbuild`

```console
$ docker pull haxe@sha256:500277c00c8742435cf8c27b2d2f0db7a7e45033e4fc3755856bd7016b81bde9
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119509165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ef0700de3cca395b524e060f31647b92dc1eafcea3bb807e62248a73144b70`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:00 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 21 Mar 2017 20:47:47 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:47:47 GMT
CMD ["haxe"]
# Tue, 21 Mar 2017 20:47:49 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 20:47:49 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 20:47:50 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 21 Mar 2017 20:47:50 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 21 Mar 2017 20:47:50 GMT
ONBUILD COPY . /usr/src/app
# Tue, 21 Mar 2017 20:47:51 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 21 Mar 2017 20:47:51 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d819452644cac2903d6eb2b8f90bdc158b11d78374aec7c752eec56a5a61bffe`  
		Last Modified: Thu, 23 Mar 2017 19:00:50 GMT  
		Size: 4.4 MB (4374551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bf5d271fe3bdfbed575261f4e36205f02083765d27570ff88226e914a49caf`  
		Last Modified: Thu, 23 Mar 2017 19:01:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-onbuild`

```console
$ docker pull haxe@sha256:500277c00c8742435cf8c27b2d2f0db7a7e45033e4fc3755856bd7016b81bde9
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119509165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ef0700de3cca395b524e060f31647b92dc1eafcea3bb807e62248a73144b70`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:00 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 21 Mar 2017 20:47:47 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:47:47 GMT
CMD ["haxe"]
# Tue, 21 Mar 2017 20:47:49 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 20:47:49 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 20:47:50 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 21 Mar 2017 20:47:50 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 21 Mar 2017 20:47:50 GMT
ONBUILD COPY . /usr/src/app
# Tue, 21 Mar 2017 20:47:51 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 21 Mar 2017 20:47:51 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d819452644cac2903d6eb2b8f90bdc158b11d78374aec7c752eec56a5a61bffe`  
		Last Modified: Thu, 23 Mar 2017 19:00:50 GMT  
		Size: 4.4 MB (4374551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bf5d271fe3bdfbed575261f4e36205f02083765d27570ff88226e914a49caf`  
		Last Modified: Thu, 23 Mar 2017 19:01:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1`

```console
$ docker pull haxe@sha256:5635aa1b73f2c8006bcf1b0a412a90b844c58169dff6da603ee55fbbeeac43f7
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120438676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d357c9a4d854e4edec01882681a390b93d1b5eb8080df495859915a82cb23a`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:52 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 21 Mar 2017 20:48:31 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:48:31 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d359797ad3887f8cf6e29dfe8a3d9827e100bb0d5e8234777c6e9fd78dece`  
		Last Modified: Thu, 23 Mar 2017 19:02:21 GMT  
		Size: 5.3 MB (5304190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0`

```console
$ docker pull haxe@sha256:5635aa1b73f2c8006bcf1b0a412a90b844c58169dff6da603ee55fbbeeac43f7
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120438676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d357c9a4d854e4edec01882681a390b93d1b5eb8080df495859915a82cb23a`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:52 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 21 Mar 2017 20:48:31 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:48:31 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d359797ad3887f8cf6e29dfe8a3d9827e100bb0d5e8234777c6e9fd78dece`  
		Last Modified: Thu, 23 Mar 2017 19:02:21 GMT  
		Size: 5.3 MB (5304190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3`

```console
$ docker pull haxe@sha256:5635aa1b73f2c8006bcf1b0a412a90b844c58169dff6da603ee55fbbeeac43f7
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120438676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d357c9a4d854e4edec01882681a390b93d1b5eb8080df495859915a82cb23a`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:52 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 21 Mar 2017 20:48:31 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:48:31 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d359797ad3887f8cf6e29dfe8a3d9827e100bb0d5e8234777c6e9fd78dece`  
		Last Modified: Thu, 23 Mar 2017 19:02:21 GMT  
		Size: 5.3 MB (5304190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-onbuild`

```console
$ docker pull haxe@sha256:7f09ca5f7734f376c2b1d9b7460709722961af35ddd0c27e650fc199fd0236e2
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120438802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1993645825db42e27fef3ecd303359b3728eec53dd4af22a7511b4be61e48c33`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:52 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 21 Mar 2017 20:48:31 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:48:31 GMT
CMD ["haxe"]
# Tue, 21 Mar 2017 20:48:33 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 20:48:33 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 20:48:34 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 21 Mar 2017 20:48:34 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 21 Mar 2017 20:48:34 GMT
ONBUILD COPY . /usr/src/app
# Tue, 21 Mar 2017 20:48:35 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 21 Mar 2017 20:48:35 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d359797ad3887f8cf6e29dfe8a3d9827e100bb0d5e8234777c6e9fd78dece`  
		Last Modified: Thu, 23 Mar 2017 19:02:21 GMT  
		Size: 5.3 MB (5304190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5e9840c14afed38f45c523ec060b5223c0d60689f167134b5d5087a0b44db0`  
		Last Modified: Thu, 23 Mar 2017 19:03:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-onbuild`

```console
$ docker pull haxe@sha256:7f09ca5f7734f376c2b1d9b7460709722961af35ddd0c27e650fc199fd0236e2
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120438802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1993645825db42e27fef3ecd303359b3728eec53dd4af22a7511b4be61e48c33`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:52 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 21 Mar 2017 20:48:31 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:48:31 GMT
CMD ["haxe"]
# Tue, 21 Mar 2017 20:48:33 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 20:48:33 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 20:48:34 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 21 Mar 2017 20:48:34 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 21 Mar 2017 20:48:34 GMT
ONBUILD COPY . /usr/src/app
# Tue, 21 Mar 2017 20:48:35 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 21 Mar 2017 20:48:35 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d359797ad3887f8cf6e29dfe8a3d9827e100bb0d5e8234777c6e9fd78dece`  
		Last Modified: Thu, 23 Mar 2017 19:02:21 GMT  
		Size: 5.3 MB (5304190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5e9840c14afed38f45c523ec060b5223c0d60689f167134b5d5087a0b44db0`  
		Last Modified: Thu, 23 Mar 2017 19:03:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-onbuild`

```console
$ docker pull haxe@sha256:7f09ca5f7734f376c2b1d9b7460709722961af35ddd0c27e650fc199fd0236e2
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120438802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1993645825db42e27fef3ecd303359b3728eec53dd4af22a7511b4be61e48c33`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 21 Mar 2017 20:47:52 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 21 Mar 2017 20:48:31 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 21 Mar 2017 20:48:31 GMT
CMD ["haxe"]
# Tue, 21 Mar 2017 20:48:33 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 20:48:33 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 20:48:34 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 21 Mar 2017 20:48:34 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 21 Mar 2017 20:48:34 GMT
ONBUILD COPY . /usr/src/app
# Tue, 21 Mar 2017 20:48:35 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 21 Mar 2017 20:48:35 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d359797ad3887f8cf6e29dfe8a3d9827e100bb0d5e8234777c6e9fd78dece`  
		Last Modified: Thu, 23 Mar 2017 19:02:21 GMT  
		Size: 5.3 MB (5304190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5e9840c14afed38f45c523ec060b5223c0d60689f167134b5d5087a0b44db0`  
		Last Modified: Thu, 23 Mar 2017 19:03:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2`

```console
$ docker pull haxe@sha256:eb49d7c916f9eb13f7afea2fb3e26115c367b76aedad9fe57a88523396d19131
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120955646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12e8819a2034effd891f2d5735b4baacf9cc2c8ad2b08daf259be7048e01b08`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 23 Mar 2017 18:57:48 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 23 Mar 2017 18:58:50 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 23 Mar 2017 18:58:50 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f10fc7aae6cc24a413c752e48eac96f47cc0f8a498e73a0522532876960ba5`  
		Last Modified: Thu, 23 Mar 2017 19:04:30 GMT  
		Size: 5.8 MB (5821160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4`

```console
$ docker pull haxe@sha256:eb49d7c916f9eb13f7afea2fb3e26115c367b76aedad9fe57a88523396d19131
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120955646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12e8819a2034effd891f2d5735b4baacf9cc2c8ad2b08daf259be7048e01b08`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 23 Mar 2017 18:57:48 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 23 Mar 2017 18:58:50 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 23 Mar 2017 18:58:50 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f10fc7aae6cc24a413c752e48eac96f47cc0f8a498e73a0522532876960ba5`  
		Last Modified: Thu, 23 Mar 2017 19:04:30 GMT  
		Size: 5.8 MB (5821160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:latest`

```console
$ docker pull haxe@sha256:eb49d7c916f9eb13f7afea2fb3e26115c367b76aedad9fe57a88523396d19131
```

-	Platforms:
	-	linux; amd64

### `haxe:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120955646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12e8819a2034effd891f2d5735b4baacf9cc2c8ad2b08daf259be7048e01b08`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 23 Mar 2017 18:57:48 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 23 Mar 2017 18:58:50 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 23 Mar 2017 18:58:50 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f10fc7aae6cc24a413c752e48eac96f47cc0f8a498e73a0522532876960ba5`  
		Last Modified: Thu, 23 Mar 2017 19:04:30 GMT  
		Size: 5.8 MB (5821160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2-onbuild`

```console
$ docker pull haxe@sha256:ebc45eee4ac83e48d45b1880a4dca9710632c180838587e815fb8679c87066ea
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120955772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66cff86264bcc906cb883870812e8e24a9698800c7ee65490133c895bfdb56c`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 23 Mar 2017 18:57:48 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 23 Mar 2017 18:58:50 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 23 Mar 2017 18:58:50 GMT
CMD ["haxe"]
# Thu, 23 Mar 2017 18:58:52 GMT
RUN mkdir -p /usr/src/app
# Thu, 23 Mar 2017 18:58:52 GMT
WORKDIR /usr/src/app
# Thu, 23 Mar 2017 18:58:53 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 23 Mar 2017 18:58:53 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 23 Mar 2017 18:58:54 GMT
ONBUILD COPY . /usr/src/app
# Thu, 23 Mar 2017 18:58:55 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 23 Mar 2017 18:58:55 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f10fc7aae6cc24a413c752e48eac96f47cc0f8a498e73a0522532876960ba5`  
		Last Modified: Thu, 23 Mar 2017 19:04:30 GMT  
		Size: 5.8 MB (5821160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3a34fde26f018d10748b53b6bce8975eebc6a63a1c5e4edc692fd201fa9d55`  
		Last Modified: Thu, 23 Mar 2017 19:05:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-onbuild`

```console
$ docker pull haxe@sha256:ebc45eee4ac83e48d45b1880a4dca9710632c180838587e815fb8679c87066ea
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120955772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66cff86264bcc906cb883870812e8e24a9698800c7ee65490133c895bfdb56c`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:44:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:44:48 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 21 Mar 2017 20:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 20:46:06 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 23 Mar 2017 18:57:48 GMT
ENV HAXE_VERSION=3.4.2
# Thu, 23 Mar 2017 18:58:50 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 23 Mar 2017 18:58:50 GMT
CMD ["haxe"]
# Thu, 23 Mar 2017 18:58:52 GMT
RUN mkdir -p /usr/src/app
# Thu, 23 Mar 2017 18:58:52 GMT
WORKDIR /usr/src/app
# Thu, 23 Mar 2017 18:58:53 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Thu, 23 Mar 2017 18:58:53 GMT
ONBUILD RUN yes | haxelib install all
# Thu, 23 Mar 2017 18:58:54 GMT
ONBUILD COPY . /usr/src/app
# Thu, 23 Mar 2017 18:58:55 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Thu, 23 Mar 2017 18:58:55 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730e51b706c67184bbf8208c38e95a9b7578ca13e6fff572e629d9649c9e9c1`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 254.8 KB (254768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de66fd15c3f26eb9d74d4537f49a4d009390b2d9b9ffb2055e8e527b69055fa2`  
		Last Modified: Thu, 23 Mar 2017 18:59:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a469363b792480a5934cfc301019d7906dc538eb49d2ea984c53190aa9a564`  
		Last Modified: Thu, 23 Mar 2017 18:59:18 GMT  
		Size: 2.3 MB (2262744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f10fc7aae6cc24a413c752e48eac96f47cc0f8a498e73a0522532876960ba5`  
		Last Modified: Thu, 23 Mar 2017 19:04:30 GMT  
		Size: 5.8 MB (5821160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3a34fde26f018d10748b53b6bce8975eebc6a63a1c5e4edc692fd201fa9d55`  
		Last Modified: Thu, 23 Mar 2017 19:05:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
