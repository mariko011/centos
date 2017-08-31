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
$ docker pull haxe@sha256:5731491e0675654d3d3e7578eb76a3a563a8c4cecba5600a7ca6eb0c432a06d8
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119467898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3761a03d847d977b83ef9317ce043cfe41636f148a39fe6f37457fda1b95576f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:15:17 GMT
ENV HAXE_VERSION=3.4.2
# Mon, 28 Aug 2017 22:16:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:16:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c130e7da9e4fb566bc78b2afbf4d3d6a6bace33301eec7bc673fcb9465aacdc0`  
		Last Modified: Mon, 28 Aug 2017 22:20:07 GMT  
		Size: 5.7 MB (5701109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-stretch`

```console
$ docker pull haxe@sha256:5731491e0675654d3d3e7578eb76a3a563a8c4cecba5600a7ca6eb0c432a06d8
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119467898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3761a03d847d977b83ef9317ce043cfe41636f148a39fe6f37457fda1b95576f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:15:17 GMT
ENV HAXE_VERSION=3.4.2
# Mon, 28 Aug 2017 22:16:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:16:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c130e7da9e4fb566bc78b2afbf4d3d6a6bace33301eec7bc673fcb9465aacdc0`  
		Last Modified: Mon, 28 Aug 2017 22:20:07 GMT  
		Size: 5.7 MB (5701109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2`

```console
$ docker pull haxe@sha256:5731491e0675654d3d3e7578eb76a3a563a8c4cecba5600a7ca6eb0c432a06d8
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119467898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3761a03d847d977b83ef9317ce043cfe41636f148a39fe6f37457fda1b95576f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:15:17 GMT
ENV HAXE_VERSION=3.4.2
# Mon, 28 Aug 2017 22:16:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:16:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c130e7da9e4fb566bc78b2afbf4d3d6a6bace33301eec7bc673fcb9465aacdc0`  
		Last Modified: Mon, 28 Aug 2017 22:20:07 GMT  
		Size: 5.7 MB (5701109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4`

```console
$ docker pull haxe@sha256:5731491e0675654d3d3e7578eb76a3a563a8c4cecba5600a7ca6eb0c432a06d8
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119467898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3761a03d847d977b83ef9317ce043cfe41636f148a39fe6f37457fda1b95576f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:15:17 GMT
ENV HAXE_VERSION=3.4.2
# Mon, 28 Aug 2017 22:16:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:16:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c130e7da9e4fb566bc78b2afbf4d3d6a6bace33301eec7bc673fcb9465aacdc0`  
		Last Modified: Mon, 28 Aug 2017 22:20:07 GMT  
		Size: 5.7 MB (5701109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:latest`

```console
$ docker pull haxe@sha256:5731491e0675654d3d3e7578eb76a3a563a8c4cecba5600a7ca6eb0c432a06d8
```

-	Platforms:
	-	linux; amd64

### `haxe:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119467898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3761a03d847d977b83ef9317ce043cfe41636f148a39fe6f37457fda1b95576f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:15:17 GMT
ENV HAXE_VERSION=3.4.2
# Mon, 28 Aug 2017 22:16:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:16:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c130e7da9e4fb566bc78b2afbf4d3d6a6bace33301eec7bc673fcb9465aacdc0`  
		Last Modified: Mon, 28 Aug 2017 22:20:07 GMT  
		Size: 5.7 MB (5701109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2-jessie`

```console
$ docker pull haxe@sha256:27a3f3f922ce15b56c72966b880ded817e11f55b838bb91738e6960897a13508
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123550091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fbd728bcfe2a60435a1766cc6c2a488cd78902748ba5c20bda917b8028d546c`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:38:06 GMT
ENV NEKO_VERSION=2.1.0
# Wed, 26 Jul 2017 05:38:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 26 Jul 2017 05:39:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 26 Jul 2017 05:42:42 GMT
ENV HAXE_VERSION=3.4.2
# Wed, 26 Jul 2017 05:43:39 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 26 Jul 2017 05:43:39 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaae49e57f615bc91df4a0a6f58acae278c73e863b19f1a74b7627d486cfd2b2`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 251.6 KB (251562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f15f6a846f7aa6e60f1a090fc6089301aba2693fe32fbcc0e9156eb0448792`  
		Last Modified: Wed, 26 Jul 2017 05:43:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed143f657d3db291467d996bc20ce8b0ab2dfbd24002ed4c15e10903bbeceacd`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 2.3 MB (2287051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b58acc8ce4c03181fbd9c5a19b567ecd732596bc1bce57dda64c9474dd2c30`  
		Last Modified: Wed, 26 Jul 2017 05:45:22 GMT  
		Size: 5.9 MB (5916179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-jessie`

```console
$ docker pull haxe@sha256:27a3f3f922ce15b56c72966b880ded817e11f55b838bb91738e6960897a13508
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123550091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fbd728bcfe2a60435a1766cc6c2a488cd78902748ba5c20bda917b8028d546c`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:38:06 GMT
ENV NEKO_VERSION=2.1.0
# Wed, 26 Jul 2017 05:38:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 26 Jul 2017 05:39:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 26 Jul 2017 05:42:42 GMT
ENV HAXE_VERSION=3.4.2
# Wed, 26 Jul 2017 05:43:39 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 26 Jul 2017 05:43:39 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaae49e57f615bc91df4a0a6f58acae278c73e863b19f1a74b7627d486cfd2b2`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 251.6 KB (251562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f15f6a846f7aa6e60f1a090fc6089301aba2693fe32fbcc0e9156eb0448792`  
		Last Modified: Wed, 26 Jul 2017 05:43:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed143f657d3db291467d996bc20ce8b0ab2dfbd24002ed4c15e10903bbeceacd`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 2.3 MB (2287051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b58acc8ce4c03181fbd9c5a19b567ecd732596bc1bce57dda64c9474dd2c30`  
		Last Modified: Wed, 26 Jul 2017 05:45:22 GMT  
		Size: 5.9 MB (5916179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4.2-onbuild`

```console
$ docker pull haxe@sha256:ea3f6a7b0e6308758771df84b721e844b4f9718f1b932a9def05b9b0e44e43d5
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4.2-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119468024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be158cae16eba5da6c23a18a7b4dc5d72040b989c0caa987faa70e74b6539be`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:15:17 GMT
ENV HAXE_VERSION=3.4.2
# Mon, 28 Aug 2017 22:16:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:16:21 GMT
CMD ["haxe"]
# Mon, 28 Aug 2017 22:16:31 GMT
RUN mkdir -p /usr/src/app
# Mon, 28 Aug 2017 22:16:32 GMT
WORKDIR /usr/src/app
# Mon, 28 Aug 2017 22:16:32 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 28 Aug 2017 22:16:32 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 28 Aug 2017 22:16:33 GMT
ONBUILD COPY . /usr/src/app
# Mon, 28 Aug 2017 22:16:33 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 28 Aug 2017 22:16:33 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c130e7da9e4fb566bc78b2afbf4d3d6a6bace33301eec7bc673fcb9465aacdc0`  
		Last Modified: Mon, 28 Aug 2017 22:20:07 GMT  
		Size: 5.7 MB (5701109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad62a13263901fc625ea7ba4fc341065ca2c71b3b3c5fcd0e3ec4de7f529d51`  
		Last Modified: Mon, 28 Aug 2017 22:21:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.4-onbuild`

```console
$ docker pull haxe@sha256:ea3f6a7b0e6308758771df84b721e844b4f9718f1b932a9def05b9b0e44e43d5
```

-	Platforms:
	-	linux; amd64

### `haxe:3.4-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119468024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be158cae16eba5da6c23a18a7b4dc5d72040b989c0caa987faa70e74b6539be`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:15:17 GMT
ENV HAXE_VERSION=3.4.2
# Mon, 28 Aug 2017 22:16:20 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.4.2 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:16:21 GMT
CMD ["haxe"]
# Mon, 28 Aug 2017 22:16:31 GMT
RUN mkdir -p /usr/src/app
# Mon, 28 Aug 2017 22:16:32 GMT
WORKDIR /usr/src/app
# Mon, 28 Aug 2017 22:16:32 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 28 Aug 2017 22:16:32 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 28 Aug 2017 22:16:33 GMT
ONBUILD COPY . /usr/src/app
# Mon, 28 Aug 2017 22:16:33 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 28 Aug 2017 22:16:33 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c130e7da9e4fb566bc78b2afbf4d3d6a6bace33301eec7bc673fcb9465aacdc0`  
		Last Modified: Mon, 28 Aug 2017 22:20:07 GMT  
		Size: 5.7 MB (5701109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad62a13263901fc625ea7ba4fc341065ca2c71b3b3c5fcd0e3ec4de7f529d51`  
		Last Modified: Mon, 28 Aug 2017 22:21:03 GMT  
		Size: 126.0 B  
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
$ docker pull haxe@sha256:35b7f3cad8ed21ca49f9f01a4035856b64d17af7d10ae7f5cc96ac707f7fc3fc
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118940744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbb544e713a8613ff13a924e04febf222ccf595aeeec1efbb396ebfc6e8e8f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:16:38 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 28 Aug 2017 22:17:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:17:22 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc49247eca4976edb75177ed8fea8344206f321af9fcbf82cae17b6657507f`  
		Last Modified: Mon, 28 Aug 2017 22:21:25 GMT  
		Size: 5.2 MB (5173955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-stretch`

```console
$ docker pull haxe@sha256:35b7f3cad8ed21ca49f9f01a4035856b64d17af7d10ae7f5cc96ac707f7fc3fc
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118940744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbb544e713a8613ff13a924e04febf222ccf595aeeec1efbb396ebfc6e8e8f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:16:38 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 28 Aug 2017 22:17:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:17:22 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc49247eca4976edb75177ed8fea8344206f321af9fcbf82cae17b6657507f`  
		Last Modified: Mon, 28 Aug 2017 22:21:25 GMT  
		Size: 5.2 MB (5173955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-stretch`

```console
$ docker pull haxe@sha256:35b7f3cad8ed21ca49f9f01a4035856b64d17af7d10ae7f5cc96ac707f7fc3fc
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118940744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbb544e713a8613ff13a924e04febf222ccf595aeeec1efbb396ebfc6e8e8f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:16:38 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 28 Aug 2017 22:17:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:17:22 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc49247eca4976edb75177ed8fea8344206f321af9fcbf82cae17b6657507f`  
		Last Modified: Mon, 28 Aug 2017 22:21:25 GMT  
		Size: 5.2 MB (5173955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1`

```console
$ docker pull haxe@sha256:35b7f3cad8ed21ca49f9f01a4035856b64d17af7d10ae7f5cc96ac707f7fc3fc
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118940744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbb544e713a8613ff13a924e04febf222ccf595aeeec1efbb396ebfc6e8e8f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:16:38 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 28 Aug 2017 22:17:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:17:22 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc49247eca4976edb75177ed8fea8344206f321af9fcbf82cae17b6657507f`  
		Last Modified: Mon, 28 Aug 2017 22:21:25 GMT  
		Size: 5.2 MB (5173955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0`

```console
$ docker pull haxe@sha256:35b7f3cad8ed21ca49f9f01a4035856b64d17af7d10ae7f5cc96ac707f7fc3fc
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118940744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbb544e713a8613ff13a924e04febf222ccf595aeeec1efbb396ebfc6e8e8f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:16:38 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 28 Aug 2017 22:17:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:17:22 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc49247eca4976edb75177ed8fea8344206f321af9fcbf82cae17b6657507f`  
		Last Modified: Mon, 28 Aug 2017 22:21:25 GMT  
		Size: 5.2 MB (5173955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3`

```console
$ docker pull haxe@sha256:35b7f3cad8ed21ca49f9f01a4035856b64d17af7d10ae7f5cc96ac707f7fc3fc
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118940744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbb544e713a8613ff13a924e04febf222ccf595aeeec1efbb396ebfc6e8e8f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:16:38 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 28 Aug 2017 22:17:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:17:22 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc49247eca4976edb75177ed8fea8344206f321af9fcbf82cae17b6657507f`  
		Last Modified: Mon, 28 Aug 2017 22:21:25 GMT  
		Size: 5.2 MB (5173955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-jessie`

```console
$ docker pull haxe@sha256:a6106078208b6d8a8150fc6318d1df2d6c16fd5b70e67232c63abe2afa8a1fbb
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123028954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6d85c083b846944a18228047bac5c5cf2170ce9939f8cf0acae4294956f510`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:38:06 GMT
ENV NEKO_VERSION=2.1.0
# Wed, 26 Jul 2017 05:38:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 26 Jul 2017 05:39:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 26 Jul 2017 05:41:39 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Wed, 26 Jul 2017 05:42:35 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 26 Jul 2017 05:42:35 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaae49e57f615bc91df4a0a6f58acae278c73e863b19f1a74b7627d486cfd2b2`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 251.6 KB (251562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f15f6a846f7aa6e60f1a090fc6089301aba2693fe32fbcc0e9156eb0448792`  
		Last Modified: Wed, 26 Jul 2017 05:43:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed143f657d3db291467d996bc20ce8b0ab2dfbd24002ed4c15e10903bbeceacd`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 2.3 MB (2287051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7489ed1c054af4f036aa95e154fc41c33b32ffad152d1d5c89f085443d4be4`  
		Last Modified: Wed, 26 Jul 2017 05:44:45 GMT  
		Size: 5.4 MB (5395042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-jessie`

```console
$ docker pull haxe@sha256:a6106078208b6d8a8150fc6318d1df2d6c16fd5b70e67232c63abe2afa8a1fbb
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123028954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6d85c083b846944a18228047bac5c5cf2170ce9939f8cf0acae4294956f510`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:38:06 GMT
ENV NEKO_VERSION=2.1.0
# Wed, 26 Jul 2017 05:38:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 26 Jul 2017 05:39:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 26 Jul 2017 05:41:39 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Wed, 26 Jul 2017 05:42:35 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 26 Jul 2017 05:42:35 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaae49e57f615bc91df4a0a6f58acae278c73e863b19f1a74b7627d486cfd2b2`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 251.6 KB (251562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f15f6a846f7aa6e60f1a090fc6089301aba2693fe32fbcc0e9156eb0448792`  
		Last Modified: Wed, 26 Jul 2017 05:43:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed143f657d3db291467d996bc20ce8b0ab2dfbd24002ed4c15e10903bbeceacd`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 2.3 MB (2287051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7489ed1c054af4f036aa95e154fc41c33b32ffad152d1d5c89f085443d4be4`  
		Last Modified: Wed, 26 Jul 2017 05:44:45 GMT  
		Size: 5.4 MB (5395042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-jessie`

```console
$ docker pull haxe@sha256:a6106078208b6d8a8150fc6318d1df2d6c16fd5b70e67232c63abe2afa8a1fbb
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123028954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6d85c083b846944a18228047bac5c5cf2170ce9939f8cf0acae4294956f510`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:38:06 GMT
ENV NEKO_VERSION=2.1.0
# Wed, 26 Jul 2017 05:38:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 26 Jul 2017 05:39:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 26 Jul 2017 05:41:39 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Wed, 26 Jul 2017 05:42:35 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 26 Jul 2017 05:42:35 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaae49e57f615bc91df4a0a6f58acae278c73e863b19f1a74b7627d486cfd2b2`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 251.6 KB (251562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f15f6a846f7aa6e60f1a090fc6089301aba2693fe32fbcc0e9156eb0448792`  
		Last Modified: Wed, 26 Jul 2017 05:43:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed143f657d3db291467d996bc20ce8b0ab2dfbd24002ed4c15e10903bbeceacd`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 2.3 MB (2287051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7489ed1c054af4f036aa95e154fc41c33b32ffad152d1d5c89f085443d4be4`  
		Last Modified: Wed, 26 Jul 2017 05:44:45 GMT  
		Size: 5.4 MB (5395042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-rc.1-onbuild`

```console
$ docker pull haxe@sha256:738c138a123fdecb656551d86541610b4108fc7c7173add66eadd973a53a8500
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-rc.1-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118940869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eedfa202d009529d7d2c3f5aa13086123b9650bc29ebb0683bbbffeb72832b9`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:16:38 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 28 Aug 2017 22:17:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:17:22 GMT
CMD ["haxe"]
# Mon, 28 Aug 2017 22:17:35 GMT
RUN mkdir -p /usr/src/app
# Mon, 28 Aug 2017 22:17:36 GMT
WORKDIR /usr/src/app
# Mon, 28 Aug 2017 22:17:36 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 28 Aug 2017 22:17:36 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 28 Aug 2017 22:17:37 GMT
ONBUILD COPY . /usr/src/app
# Mon, 28 Aug 2017 22:17:37 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 28 Aug 2017 22:17:38 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc49247eca4976edb75177ed8fea8344206f321af9fcbf82cae17b6657507f`  
		Last Modified: Mon, 28 Aug 2017 22:21:25 GMT  
		Size: 5.2 MB (5173955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68953b78ba529cb04e32430bb2ef46cf1aaee2fc05e51f619d9ead4cbc4d8d18`  
		Last Modified: Mon, 28 Aug 2017 22:22:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3.0-onbuild`

```console
$ docker pull haxe@sha256:738c138a123fdecb656551d86541610b4108fc7c7173add66eadd973a53a8500
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3.0-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118940869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eedfa202d009529d7d2c3f5aa13086123b9650bc29ebb0683bbbffeb72832b9`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:16:38 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 28 Aug 2017 22:17:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:17:22 GMT
CMD ["haxe"]
# Mon, 28 Aug 2017 22:17:35 GMT
RUN mkdir -p /usr/src/app
# Mon, 28 Aug 2017 22:17:36 GMT
WORKDIR /usr/src/app
# Mon, 28 Aug 2017 22:17:36 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 28 Aug 2017 22:17:36 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 28 Aug 2017 22:17:37 GMT
ONBUILD COPY . /usr/src/app
# Mon, 28 Aug 2017 22:17:37 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 28 Aug 2017 22:17:38 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc49247eca4976edb75177ed8fea8344206f321af9fcbf82cae17b6657507f`  
		Last Modified: Mon, 28 Aug 2017 22:21:25 GMT  
		Size: 5.2 MB (5173955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68953b78ba529cb04e32430bb2ef46cf1aaee2fc05e51f619d9ead4cbc4d8d18`  
		Last Modified: Mon, 28 Aug 2017 22:22:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.3-onbuild`

```console
$ docker pull haxe@sha256:738c138a123fdecb656551d86541610b4108fc7c7173add66eadd973a53a8500
```

-	Platforms:
	-	linux; amd64

### `haxe:3.3-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118940869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eedfa202d009529d7d2c3f5aa13086123b9650bc29ebb0683bbbffeb72832b9`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:16:38 GMT
ENV HAXE_VERSION=3.3.0-rc.1
# Mon, 28 Aug 2017 22:17:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.3.0-rc1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:17:22 GMT
CMD ["haxe"]
# Mon, 28 Aug 2017 22:17:35 GMT
RUN mkdir -p /usr/src/app
# Mon, 28 Aug 2017 22:17:36 GMT
WORKDIR /usr/src/app
# Mon, 28 Aug 2017 22:17:36 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 28 Aug 2017 22:17:36 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 28 Aug 2017 22:17:37 GMT
ONBUILD COPY . /usr/src/app
# Mon, 28 Aug 2017 22:17:37 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 28 Aug 2017 22:17:38 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dc49247eca4976edb75177ed8fea8344206f321af9fcbf82cae17b6657507f`  
		Last Modified: Mon, 28 Aug 2017 22:21:25 GMT  
		Size: 5.2 MB (5173955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68953b78ba529cb04e32430bb2ef46cf1aaee2fc05e51f619d9ead4cbc4d8d18`  
		Last Modified: Mon, 28 Aug 2017 22:22:52 GMT  
		Size: 125.0 B  
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
$ docker pull haxe@sha256:952594fde9f1564eccb1e164e1cb3a5cf85dd1d032c5bd93f337c48ac9db2bd3
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117955986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b5e6d56ac7926e3c3e0d63e4262a7dff6b6134c04a95d5cdacc1448273a0a6`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:17:44 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 28 Aug 2017 22:18:23 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:18:23 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d3b3ace558daa100647abb9b504fbb98884c694f93520c1b9074da9c973163`  
		Last Modified: Mon, 28 Aug 2017 22:23:17 GMT  
		Size: 4.2 MB (4189197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-stretch`

```console
$ docker pull haxe@sha256:952594fde9f1564eccb1e164e1cb3a5cf85dd1d032c5bd93f337c48ac9db2bd3
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117955986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b5e6d56ac7926e3c3e0d63e4262a7dff6b6134c04a95d5cdacc1448273a0a6`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:17:44 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 28 Aug 2017 22:18:23 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:18:23 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d3b3ace558daa100647abb9b504fbb98884c694f93520c1b9074da9c973163`  
		Last Modified: Mon, 28 Aug 2017 22:23:17 GMT  
		Size: 4.2 MB (4189197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1`

```console
$ docker pull haxe@sha256:952594fde9f1564eccb1e164e1cb3a5cf85dd1d032c5bd93f337c48ac9db2bd3
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117955986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b5e6d56ac7926e3c3e0d63e4262a7dff6b6134c04a95d5cdacc1448273a0a6`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:17:44 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 28 Aug 2017 22:18:23 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:18:23 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d3b3ace558daa100647abb9b504fbb98884c694f93520c1b9074da9c973163`  
		Last Modified: Mon, 28 Aug 2017 22:23:17 GMT  
		Size: 4.2 MB (4189197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2`

```console
$ docker pull haxe@sha256:952594fde9f1564eccb1e164e1cb3a5cf85dd1d032c5bd93f337c48ac9db2bd3
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117955986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b5e6d56ac7926e3c3e0d63e4262a7dff6b6134c04a95d5cdacc1448273a0a6`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:17:44 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 28 Aug 2017 22:18:23 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:18:23 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d3b3ace558daa100647abb9b504fbb98884c694f93520c1b9074da9c973163`  
		Last Modified: Mon, 28 Aug 2017 22:23:17 GMT  
		Size: 4.2 MB (4189197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-jessie`

```console
$ docker pull haxe@sha256:6303fa6d55f8eba45fa4a7d5242e2b8d2c7149f77e13d8df8a4b9f3ac84201f2
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122085001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e916a035dd8f7f774c16554a987dfbf76e5a7feb2735a8f2de39ef7e42ea7d4`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:38:06 GMT
ENV NEKO_VERSION=2.1.0
# Wed, 26 Jul 2017 05:38:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 26 Jul 2017 05:39:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 26 Jul 2017 05:40:45 GMT
ENV HAXE_VERSION=3.2.1
# Wed, 26 Jul 2017 05:41:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 26 Jul 2017 05:41:32 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaae49e57f615bc91df4a0a6f58acae278c73e863b19f1a74b7627d486cfd2b2`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 251.6 KB (251562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f15f6a846f7aa6e60f1a090fc6089301aba2693fe32fbcc0e9156eb0448792`  
		Last Modified: Wed, 26 Jul 2017 05:43:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed143f657d3db291467d996bc20ce8b0ab2dfbd24002ed4c15e10903bbeceacd`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 2.3 MB (2287051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3d220f0007ee6e47bc2934d13f022b4fefa045a843d5a12576b67eaf1b5a16`  
		Last Modified: Wed, 26 Jul 2017 05:44:19 GMT  
		Size: 4.5 MB (4451089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-jessie`

```console
$ docker pull haxe@sha256:6303fa6d55f8eba45fa4a7d5242e2b8d2c7149f77e13d8df8a4b9f3ac84201f2
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122085001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e916a035dd8f7f774c16554a987dfbf76e5a7feb2735a8f2de39ef7e42ea7d4`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:38:06 GMT
ENV NEKO_VERSION=2.1.0
# Wed, 26 Jul 2017 05:38:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 26 Jul 2017 05:39:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 26 Jul 2017 05:40:45 GMT
ENV HAXE_VERSION=3.2.1
# Wed, 26 Jul 2017 05:41:32 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 26 Jul 2017 05:41:32 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaae49e57f615bc91df4a0a6f58acae278c73e863b19f1a74b7627d486cfd2b2`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 251.6 KB (251562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f15f6a846f7aa6e60f1a090fc6089301aba2693fe32fbcc0e9156eb0448792`  
		Last Modified: Wed, 26 Jul 2017 05:43:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed143f657d3db291467d996bc20ce8b0ab2dfbd24002ed4c15e10903bbeceacd`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 2.3 MB (2287051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3d220f0007ee6e47bc2934d13f022b4fefa045a843d5a12576b67eaf1b5a16`  
		Last Modified: Wed, 26 Jul 2017 05:44:19 GMT  
		Size: 4.5 MB (4451089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2.1-onbuild`

```console
$ docker pull haxe@sha256:3b687ae86f23ca7bccfae44fa4701bfe41bd1c46eeac4541e53341f70907c714
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2.1-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117956112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e528282950c8e3c041ecb65d64f6e01c404d5d442b7a665b1571902bc5a748`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:17:44 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 28 Aug 2017 22:18:23 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:18:23 GMT
CMD ["haxe"]
# Mon, 28 Aug 2017 22:18:35 GMT
RUN mkdir -p /usr/src/app
# Mon, 28 Aug 2017 22:18:36 GMT
WORKDIR /usr/src/app
# Mon, 28 Aug 2017 22:18:36 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 28 Aug 2017 22:18:37 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 28 Aug 2017 22:18:37 GMT
ONBUILD COPY . /usr/src/app
# Mon, 28 Aug 2017 22:18:37 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 28 Aug 2017 22:18:38 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d3b3ace558daa100647abb9b504fbb98884c694f93520c1b9074da9c973163`  
		Last Modified: Mon, 28 Aug 2017 22:23:17 GMT  
		Size: 4.2 MB (4189197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b7f76be7f2def52bca09259f95ff116b6f4c57fa2bb078987e1ef8c210ea6`  
		Last Modified: Mon, 28 Aug 2017 22:24:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.2-onbuild`

```console
$ docker pull haxe@sha256:3b687ae86f23ca7bccfae44fa4701bfe41bd1c46eeac4541e53341f70907c714
```

-	Platforms:
	-	linux; amd64

### `haxe:3.2-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117956112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e528282950c8e3c041ecb65d64f6e01c404d5d442b7a665b1571902bc5a748`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:17:44 GMT
ENV HAXE_VERSION=3.2.1
# Mon, 28 Aug 2017 22:18:23 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.2.1 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:18:23 GMT
CMD ["haxe"]
# Mon, 28 Aug 2017 22:18:35 GMT
RUN mkdir -p /usr/src/app
# Mon, 28 Aug 2017 22:18:36 GMT
WORKDIR /usr/src/app
# Mon, 28 Aug 2017 22:18:36 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 28 Aug 2017 22:18:37 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 28 Aug 2017 22:18:37 GMT
ONBUILD COPY . /usr/src/app
# Mon, 28 Aug 2017 22:18:37 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 28 Aug 2017 22:18:38 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d3b3ace558daa100647abb9b504fbb98884c694f93520c1b9074da9c973163`  
		Last Modified: Mon, 28 Aug 2017 22:23:17 GMT  
		Size: 4.2 MB (4189197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b7f76be7f2def52bca09259f95ff116b6f4c57fa2bb078987e1ef8c210ea6`  
		Last Modified: Mon, 28 Aug 2017 22:24:22 GMT  
		Size: 126.0 B  
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
$ docker pull haxe@sha256:3e18cdda1c9b2d755a0d30ddc24152118c5d7c6fc878e896d2eba380aec2ddcf
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117643649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5c08bb14bf06a806fafa4c0496f3fc733f8da4a40b79b93d1561398512660`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:18:45 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 28 Aug 2017 22:19:25 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:19:25 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe8d0baa89dc96ae1852fa9c1343c226085a101735901a8cc008e91d6080ef1`  
		Last Modified: Mon, 28 Aug 2017 22:24:46 GMT  
		Size: 3.9 MB (3876860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-stretch`

```console
$ docker pull haxe@sha256:3e18cdda1c9b2d755a0d30ddc24152118c5d7c6fc878e896d2eba380aec2ddcf
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117643649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5c08bb14bf06a806fafa4c0496f3fc733f8da4a40b79b93d1561398512660`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:18:45 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 28 Aug 2017 22:19:25 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:19:25 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe8d0baa89dc96ae1852fa9c1343c226085a101735901a8cc008e91d6080ef1`  
		Last Modified: Mon, 28 Aug 2017 22:24:46 GMT  
		Size: 3.9 MB (3876860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3`

```console
$ docker pull haxe@sha256:3e18cdda1c9b2d755a0d30ddc24152118c5d7c6fc878e896d2eba380aec2ddcf
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117643649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5c08bb14bf06a806fafa4c0496f3fc733f8da4a40b79b93d1561398512660`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:18:45 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 28 Aug 2017 22:19:25 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:19:25 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe8d0baa89dc96ae1852fa9c1343c226085a101735901a8cc008e91d6080ef1`  
		Last Modified: Mon, 28 Aug 2017 22:24:46 GMT  
		Size: 3.9 MB (3876860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1`

```console
$ docker pull haxe@sha256:3e18cdda1c9b2d755a0d30ddc24152118c5d7c6fc878e896d2eba380aec2ddcf
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117643649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5c08bb14bf06a806fafa4c0496f3fc733f8da4a40b79b93d1561398512660`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:18:45 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 28 Aug 2017 22:19:25 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:19:25 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe8d0baa89dc96ae1852fa9c1343c226085a101735901a8cc008e91d6080ef1`  
		Last Modified: Mon, 28 Aug 2017 22:24:46 GMT  
		Size: 3.9 MB (3876860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-jessie`

```console
$ docker pull haxe@sha256:651df5ce550332e44046a8ab9a6cb898c6352cdbb6f1e82b08fd748f7bf17b7b
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121791236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0afcce64c6e79e493700d6a41c1efb45e4e94b1582e654f4aa6954a9625922d6`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:38:06 GMT
ENV NEKO_VERSION=2.1.0
# Wed, 26 Jul 2017 05:38:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 26 Jul 2017 05:39:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 26 Jul 2017 05:39:47 GMT
ENV HAXE_VERSION=3.1.3
# Wed, 26 Jul 2017 05:40:38 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 26 Jul 2017 05:40:38 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaae49e57f615bc91df4a0a6f58acae278c73e863b19f1a74b7627d486cfd2b2`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 251.6 KB (251562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f15f6a846f7aa6e60f1a090fc6089301aba2693fe32fbcc0e9156eb0448792`  
		Last Modified: Wed, 26 Jul 2017 05:43:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed143f657d3db291467d996bc20ce8b0ab2dfbd24002ed4c15e10903bbeceacd`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 2.3 MB (2287051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58142fe5718092184eea24a55bcc9a2549ffa3a54cdc04ee9e85e41e29e3898`  
		Last Modified: Wed, 26 Jul 2017 05:43:51 GMT  
		Size: 4.2 MB (4157324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-jessie`

```console
$ docker pull haxe@sha256:651df5ce550332e44046a8ab9a6cb898c6352cdbb6f1e82b08fd748f7bf17b7b
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121791236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0afcce64c6e79e493700d6a41c1efb45e4e94b1582e654f4aa6954a9625922d6`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:38:06 GMT
ENV NEKO_VERSION=2.1.0
# Wed, 26 Jul 2017 05:38:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 26 Jul 2017 05:39:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 26 Jul 2017 05:39:47 GMT
ENV HAXE_VERSION=3.1.3
# Wed, 26 Jul 2017 05:40:38 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 26 Jul 2017 05:40:38 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaae49e57f615bc91df4a0a6f58acae278c73e863b19f1a74b7627d486cfd2b2`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 251.6 KB (251562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f15f6a846f7aa6e60f1a090fc6089301aba2693fe32fbcc0e9156eb0448792`  
		Last Modified: Wed, 26 Jul 2017 05:43:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed143f657d3db291467d996bc20ce8b0ab2dfbd24002ed4c15e10903bbeceacd`  
		Last Modified: Wed, 26 Jul 2017 05:43:50 GMT  
		Size: 2.3 MB (2287051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58142fe5718092184eea24a55bcc9a2549ffa3a54cdc04ee9e85e41e29e3898`  
		Last Modified: Wed, 26 Jul 2017 05:43:51 GMT  
		Size: 4.2 MB (4157324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1.3-onbuild`

```console
$ docker pull haxe@sha256:ffaf48892ee66189f3c83431223c1af61227ae2e218d12d2dec200854ea7c59c
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1.3-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117643775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4918a5c49e0f505c8acfe4a8020e5e83917cf35b7649ac4a3035e411ee37eec`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:18:45 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 28 Aug 2017 22:19:25 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:19:25 GMT
CMD ["haxe"]
# Mon, 28 Aug 2017 22:19:44 GMT
RUN mkdir -p /usr/src/app
# Mon, 28 Aug 2017 22:19:45 GMT
WORKDIR /usr/src/app
# Mon, 28 Aug 2017 22:19:45 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 28 Aug 2017 22:19:46 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 28 Aug 2017 22:19:46 GMT
ONBUILD COPY . /usr/src/app
# Mon, 28 Aug 2017 22:19:47 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 28 Aug 2017 22:19:47 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe8d0baa89dc96ae1852fa9c1343c226085a101735901a8cc008e91d6080ef1`  
		Last Modified: Mon, 28 Aug 2017 22:24:46 GMT  
		Size: 3.9 MB (3876860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08735ec023091474e67355f5ff1225ef4c499d98364bc645daef66858e256c6f`  
		Last Modified: Mon, 28 Aug 2017 22:25:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haxe:3.1-onbuild`

```console
$ docker pull haxe@sha256:ffaf48892ee66189f3c83431223c1af61227ae2e218d12d2dec200854ea7c59c
```

-	Platforms:
	-	linux; amd64

### `haxe:3.1-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117643775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4918a5c49e0f505c8acfe4a8020e5e83917cf35b7649ac4a3035e411ee37eec`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 22:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 22:13:49 GMT
ENV NEKO_VERSION=2.1.0
# Mon, 28 Aug 2017 22:15:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "http://nekovm.org/media/neko-2.1.0-src.tar.gz" 	&& echo "0c93d5fe96240510e2d1975ae0caa9dd8eadf70d916a868684f66a099a4acf96 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Mon, 28 Aug 2017 22:18:45 GMT
ENV HAXE_VERSION=3.1.3
# Mon, 28 Aug 2017 22:19:25 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-native-compilers 		camlp4 		libxml-light-ocaml-dev 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& git clone --recursive --depth 1 --branch 3.1.3 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& make OCAMLOPT=ocamlopt.opt 	&& make install INSTALL_DIR=/usr/local 	&& cd / && haxelib setup /usr/local/lib/haxe/lib 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Mon, 28 Aug 2017 22:19:25 GMT
CMD ["haxe"]
# Mon, 28 Aug 2017 22:19:44 GMT
RUN mkdir -p /usr/src/app
# Mon, 28 Aug 2017 22:19:45 GMT
WORKDIR /usr/src/app
# Mon, 28 Aug 2017 22:19:45 GMT
ONBUILD COPY *.hxml /usr/src/app/
# Mon, 28 Aug 2017 22:19:46 GMT
ONBUILD RUN yes | haxelib install all
# Mon, 28 Aug 2017 22:19:46 GMT
ONBUILD COPY . /usr/src/app
# Mon, 28 Aug 2017 22:19:47 GMT
ONBUILD ARG BUILD_HXML=build.hxml
# Mon, 28 Aug 2017 22:19:47 GMT
ONBUILD RUN haxe $BUILD_HXML
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffc6044a9d195850411c72b469649fd4e0019dfb8dd5721669d0766e56784d4`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 338.9 KB (338871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1a4a59657d5d7669761a29169c014c9630cd2b4c69f6be45576d9b3ebe462`  
		Last Modified: Mon, 28 Aug 2017 22:20:06 GMT  
		Size: 2.8 MB (2762684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe8d0baa89dc96ae1852fa9c1343c226085a101735901a8cc008e91d6080ef1`  
		Last Modified: Mon, 28 Aug 2017 22:24:46 GMT  
		Size: 3.9 MB (3876860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08735ec023091474e67355f5ff1225ef4c499d98364bc645daef66858e256c6f`  
		Last Modified: Mon, 28 Aug 2017 22:25:47 GMT  
		Size: 126.0 B  
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
