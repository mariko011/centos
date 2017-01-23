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
-	[`haxe:3.4.0-rc.2`](#haxe340-rc2)
-	[`haxe:3.4.0`](#haxe340)
-	[`haxe:3.4`](#haxe34)
-	[`haxe:latest`](#haxelatest)
-	[`haxe:3.4.0-rc.2-onbuild`](#haxe340-rc2-onbuild)
-	[`haxe:3.4.0-onbuild`](#haxe340-onbuild)
-	[`haxe:3.4-onbuild`](#haxe34-onbuild)

## `haxe:3.1.3`

```console
$ docker pull haxe@sha256:77c3454782ebb2e721526e3d678ce60cde0d5c98e5889d7a38a1644bf0753c42
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118863115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b5351ec3171521e5b22c0f10cf39221cafc21ad6a917fd11bf112573e1098b`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:27:42 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 23 Jan 2017 19:28:28 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:28:29 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3bb1c932b62062fe9ee7b0179dd541de1d976d813ec1ceb1c3fb3c080c2e69`  
		Last Modified: Mon, 23 Jan 2017 19:31:14 GMT  
		Size: 4.0 MB (4018065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1`

```console
$ docker pull haxe@sha256:77c3454782ebb2e721526e3d678ce60cde0d5c98e5889d7a38a1644bf0753c42
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118863115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b5351ec3171521e5b22c0f10cf39221cafc21ad6a917fd11bf112573e1098b`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:27:42 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 23 Jan 2017 19:28:28 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:28:29 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3bb1c932b62062fe9ee7b0179dd541de1d976d813ec1ceb1c3fb3c080c2e69`  
		Last Modified: Mon, 23 Jan 2017 19:31:14 GMT  
		Size: 4.0 MB (4018065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-onbuild`

```console
$ docker pull haxe@sha256:4febba082b9523de04b843e44a53bd59c1cbad2df7d06943d0934154cb88877d
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118863241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1572f3571259cdac32e10b643ae1664c4be83d1d6b343447ac0f00707c2898`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:27:42 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 23 Jan 2017 19:28:28 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:28:29 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:28:30 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:28:30 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:28:30 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:28:31 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:28:31 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:28:31 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:28:31 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3bb1c932b62062fe9ee7b0179dd541de1d976d813ec1ceb1c3fb3c080c2e69`  
		Last Modified: Mon, 23 Jan 2017 19:31:14 GMT  
		Size: 4.0 MB (4018065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2400339371ec68ecc2ae08dcc182f695cdbe89f52fb7a812003740571deaea8a`  
		Last Modified: Mon, 23 Jan 2017 19:31:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-onbuild`

```console
$ docker pull haxe@sha256:4febba082b9523de04b843e44a53bd59c1cbad2df7d06943d0934154cb88877d
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118863241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1572f3571259cdac32e10b643ae1664c4be83d1d6b343447ac0f00707c2898`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:27:42 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 23 Jan 2017 19:28:28 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:28:29 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:28:30 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:28:30 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:28:30 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:28:31 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:28:31 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:28:31 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:28:31 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3bb1c932b62062fe9ee7b0179dd541de1d976d813ec1ceb1c3fb3c080c2e69`  
		Last Modified: Mon, 23 Jan 2017 19:31:14 GMT  
		Size: 4.0 MB (4018065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2400339371ec68ecc2ae08dcc182f695cdbe89f52fb7a812003740571deaea8a`  
		Last Modified: Mon, 23 Jan 2017 19:31:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1`

```console
$ docker pull haxe@sha256:b2a50ea0a9b60d5c9dfaa3db0d223089a5b427d681f54a0482d82f9a4dab67d3
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119147832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05b4052c986bc6c89c533407f8e63e519a3ac53fefaa30040c2c2e8bf766c7c`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:28:32 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 23 Jan 2017 19:29:08 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:08 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84be9dd3f5604816584ada7abf14393948b42600ff641b7a4e449e712eb2de4`  
		Last Modified: Mon, 23 Jan 2017 19:32:21 GMT  
		Size: 4.3 MB (4302782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2`

```console
$ docker pull haxe@sha256:b2a50ea0a9b60d5c9dfaa3db0d223089a5b427d681f54a0482d82f9a4dab67d3
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119147832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05b4052c986bc6c89c533407f8e63e519a3ac53fefaa30040c2c2e8bf766c7c`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:28:32 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 23 Jan 2017 19:29:08 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:08 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84be9dd3f5604816584ada7abf14393948b42600ff641b7a4e449e712eb2de4`  
		Last Modified: Mon, 23 Jan 2017 19:32:21 GMT  
		Size: 4.3 MB (4302782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-onbuild`

```console
$ docker pull haxe@sha256:0826e094a50fd8921bf996fa73c4b7370e6f9f65115470b3df6309bc5faf9de3
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119147959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62df01caaf0062609f80d16e5b3c3c8d965c38af607061106b4ee7c79e60b20`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:28:32 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 23 Jan 2017 19:29:08 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:08 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:29:09 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:29:09 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:29:10 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:29:10 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:29:10 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:29:11 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:29:11 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84be9dd3f5604816584ada7abf14393948b42600ff641b7a4e449e712eb2de4`  
		Last Modified: Mon, 23 Jan 2017 19:32:21 GMT  
		Size: 4.3 MB (4302782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a796f047671827c451c1bd753ae0617a3a27c35c9e422825b776d243c740bbd`  
		Last Modified: Mon, 23 Jan 2017 19:32:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-onbuild`

```console
$ docker pull haxe@sha256:0826e094a50fd8921bf996fa73c4b7370e6f9f65115470b3df6309bc5faf9de3
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119147959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62df01caaf0062609f80d16e5b3c3c8d965c38af607061106b4ee7c79e60b20`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:28:32 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 23 Jan 2017 19:29:08 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:08 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:29:09 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:29:09 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:29:10 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:29:10 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:29:10 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:29:11 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:29:11 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84be9dd3f5604816584ada7abf14393948b42600ff641b7a4e449e712eb2de4`  
		Last Modified: Mon, 23 Jan 2017 19:32:21 GMT  
		Size: 4.3 MB (4302782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a796f047671827c451c1bd753ae0617a3a27c35c9e422825b776d243c740bbd`  
		Last Modified: Mon, 23 Jan 2017 19:32:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1`

```console
$ docker pull haxe@sha256:30400a23c3d0925b973729027934a1f5058924dfb21ced6da7b33cbc4a3f10a4
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120076769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e58d85c88a1d9cc7855204a90e6a55644b7812b64e9fb93f96028da3eeda30a`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:29:11 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 23 Jan 2017 19:29:59 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:59 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db923f5bfd647b1308feed165ec3ce97332ce4e2791642c9e93b25243b5b8d56`  
		Last Modified: Mon, 23 Jan 2017 19:33:29 GMT  
		Size: 5.2 MB (5231719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0`

```console
$ docker pull haxe@sha256:30400a23c3d0925b973729027934a1f5058924dfb21ced6da7b33cbc4a3f10a4
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120076769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e58d85c88a1d9cc7855204a90e6a55644b7812b64e9fb93f96028da3eeda30a`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:29:11 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 23 Jan 2017 19:29:59 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:59 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db923f5bfd647b1308feed165ec3ce97332ce4e2791642c9e93b25243b5b8d56`  
		Last Modified: Mon, 23 Jan 2017 19:33:29 GMT  
		Size: 5.2 MB (5231719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3`

```console
$ docker pull haxe@sha256:30400a23c3d0925b973729027934a1f5058924dfb21ced6da7b33cbc4a3f10a4
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120076769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e58d85c88a1d9cc7855204a90e6a55644b7812b64e9fb93f96028da3eeda30a`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:29:11 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 23 Jan 2017 19:29:59 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:59 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db923f5bfd647b1308feed165ec3ce97332ce4e2791642c9e93b25243b5b8d56`  
		Last Modified: Mon, 23 Jan 2017 19:33:29 GMT  
		Size: 5.2 MB (5231719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-onbuild`

```console
$ docker pull haxe@sha256:7bb5fcc55c0ecf154d63336ff41ae5b0592d80ff6202d0eec88ccf01a1da8858
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120076896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888b5dde4902f8dd7f0acfe0618102e677d9196d1176f0232714aa8b851ed5e5`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:29:11 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 23 Jan 2017 19:29:59 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:59 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:30:00 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:30:01 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:30:01 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:30:01 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:30:01 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:30:02 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:30:02 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db923f5bfd647b1308feed165ec3ce97332ce4e2791642c9e93b25243b5b8d56`  
		Last Modified: Mon, 23 Jan 2017 19:33:29 GMT  
		Size: 5.2 MB (5231719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bdf54129d9c7b3edb89708fc1fb4c4e92f4d5162e96afd2e3bfc8d49206b72`  
		Last Modified: Mon, 23 Jan 2017 19:34:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-onbuild`

```console
$ docker pull haxe@sha256:7bb5fcc55c0ecf154d63336ff41ae5b0592d80ff6202d0eec88ccf01a1da8858
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120076896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888b5dde4902f8dd7f0acfe0618102e677d9196d1176f0232714aa8b851ed5e5`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:29:11 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 23 Jan 2017 19:29:59 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:59 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:30:00 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:30:01 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:30:01 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:30:01 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:30:01 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:30:02 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:30:02 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db923f5bfd647b1308feed165ec3ce97332ce4e2791642c9e93b25243b5b8d56`  
		Last Modified: Mon, 23 Jan 2017 19:33:29 GMT  
		Size: 5.2 MB (5231719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bdf54129d9c7b3edb89708fc1fb4c4e92f4d5162e96afd2e3bfc8d49206b72`  
		Last Modified: Mon, 23 Jan 2017 19:34:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-onbuild`

```console
$ docker pull haxe@sha256:7bb5fcc55c0ecf154d63336ff41ae5b0592d80ff6202d0eec88ccf01a1da8858
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120076896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888b5dde4902f8dd7f0acfe0618102e677d9196d1176f0232714aa8b851ed5e5`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:29:11 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 23 Jan 2017 19:29:59 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:29:59 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:30:00 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:30:01 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:30:01 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:30:01 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:30:01 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:30:02 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:30:02 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db923f5bfd647b1308feed165ec3ce97332ce4e2791642c9e93b25243b5b8d56`  
		Last Modified: Mon, 23 Jan 2017 19:33:29 GMT  
		Size: 5.2 MB (5231719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bdf54129d9c7b3edb89708fc1fb4c4e92f4d5162e96afd2e3bfc8d49206b72`  
		Last Modified: Mon, 23 Jan 2017 19:34:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.0-rc.2`

```console
$ docker pull haxe@sha256:77e311e4109095c9d2a2efe4c6b7762f6f30e48bb44b0bfeb23767e36ad0da16
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.0-rc.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120541282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4faf16c5a87ac5ba1961f331674cc819dbe57fb0e9053152590ee343c830b00`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:30:03 GMT
ENV HAXE_VERSION=3.4.0-rc.2
# Mon, 23 Jan 2017 19:30:52 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.0-rc2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:30:52 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a6e926ab8212dcad763883ed68f93c22eac93bb4d85e13dff61b16b63618f3`  
		Last Modified: Mon, 23 Jan 2017 19:35:12 GMT  
		Size: 5.7 MB (5696232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.0`

```console
$ docker pull haxe@sha256:77e311e4109095c9d2a2efe4c6b7762f6f30e48bb44b0bfeb23767e36ad0da16
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120541282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4faf16c5a87ac5ba1961f331674cc819dbe57fb0e9053152590ee343c830b00`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:30:03 GMT
ENV HAXE_VERSION=3.4.0-rc.2
# Mon, 23 Jan 2017 19:30:52 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.0-rc2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:30:52 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a6e926ab8212dcad763883ed68f93c22eac93bb4d85e13dff61b16b63618f3`  
		Last Modified: Mon, 23 Jan 2017 19:35:12 GMT  
		Size: 5.7 MB (5696232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4`

```console
$ docker pull haxe@sha256:77e311e4109095c9d2a2efe4c6b7762f6f30e48bb44b0bfeb23767e36ad0da16
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120541282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4faf16c5a87ac5ba1961f331674cc819dbe57fb0e9053152590ee343c830b00`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:30:03 GMT
ENV HAXE_VERSION=3.4.0-rc.2
# Mon, 23 Jan 2017 19:30:52 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.0-rc2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:30:52 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a6e926ab8212dcad763883ed68f93c22eac93bb4d85e13dff61b16b63618f3`  
		Last Modified: Mon, 23 Jan 2017 19:35:12 GMT  
		Size: 5.7 MB (5696232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:latest`

```console
$ docker pull haxe@sha256:77e311e4109095c9d2a2efe4c6b7762f6f30e48bb44b0bfeb23767e36ad0da16
```

-	Platforms:
	-	linux; amd64

### `haxe:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120541282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4faf16c5a87ac5ba1961f331674cc819dbe57fb0e9053152590ee343c830b00`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:30:03 GMT
ENV HAXE_VERSION=3.4.0-rc.2
# Mon, 23 Jan 2017 19:30:52 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.0-rc2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:30:52 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a6e926ab8212dcad763883ed68f93c22eac93bb4d85e13dff61b16b63618f3`  
		Last Modified: Mon, 23 Jan 2017 19:35:12 GMT  
		Size: 5.7 MB (5696232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.0-rc.2-onbuild`

```console
$ docker pull haxe@sha256:ff08856eac320fd56354589f4465157d0b6a3446d3c4287017597c2baac00e5d
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.0-rc.2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120541407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6d68e9751f2f3069defe918b66fef3e378d584439839344e1d76906655d018`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:30:03 GMT
ENV HAXE_VERSION=3.4.0-rc.2
# Mon, 23 Jan 2017 19:30:52 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.0-rc2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:30:52 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:30:53 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:30:54 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:30:54 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:30:54 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:30:54 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:30:55 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:30:55 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a6e926ab8212dcad763883ed68f93c22eac93bb4d85e13dff61b16b63618f3`  
		Last Modified: Mon, 23 Jan 2017 19:35:12 GMT  
		Size: 5.7 MB (5696232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79334c215a3593a6cf5575dccddb3c4913263710bdc5dd532b524a00cb60b55`  
		Last Modified: Mon, 23 Jan 2017 19:36:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.0-onbuild`

```console
$ docker pull haxe@sha256:ff08856eac320fd56354589f4465157d0b6a3446d3c4287017597c2baac00e5d
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120541407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6d68e9751f2f3069defe918b66fef3e378d584439839344e1d76906655d018`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:30:03 GMT
ENV HAXE_VERSION=3.4.0-rc.2
# Mon, 23 Jan 2017 19:30:52 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.0-rc2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:30:52 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:30:53 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:30:54 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:30:54 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:30:54 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:30:54 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:30:55 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:30:55 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a6e926ab8212dcad763883ed68f93c22eac93bb4d85e13dff61b16b63618f3`  
		Last Modified: Mon, 23 Jan 2017 19:35:12 GMT  
		Size: 5.7 MB (5696232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79334c215a3593a6cf5575dccddb3c4913263710bdc5dd532b524a00cb60b55`  
		Last Modified: Mon, 23 Jan 2017 19:36:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-onbuild`

```console
$ docker pull haxe@sha256:ff08856eac320fd56354589f4465157d0b6a3446d3c4287017597c2baac00e5d
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120541407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6d68e9751f2f3069defe918b66fef3e378d584439839344e1d76906655d018`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 19:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Jan 2017 19:25:56 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 23 Jan 2017 19:25:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 23 Jan 2017 19:27:42 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 23 Jan 2017 19:30:03 GMT
ENV HAXE_VERSION=3.4.0-rc.2
# Mon, 23 Jan 2017 19:30:52 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.0-rc2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 23 Jan 2017 19:30:52 GMT
CMD ["haxe"]
# Mon, 23 Jan 2017 19:30:53 GMT
RUN mkdir -p /usr/src/app
# Mon, 23 Jan 2017 19:30:54 GMT
WORKDIR /usr/src/app
# Mon, 23 Jan 2017 19:30:54 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 23 Jan 2017 19:30:54 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 23 Jan 2017 19:30:54 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Jan 2017 19:30:55 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 23 Jan 2017 19:30:55 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59208c1b6fb232b76694168367844246db575ab9e2cc06559a69bce347128309`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 254.5 KB (254455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3d041337ff343e1073a33974dff24e12cd1dfbc86124d38c32c053fd8a84a`  
		Last Modified: Mon, 23 Jan 2017 19:31:12 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0701fa8035da255eb19803af85854a69c0edcd2d95a8ac4e22cd33d26fa9c9b`  
		Last Modified: Mon, 23 Jan 2017 19:31:13 GMT  
		Size: 2.2 MB (2191322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a6e926ab8212dcad763883ed68f93c22eac93bb4d85e13dff61b16b63618f3`  
		Last Modified: Mon, 23 Jan 2017 19:35:12 GMT  
		Size: 5.7 MB (5696232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79334c215a3593a6cf5575dccddb3c4913263710bdc5dd532b524a00cb60b55`  
		Last Modified: Mon, 23 Jan 2017 19:36:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
