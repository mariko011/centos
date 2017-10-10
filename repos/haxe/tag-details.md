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
-	[`haxe:3.4.4`](#haxe344)
-	[`haxe:3.4.4-jessie`](#haxe344-jessie)
-	[`haxe:3.4.4-onbuild`](#haxe344-onbuild)
-	[`haxe:3.4.4-stretch`](#haxe344-stretch)
-	[`haxe:3.4.4-windowsservercore`](#haxe344-windowsservercore)
-	[`haxe:3.4-jessie`](#haxe34-jessie)
-	[`haxe:3.4-onbuild`](#haxe34-onbuild)
-	[`haxe:3.4-stretch`](#haxe34-stretch)
-	[`haxe:3.4-windowsservercore`](#haxe34-windowsservercore)
-	[`haxe:latest`](#haxelatest)

## `haxe:3.1`

```console
$ docker pull haxe@sha256:583fd54fabba464059e105c06cd56dd3a569345938d9de45e9c301f3830e32bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1` - linux; amd64

```console
$ docker pull haxe@sha256:d6c945906910eca6d42d6ecca89264ea25931c63189fc94a32924c3cf3a19c2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118331161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3061262c334327f088a8e30381d0b8771cec5cd32873e61b2d1e7e7f504f93b5`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:33:10 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 10 Oct 2017 07:33:56 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:33:56 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87a1f74c1db399b6789c34dda6753ae30587b122a8acd36a677d52a9d68d8c6`  
		Last Modified: Tue, 10 Oct 2017 07:41:16 GMT  
		Size: 4.1 MB (4108050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3`

```console
$ docker pull haxe@sha256:583fd54fabba464059e105c06cd56dd3a569345938d9de45e9c301f3830e32bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3` - linux; amd64

```console
$ docker pull haxe@sha256:d6c945906910eca6d42d6ecca89264ea25931c63189fc94a32924c3cf3a19c2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118331161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3061262c334327f088a8e30381d0b8771cec5cd32873e61b2d1e7e7f504f93b5`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:33:10 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 10 Oct 2017 07:33:56 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:33:56 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87a1f74c1db399b6789c34dda6753ae30587b122a8acd36a677d52a9d68d8c6`  
		Last Modified: Tue, 10 Oct 2017 07:41:16 GMT  
		Size: 4.1 MB (4108050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-jessie`

```console
$ docker pull haxe@sha256:2337080e77b32f377a94529651c30ff349df5ad00cb7c1cd5be1a76b1ee88acf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:2706e5040dcf047336d7ab31a903116dded301d8aa95881c33e087d4fd5d352c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122018075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01001a19afcd0b35a9f54250a96ff49b3c6a872754581b98fa01df10bae1564b`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:24:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:45 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:24:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 10 Oct 2017 07:26:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:34:03 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 10 Oct 2017 07:34:58 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:34:58 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7d19075dabe53281024f7c17bc6330281e5b8f7af8083f5c377a5a464c9e7`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 485.6 KB (485569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37857e23be9b3e36ec2748ac178ec3d61c15733187868497973780bb0ac5091b`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3fb913d5aa9f250f269a5bb8189d031d0877b1d226a955a51d7a5792933e45`  
		Last Modified: Tue, 10 Oct 2017 07:36:24 GMT  
		Size: 2.3 MB (2287543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f3125c65ca6cd192579cba01079428540a79f9eaf1001e6766dd876bde1093`  
		Last Modified: Tue, 10 Oct 2017 07:41:55 GMT  
		Size: 4.2 MB (4157576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-onbuild`

```console
$ docker pull haxe@sha256:eb24c032981980cdc6552532a3c1c51482a2678034ff5fe9f1cd5834b8abc8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:574920cc88c329091f165f7c5376e8a73ca09b5705bb5c859e8a807cee3ccecf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118331291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafd202955e7aecbc4f293f2288a7f68636c76430f217618a9ea2f8c79d5ea0d`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:33:10 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 10 Oct 2017 07:33:56 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:33:56 GMT
CMD ["haxe"]
# Tue, 10 Oct 2017 07:35:08 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 07:35:08 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 07:35:08 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 10 Oct 2017 07:35:09 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 10 Oct 2017 07:35:09 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 07:35:09 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 10 Oct 2017 07:35:09 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87a1f74c1db399b6789c34dda6753ae30587b122a8acd36a677d52a9d68d8c6`  
		Last Modified: Tue, 10 Oct 2017 07:41:16 GMT  
		Size: 4.1 MB (4108050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5360a3a536f0094e1994489a99edc28e38c2ad91c78e5cfcbef083ad3573899c`  
		Last Modified: Tue, 10 Oct 2017 07:42:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-stretch`

```console
$ docker pull haxe@sha256:583fd54fabba464059e105c06cd56dd3a569345938d9de45e9c301f3830e32bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:d6c945906910eca6d42d6ecca89264ea25931c63189fc94a32924c3cf3a19c2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118331161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3061262c334327f088a8e30381d0b8771cec5cd32873e61b2d1e7e7f504f93b5`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:33:10 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 10 Oct 2017 07:33:56 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:33:56 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87a1f74c1db399b6789c34dda6753ae30587b122a8acd36a677d52a9d68d8c6`  
		Last Modified: Tue, 10 Oct 2017 07:41:16 GMT  
		Size: 4.1 MB (4108050 bytes)  
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
$ docker pull haxe@sha256:2337080e77b32f377a94529651c30ff349df5ad00cb7c1cd5be1a76b1ee88acf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:2706e5040dcf047336d7ab31a903116dded301d8aa95881c33e087d4fd5d352c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122018075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01001a19afcd0b35a9f54250a96ff49b3c6a872754581b98fa01df10bae1564b`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:24:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:45 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:24:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 10 Oct 2017 07:26:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:34:03 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 10 Oct 2017 07:34:58 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:34:58 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7d19075dabe53281024f7c17bc6330281e5b8f7af8083f5c377a5a464c9e7`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 485.6 KB (485569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37857e23be9b3e36ec2748ac178ec3d61c15733187868497973780bb0ac5091b`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3fb913d5aa9f250f269a5bb8189d031d0877b1d226a955a51d7a5792933e45`  
		Last Modified: Tue, 10 Oct 2017 07:36:24 GMT  
		Size: 2.3 MB (2287543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f3125c65ca6cd192579cba01079428540a79f9eaf1001e6766dd876bde1093`  
		Last Modified: Tue, 10 Oct 2017 07:41:55 GMT  
		Size: 4.2 MB (4157576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-onbuild`

```console
$ docker pull haxe@sha256:eb24c032981980cdc6552532a3c1c51482a2678034ff5fe9f1cd5834b8abc8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:574920cc88c329091f165f7c5376e8a73ca09b5705bb5c859e8a807cee3ccecf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118331291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafd202955e7aecbc4f293f2288a7f68636c76430f217618a9ea2f8c79d5ea0d`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:33:10 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 10 Oct 2017 07:33:56 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:33:56 GMT
CMD ["haxe"]
# Tue, 10 Oct 2017 07:35:08 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 07:35:08 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 07:35:08 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 10 Oct 2017 07:35:09 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 10 Oct 2017 07:35:09 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 07:35:09 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 10 Oct 2017 07:35:09 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87a1f74c1db399b6789c34dda6753ae30587b122a8acd36a677d52a9d68d8c6`  
		Last Modified: Tue, 10 Oct 2017 07:41:16 GMT  
		Size: 4.1 MB (4108050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5360a3a536f0094e1994489a99edc28e38c2ad91c78e5cfcbef083ad3573899c`  
		Last Modified: Tue, 10 Oct 2017 07:42:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-stretch`

```console
$ docker pull haxe@sha256:583fd54fabba464059e105c06cd56dd3a569345938d9de45e9c301f3830e32bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.1-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:d6c945906910eca6d42d6ecca89264ea25931c63189fc94a32924c3cf3a19c2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118331161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3061262c334327f088a8e30381d0b8771cec5cd32873e61b2d1e7e7f504f93b5`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:33:10 GMT
ENV HAXE_VERSION=3.1.3
# Tue, 10 Oct 2017 07:33:56 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:33:56 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87a1f74c1db399b6789c34dda6753ae30587b122a8acd36a677d52a9d68d8c6`  
		Last Modified: Tue, 10 Oct 2017 07:41:16 GMT  
		Size: 4.1 MB (4108050 bytes)  
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
$ docker pull haxe@sha256:39b215495000c30103aa4ba2e7da432983681e3e3bc9f7f29e4a28840e6c93a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2` - linux; amd64

```console
$ docker pull haxe@sha256:724f883065db37e3ce0ec43f190ec109a0864fb79c09c16bed2b3d5511cf2489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118642865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa9c8815a1cb806e8574fcb0e15c7b6788a85bf2aae9413a62e3d3c74cc6e89`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:30:47 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 10 Oct 2017 07:31:18 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:31:19 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653d5728dad50d61ecd3763d80449b3afdff57cc1d84c13a56d333f66cc285b2`  
		Last Modified: Tue, 10 Oct 2017 07:39:45 GMT  
		Size: 4.4 MB (4419754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1`

```console
$ docker pull haxe@sha256:39b215495000c30103aa4ba2e7da432983681e3e3bc9f7f29e4a28840e6c93a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1` - linux; amd64

```console
$ docker pull haxe@sha256:724f883065db37e3ce0ec43f190ec109a0864fb79c09c16bed2b3d5511cf2489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118642865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa9c8815a1cb806e8574fcb0e15c7b6788a85bf2aae9413a62e3d3c74cc6e89`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:30:47 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 10 Oct 2017 07:31:18 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:31:19 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653d5728dad50d61ecd3763d80449b3afdff57cc1d84c13a56d333f66cc285b2`  
		Last Modified: Tue, 10 Oct 2017 07:39:45 GMT  
		Size: 4.4 MB (4419754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-jessie`

```console
$ docker pull haxe@sha256:aafaee9b9742ceb0eabdd54d77403b65859ab7de116618d8b81babf9c23c5fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:f6f1fc2a8e939acfce5d73323221182cf3e75b1d69484e88dec674794186ecd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122311713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cffc1868f014726080da129db32eb1d0abdd94566f775eec625d6df35b6c53a9`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:24:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:45 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:24:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 10 Oct 2017 07:26:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:31:29 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 10 Oct 2017 07:32:33 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:32:34 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7d19075dabe53281024f7c17bc6330281e5b8f7af8083f5c377a5a464c9e7`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 485.6 KB (485569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37857e23be9b3e36ec2748ac178ec3d61c15733187868497973780bb0ac5091b`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3fb913d5aa9f250f269a5bb8189d031d0877b1d226a955a51d7a5792933e45`  
		Last Modified: Tue, 10 Oct 2017 07:36:24 GMT  
		Size: 2.3 MB (2287543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa30c5b2a6723ad3ba505c58e03820aa83475a49c8022aa4a540bb4a19d1cd9`  
		Last Modified: Tue, 10 Oct 2017 07:40:20 GMT  
		Size: 4.5 MB (4451214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-onbuild`

```console
$ docker pull haxe@sha256:380b537c92243a6ede24cc58ff7bb1bc47861f661e324c95184de4cb7f567a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:be3c308212af59550667593f2137e98031b9356e112f4e8afa3052e9de135d7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118642995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee8eef8fe9ed14ebb4c82e6e6fb17e6898243f2198a01de367a71c7b863ed49`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:30:47 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 10 Oct 2017 07:31:18 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:31:19 GMT
CMD ["haxe"]
# Tue, 10 Oct 2017 07:32:57 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 07:32:58 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 07:32:58 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 10 Oct 2017 07:32:58 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 10 Oct 2017 07:32:59 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 07:32:59 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 10 Oct 2017 07:32:59 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653d5728dad50d61ecd3763d80449b3afdff57cc1d84c13a56d333f66cc285b2`  
		Last Modified: Tue, 10 Oct 2017 07:39:45 GMT  
		Size: 4.4 MB (4419754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a2ad500ae2f370b054d5e8305d3217a539ff016c9f30da6bd698d8c04a4ab6`  
		Last Modified: Tue, 10 Oct 2017 07:40:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-stretch`

```console
$ docker pull haxe@sha256:39b215495000c30103aa4ba2e7da432983681e3e3bc9f7f29e4a28840e6c93a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:724f883065db37e3ce0ec43f190ec109a0864fb79c09c16bed2b3d5511cf2489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118642865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa9c8815a1cb806e8574fcb0e15c7b6788a85bf2aae9413a62e3d3c74cc6e89`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:30:47 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 10 Oct 2017 07:31:18 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:31:19 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653d5728dad50d61ecd3763d80449b3afdff57cc1d84c13a56d333f66cc285b2`  
		Last Modified: Tue, 10 Oct 2017 07:39:45 GMT  
		Size: 4.4 MB (4419754 bytes)  
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
$ docker pull haxe@sha256:aafaee9b9742ceb0eabdd54d77403b65859ab7de116618d8b81babf9c23c5fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:f6f1fc2a8e939acfce5d73323221182cf3e75b1d69484e88dec674794186ecd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122311713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cffc1868f014726080da129db32eb1d0abdd94566f775eec625d6df35b6c53a9`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:24:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:45 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:24:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 10 Oct 2017 07:26:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:31:29 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 10 Oct 2017 07:32:33 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:32:34 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7d19075dabe53281024f7c17bc6330281e5b8f7af8083f5c377a5a464c9e7`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 485.6 KB (485569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37857e23be9b3e36ec2748ac178ec3d61c15733187868497973780bb0ac5091b`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3fb913d5aa9f250f269a5bb8189d031d0877b1d226a955a51d7a5792933e45`  
		Last Modified: Tue, 10 Oct 2017 07:36:24 GMT  
		Size: 2.3 MB (2287543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa30c5b2a6723ad3ba505c58e03820aa83475a49c8022aa4a540bb4a19d1cd9`  
		Last Modified: Tue, 10 Oct 2017 07:40:20 GMT  
		Size: 4.5 MB (4451214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-onbuild`

```console
$ docker pull haxe@sha256:380b537c92243a6ede24cc58ff7bb1bc47861f661e324c95184de4cb7f567a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:be3c308212af59550667593f2137e98031b9356e112f4e8afa3052e9de135d7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118642995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee8eef8fe9ed14ebb4c82e6e6fb17e6898243f2198a01de367a71c7b863ed49`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:30:47 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 10 Oct 2017 07:31:18 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:31:19 GMT
CMD ["haxe"]
# Tue, 10 Oct 2017 07:32:57 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 07:32:58 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 07:32:58 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 10 Oct 2017 07:32:58 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 10 Oct 2017 07:32:59 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 07:32:59 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 10 Oct 2017 07:32:59 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653d5728dad50d61ecd3763d80449b3afdff57cc1d84c13a56d333f66cc285b2`  
		Last Modified: Tue, 10 Oct 2017 07:39:45 GMT  
		Size: 4.4 MB (4419754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a2ad500ae2f370b054d5e8305d3217a539ff016c9f30da6bd698d8c04a4ab6`  
		Last Modified: Tue, 10 Oct 2017 07:40:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-stretch`

```console
$ docker pull haxe@sha256:39b215495000c30103aa4ba2e7da432983681e3e3bc9f7f29e4a28840e6c93a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.2-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:724f883065db37e3ce0ec43f190ec109a0864fb79c09c16bed2b3d5511cf2489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118642865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa9c8815a1cb806e8574fcb0e15c7b6788a85bf2aae9413a62e3d3c74cc6e89`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:30:47 GMT
ENV HAXE_VERSION=3.2.1
# Tue, 10 Oct 2017 07:31:18 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:31:19 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653d5728dad50d61ecd3763d80449b3afdff57cc1d84c13a56d333f66cc285b2`  
		Last Modified: Tue, 10 Oct 2017 07:39:45 GMT  
		Size: 4.4 MB (4419754 bytes)  
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
$ docker pull haxe@sha256:7f77c7f6a6a01d5bcc60bfa369ce3204a9d957933a5933b43937d97664175837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3` - linux; amd64

```console
$ docker pull haxe@sha256:424611e2dea7e171531b54be29478cda5c0a577dad4fd4cc38d598b9ea151875
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119627203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeae50782dc231d11aebe4e961bc30dc54f2c82cf7610ae0f0c0654503f2de63`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:28:02 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:28:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:29:01 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a35de79f5d86f43c701837685d423b8ff1272848a672e81601ef4ceb9fdb25`  
		Last Modified: Tue, 10 Oct 2017 07:37:18 GMT  
		Size: 5.4 MB (5404092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0`

```console
$ docker pull haxe@sha256:7f77c7f6a6a01d5bcc60bfa369ce3204a9d957933a5933b43937d97664175837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0` - linux; amd64

```console
$ docker pull haxe@sha256:424611e2dea7e171531b54be29478cda5c0a577dad4fd4cc38d598b9ea151875
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119627203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeae50782dc231d11aebe4e961bc30dc54f2c82cf7610ae0f0c0654503f2de63`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:28:02 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:28:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:29:01 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a35de79f5d86f43c701837685d423b8ff1272848a672e81601ef4ceb9fdb25`  
		Last Modified: Tue, 10 Oct 2017 07:37:18 GMT  
		Size: 5.4 MB (5404092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-jessie`

```console
$ docker pull haxe@sha256:37b12e5894efb992fa18cd76ddf7e563a77d80f97f03338acc41186642566d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:8684d3abb620cf130ff0b17bb90f43f7cd8f1b90e40d45b7f7457a784cdc1fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123255664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ad3b48f27fe27d418245a83ab3cbc591c36a3c85abfcffcb3e9a3129eb1450`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:24:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:45 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:24:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 10 Oct 2017 07:26:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:29:12 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:30:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:30:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7d19075dabe53281024f7c17bc6330281e5b8f7af8083f5c377a5a464c9e7`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 485.6 KB (485569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37857e23be9b3e36ec2748ac178ec3d61c15733187868497973780bb0ac5091b`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3fb913d5aa9f250f269a5bb8189d031d0877b1d226a955a51d7a5792933e45`  
		Last Modified: Tue, 10 Oct 2017 07:36:24 GMT  
		Size: 2.3 MB (2287543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d11852768d7276a3500de3ee6763d61fdb656785d37f4c63b0b3fdf21ea198`  
		Last Modified: Tue, 10 Oct 2017 07:38:30 GMT  
		Size: 5.4 MB (5395165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-onbuild`

```console
$ docker pull haxe@sha256:d916b92fefd4f6cb7e4dd2a806b10564ce47f60f12581d5be5cac34f29c56427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:f96c2e0dc92403cf61d94d2d153f9463810e545c023070a90cbd6220fb5ec8dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119627334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09141aab7296689219675529316d0bf44d4ecfc5bb64666918a733d18c07a4bf`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:28:02 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:28:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:29:01 GMT
CMD ["haxe"]
# Tue, 10 Oct 2017 07:30:39 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 07:30:40 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 10 Oct 2017 07:30:41 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a35de79f5d86f43c701837685d423b8ff1272848a672e81601ef4ceb9fdb25`  
		Last Modified: Tue, 10 Oct 2017 07:37:18 GMT  
		Size: 5.4 MB (5404092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc16a4093dc7a55c3dbe328ef040d89b0ade004dc9f4988b0d5eca17c4a6e7a`  
		Last Modified: Tue, 10 Oct 2017 07:38:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1`

```console
$ docker pull haxe@sha256:7f77c7f6a6a01d5bcc60bfa369ce3204a9d957933a5933b43937d97664175837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1` - linux; amd64

```console
$ docker pull haxe@sha256:424611e2dea7e171531b54be29478cda5c0a577dad4fd4cc38d598b9ea151875
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119627203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeae50782dc231d11aebe4e961bc30dc54f2c82cf7610ae0f0c0654503f2de63`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:28:02 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:28:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:29:01 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a35de79f5d86f43c701837685d423b8ff1272848a672e81601ef4ceb9fdb25`  
		Last Modified: Tue, 10 Oct 2017 07:37:18 GMT  
		Size: 5.4 MB (5404092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-jessie`

```console
$ docker pull haxe@sha256:37b12e5894efb992fa18cd76ddf7e563a77d80f97f03338acc41186642566d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:8684d3abb620cf130ff0b17bb90f43f7cd8f1b90e40d45b7f7457a784cdc1fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123255664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ad3b48f27fe27d418245a83ab3cbc591c36a3c85abfcffcb3e9a3129eb1450`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:24:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:45 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:24:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 10 Oct 2017 07:26:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:29:12 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:30:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:30:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7d19075dabe53281024f7c17bc6330281e5b8f7af8083f5c377a5a464c9e7`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 485.6 KB (485569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37857e23be9b3e36ec2748ac178ec3d61c15733187868497973780bb0ac5091b`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3fb913d5aa9f250f269a5bb8189d031d0877b1d226a955a51d7a5792933e45`  
		Last Modified: Tue, 10 Oct 2017 07:36:24 GMT  
		Size: 2.3 MB (2287543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d11852768d7276a3500de3ee6763d61fdb656785d37f4c63b0b3fdf21ea198`  
		Last Modified: Tue, 10 Oct 2017 07:38:30 GMT  
		Size: 5.4 MB (5395165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-onbuild`

```console
$ docker pull haxe@sha256:d916b92fefd4f6cb7e4dd2a806b10564ce47f60f12581d5be5cac34f29c56427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:f96c2e0dc92403cf61d94d2d153f9463810e545c023070a90cbd6220fb5ec8dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119627334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09141aab7296689219675529316d0bf44d4ecfc5bb64666918a733d18c07a4bf`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:28:02 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:28:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:29:01 GMT
CMD ["haxe"]
# Tue, 10 Oct 2017 07:30:39 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 07:30:40 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 10 Oct 2017 07:30:41 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a35de79f5d86f43c701837685d423b8ff1272848a672e81601ef4ceb9fdb25`  
		Last Modified: Tue, 10 Oct 2017 07:37:18 GMT  
		Size: 5.4 MB (5404092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc16a4093dc7a55c3dbe328ef040d89b0ade004dc9f4988b0d5eca17c4a6e7a`  
		Last Modified: Tue, 10 Oct 2017 07:38:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-stretch`

```console
$ docker pull haxe@sha256:7f77c7f6a6a01d5bcc60bfa369ce3204a9d957933a5933b43937d97664175837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:424611e2dea7e171531b54be29478cda5c0a577dad4fd4cc38d598b9ea151875
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119627203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeae50782dc231d11aebe4e961bc30dc54f2c82cf7610ae0f0c0654503f2de63`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:28:02 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:28:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:29:01 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a35de79f5d86f43c701837685d423b8ff1272848a672e81601ef4ceb9fdb25`  
		Last Modified: Tue, 10 Oct 2017 07:37:18 GMT  
		Size: 5.4 MB (5404092 bytes)  
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
$ docker pull haxe@sha256:7f77c7f6a6a01d5bcc60bfa369ce3204a9d957933a5933b43937d97664175837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:424611e2dea7e171531b54be29478cda5c0a577dad4fd4cc38d598b9ea151875
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119627203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeae50782dc231d11aebe4e961bc30dc54f2c82cf7610ae0f0c0654503f2de63`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:28:02 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:28:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:29:01 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a35de79f5d86f43c701837685d423b8ff1272848a672e81601ef4ceb9fdb25`  
		Last Modified: Tue, 10 Oct 2017 07:37:18 GMT  
		Size: 5.4 MB (5404092 bytes)  
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
$ docker pull haxe@sha256:37b12e5894efb992fa18cd76ddf7e563a77d80f97f03338acc41186642566d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:8684d3abb620cf130ff0b17bb90f43f7cd8f1b90e40d45b7f7457a784cdc1fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123255664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ad3b48f27fe27d418245a83ab3cbc591c36a3c85abfcffcb3e9a3129eb1450`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:24:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:45 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:24:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 10 Oct 2017 07:26:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:29:12 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:30:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:30:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7d19075dabe53281024f7c17bc6330281e5b8f7af8083f5c377a5a464c9e7`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 485.6 KB (485569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37857e23be9b3e36ec2748ac178ec3d61c15733187868497973780bb0ac5091b`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3fb913d5aa9f250f269a5bb8189d031d0877b1d226a955a51d7a5792933e45`  
		Last Modified: Tue, 10 Oct 2017 07:36:24 GMT  
		Size: 2.3 MB (2287543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d11852768d7276a3500de3ee6763d61fdb656785d37f4c63b0b3fdf21ea198`  
		Last Modified: Tue, 10 Oct 2017 07:38:30 GMT  
		Size: 5.4 MB (5395165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-onbuild`

```console
$ docker pull haxe@sha256:d916b92fefd4f6cb7e4dd2a806b10564ce47f60f12581d5be5cac34f29c56427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:f96c2e0dc92403cf61d94d2d153f9463810e545c023070a90cbd6220fb5ec8dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119627334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09141aab7296689219675529316d0bf44d4ecfc5bb64666918a733d18c07a4bf`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:28:02 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:28:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:29:01 GMT
CMD ["haxe"]
# Tue, 10 Oct 2017 07:30:39 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 07:30:40 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 07:30:40 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 10 Oct 2017 07:30:41 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a35de79f5d86f43c701837685d423b8ff1272848a672e81601ef4ceb9fdb25`  
		Last Modified: Tue, 10 Oct 2017 07:37:18 GMT  
		Size: 5.4 MB (5404092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc16a4093dc7a55c3dbe328ef040d89b0ade004dc9f4988b0d5eca17c4a6e7a`  
		Last Modified: Tue, 10 Oct 2017 07:38:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-stretch`

```console
$ docker pull haxe@sha256:7f77c7f6a6a01d5bcc60bfa369ce3204a9d957933a5933b43937d97664175837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.3-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:424611e2dea7e171531b54be29478cda5c0a577dad4fd4cc38d598b9ea151875
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119627203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeae50782dc231d11aebe4e961bc30dc54f2c82cf7610ae0f0c0654503f2de63`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 07:28:02 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Tue, 10 Oct 2017 07:28:57 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 07:29:01 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a35de79f5d86f43c701837685d423b8ff1272848a672e81601ef4ceb9fdb25`  
		Last Modified: Tue, 10 Oct 2017 07:37:18 GMT  
		Size: 5.4 MB (5404092 bytes)  
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
$ docker pull haxe@sha256:c52d0a2f57e946eb2c347b0217fb3c00239892bc77b0840ec2e84c311725787e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4` - linux; amd64

```console
$ docker pull haxe@sha256:29b7fac9ba4f448243f523d5a364f3afe9998c1ceeee98ad7ab7d338b10d1f23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120196538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0757cf955cf31b1f099c43610a1f36902f31e6cc9c896d68c70ce33404f4ef81`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 17:11:41 GMT
ENV HAXE_VERSION=3.4.4
# Tue, 10 Oct 2017 17:12:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.4 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 17:12:20 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a573e1651404e02e2c88040f5295d614f7f24b3edc26ec8d3a16102cf3592327`  
		Last Modified: Tue, 10 Oct 2017 17:14:11 GMT  
		Size: 6.0 MB (5973427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.4`

```console
$ docker pull haxe@sha256:c52d0a2f57e946eb2c347b0217fb3c00239892bc77b0840ec2e84c311725787e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.4` - linux; amd64

```console
$ docker pull haxe@sha256:29b7fac9ba4f448243f523d5a364f3afe9998c1ceeee98ad7ab7d338b10d1f23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120196538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0757cf955cf31b1f099c43610a1f36902f31e6cc9c896d68c70ce33404f4ef81`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 17:11:41 GMT
ENV HAXE_VERSION=3.4.4
# Tue, 10 Oct 2017 17:12:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.4 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 17:12:20 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a573e1651404e02e2c88040f5295d614f7f24b3edc26ec8d3a16102cf3592327`  
		Last Modified: Tue, 10 Oct 2017 17:14:11 GMT  
		Size: 6.0 MB (5973427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.4-jessie`

```console
$ docker pull haxe@sha256:2068f0bf53c2a211b3fca752b56c10fe7694b095ae7ea4cebfe05a9e30c76b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.4-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:d726982ee43b50722ce44081b644a117d4b829343f711e188a5e853f9da4ea60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123818184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee96db1e910409af40c7c97a6480899e527988552663e1a48da525ef240b36d`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:24:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:45 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:24:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 10 Oct 2017 07:26:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 17:12:33 GMT
ENV HAXE_VERSION=3.4.4
# Tue, 10 Oct 2017 17:13:30 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.4 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 17:13:31 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7d19075dabe53281024f7c17bc6330281e5b8f7af8083f5c377a5a464c9e7`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 485.6 KB (485569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37857e23be9b3e36ec2748ac178ec3d61c15733187868497973780bb0ac5091b`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3fb913d5aa9f250f269a5bb8189d031d0877b1d226a955a51d7a5792933e45`  
		Last Modified: Tue, 10 Oct 2017 07:36:24 GMT  
		Size: 2.3 MB (2287543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0932f8ec9ca778eb30ec7c11cd66118c0dd62d249fe36a8a7c132e98dd9b5175`  
		Last Modified: Tue, 10 Oct 2017 17:14:55 GMT  
		Size: 6.0 MB (5957685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.4-onbuild`

```console
$ docker pull haxe@sha256:d7c56392816186316f4349f687a4b1e4759b27964a0ec78797939bfeef99e131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.4-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:221b243a845ee0a8e868796ef05e7de347971e0a7cfe17c51e2e338de65e81f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120196669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afc5aa5920a750d3d9b0515a60b6d90275a3df37f8386d6aaa60274c7d2104d`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 17:11:41 GMT
ENV HAXE_VERSION=3.4.4
# Tue, 10 Oct 2017 17:12:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.4 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 17:12:20 GMT
CMD ["haxe"]
# Tue, 10 Oct 2017 17:13:47 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 17:13:47 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 17:13:47 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 10 Oct 2017 17:13:47 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 10 Oct 2017 17:13:48 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 17:13:48 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 10 Oct 2017 17:13:48 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a573e1651404e02e2c88040f5295d614f7f24b3edc26ec8d3a16102cf3592327`  
		Last Modified: Tue, 10 Oct 2017 17:14:11 GMT  
		Size: 6.0 MB (5973427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5adfea254dbfdcbf7ffd7b6fd2f00ce099da8d71f18fb3d193d389edc454035`  
		Last Modified: Tue, 10 Oct 2017 17:15:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.4-stretch`

```console
$ docker pull haxe@sha256:c52d0a2f57e946eb2c347b0217fb3c00239892bc77b0840ec2e84c311725787e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4.4-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:29b7fac9ba4f448243f523d5a364f3afe9998c1ceeee98ad7ab7d338b10d1f23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120196538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0757cf955cf31b1f099c43610a1f36902f31e6cc9c896d68c70ce33404f4ef81`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 17:11:41 GMT
ENV HAXE_VERSION=3.4.4
# Tue, 10 Oct 2017 17:12:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.4 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 17:12:20 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a573e1651404e02e2c88040f5295d614f7f24b3edc26ec8d3a16102cf3592327`  
		Last Modified: Tue, 10 Oct 2017 17:14:11 GMT  
		Size: 6.0 MB (5973427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.4-windowsservercore`

**does not exist** (yet?)

## `haxe:3.4-jessie`

```console
$ docker pull haxe@sha256:2068f0bf53c2a211b3fca752b56c10fe7694b095ae7ea4cebfe05a9e30c76b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-jessie` - linux; amd64

```console
$ docker pull haxe@sha256:d726982ee43b50722ce44081b644a117d4b829343f711e188a5e853f9da4ea60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123818184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee96db1e910409af40c7c97a6480899e527988552663e1a48da525ef240b36d`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:24:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:24:45 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:24:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 10 Oct 2017 07:26:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 17:12:33 GMT
ENV HAXE_VERSION=3.4.4
# Tue, 10 Oct 2017 17:13:30 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.4 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 17:13:31 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7d19075dabe53281024f7c17bc6330281e5b8f7af8083f5c377a5a464c9e7`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 485.6 KB (485569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37857e23be9b3e36ec2748ac178ec3d61c15733187868497973780bb0ac5091b`  
		Last Modified: Tue, 10 Oct 2017 07:36:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3fb913d5aa9f250f269a5bb8189d031d0877b1d226a955a51d7a5792933e45`  
		Last Modified: Tue, 10 Oct 2017 07:36:24 GMT  
		Size: 2.3 MB (2287543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0932f8ec9ca778eb30ec7c11cd66118c0dd62d249fe36a8a7c132e98dd9b5175`  
		Last Modified: Tue, 10 Oct 2017 17:14:55 GMT  
		Size: 6.0 MB (5957685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-onbuild`

```console
$ docker pull haxe@sha256:d7c56392816186316f4349f687a4b1e4759b27964a0ec78797939bfeef99e131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-onbuild` - linux; amd64

```console
$ docker pull haxe@sha256:221b243a845ee0a8e868796ef05e7de347971e0a7cfe17c51e2e338de65e81f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120196669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afc5aa5920a750d3d9b0515a60b6d90275a3df37f8386d6aaa60274c7d2104d`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 17:11:41 GMT
ENV HAXE_VERSION=3.4.4
# Tue, 10 Oct 2017 17:12:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.4 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 17:12:20 GMT
CMD ["haxe"]
# Tue, 10 Oct 2017 17:13:47 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 17:13:47 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 17:13:47 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Tue, 10 Oct 2017 17:13:47 GMT
ONBUILD RUN yes | haxelib install all
# Tue, 10 Oct 2017 17:13:48 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 17:13:48 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Tue, 10 Oct 2017 17:13:48 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a573e1651404e02e2c88040f5295d614f7f24b3edc26ec8d3a16102cf3592327`  
		Last Modified: Tue, 10 Oct 2017 17:14:11 GMT  
		Size: 6.0 MB (5973427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5adfea254dbfdcbf7ffd7b6fd2f00ce099da8d71f18fb3d193d389edc454035`  
		Last Modified: Tue, 10 Oct 2017 17:15:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-stretch`

```console
$ docker pull haxe@sha256:c52d0a2f57e946eb2c347b0217fb3c00239892bc77b0840ec2e84c311725787e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:3.4-stretch` - linux; amd64

```console
$ docker pull haxe@sha256:29b7fac9ba4f448243f523d5a364f3afe9998c1ceeee98ad7ab7d338b10d1f23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120196538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0757cf955cf31b1f099c43610a1f36902f31e6cc9c896d68c70ce33404f4ef81`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 17:11:41 GMT
ENV HAXE_VERSION=3.4.4
# Tue, 10 Oct 2017 17:12:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.4 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 17:12:20 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a573e1651404e02e2c88040f5295d614f7f24b3edc26ec8d3a16102cf3592327`  
		Last Modified: Tue, 10 Oct 2017 17:14:11 GMT  
		Size: 6.0 MB (5973427 bytes)  
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
$ docker pull haxe@sha256:c52d0a2f57e946eb2c347b0217fb3c00239892bc77b0840ec2e84c311725787e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haxe:latest` - linux; amd64

```console
$ docker pull haxe@sha256:29b7fac9ba4f448243f523d5a364f3afe9998c1ceeee98ad7ab7d338b10d1f23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120196538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0757cf955cf31b1f099c43610a1f36902f31e6cc9c896d68c70ce33404f4ef81`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:22:07 GMT
ENV NEKO_VERSION=2.1.0
# Tue, 10 Oct 2017 07:23:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 10 Oct 2017 17:11:41 GMT
ENV HAXE_VERSION=3.4.4
# Tue, 10 Oct 2017 17:12:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.4 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 10 Oct 2017 17:12:20 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d349b94d409c4eca76b2f8a7dc64d8330a3d32c9d793d76331bc64dc149d68`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 568.3 KB (568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f4f96774095a7976b4f4a035bf77c86bcf95dcfca84da8d61d72f780e88165`  
		Last Modified: Tue, 10 Oct 2017 07:35:28 GMT  
		Size: 2.8 MB (2764110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a573e1651404e02e2c88040f5295d614f7f24b3edc26ec8d3a16102cf3592327`  
		Last Modified: Tue, 10 Oct 2017 17:14:11 GMT  
		Size: 6.0 MB (5973427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
