<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.1`](#eggdrop181)
-	[`eggdrop:stable`](#eggdropstable)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:386841dbfdfe81bbae668814cb547733f9946946c02231f12cdcbd06c45cb63d
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13132497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bdd72ef608b1679cc40eb3a0c5dc675b82d1b33522f1341228e9a4fd4903c1d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:50:49 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 03 Mar 2017 21:50:50 GMT
RUN adduser -S eggdrop
# Fri, 03 Mar 2017 21:50:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 28 Mar 2017 17:07:25 GMT
ENV EGGDROP_SHA256=c0383e682c3480b21778a5f5d42830e9425b51fa0cd373065963c3826b2f9ce6
# Tue, 28 Mar 2017 17:07:25 GMT
ENV EGGDROP_COMMIT=ad4e5e6b5df96cb32dfb9500dc674de79c4b625b
# Tue, 28 Mar 2017 17:08:14 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 28 Mar 2017 17:08:14 GMT
ENV NICK=
# Tue, 28 Mar 2017 17:08:15 GMT
ENV SERVER=
# Tue, 28 Mar 2017 17:08:16 GMT
ENV LISTEN=3333
# Tue, 28 Mar 2017 17:08:16 GMT
ENV OWNER=
# Tue, 28 Mar 2017 17:08:17 GMT
ENV USERFILE=eggdrop.user
# Tue, 28 Mar 2017 17:08:17 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 28 Mar 2017 17:08:18 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 28 Mar 2017 17:08:18 GMT
EXPOSE 3333/tcp
# Tue, 28 Mar 2017 17:08:19 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 28 Mar 2017 17:08:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 28 Mar 2017 17:08:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 28 Mar 2017 17:08:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f49539d2c6b5a8947c0ce6924db95000c8d2618f91ba8a810d22bf173b17886`  
		Last Modified: Sat, 04 Mar 2017 04:53:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5bddc9b39869bdd59bf1731c24678df216bcab730623dbe2888e71803f82f9`  
		Last Modified: Sat, 04 Mar 2017 04:53:46 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa03ade7dcbd3309e247a247335e1a66ad14536c953488a329b648b5e7defd5`  
		Last Modified: Tue, 28 Mar 2017 17:10:06 GMT  
		Size: 11.2 MB (11215863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfb35d69c098f4cd1711b514e08d5e0698cc78640152eb327cfd0cfae7840fc`  
		Last Modified: Tue, 28 Mar 2017 17:10:03 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d933c0ea83e29d89cb677a1fcedfef1fbf67b15fe40fd4493c59edb6ace0a`  
		Last Modified: Tue, 28 Mar 2017 17:10:06 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:4d8de65809617f289f8269b028673dbe73c63842ca1adbdadc6097b3e9ea3151
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7254423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c83f9449fa02943a16c17b5e9dde9ddd9bcebf0c3740c27e07f8914d15ef98f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:48:50 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 03 Mar 2017 21:48:51 GMT
RUN adduser -S eggdrop
# Fri, 03 Mar 2017 21:48:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 28 Mar 2017 17:09:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 28 Mar 2017 17:09:04 GMT
ENV NICK=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV SERVER=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV LISTEN=3333
# Tue, 28 Mar 2017 17:09:06 GMT
ENV OWNER=
# Tue, 28 Mar 2017 17:09:07 GMT
ENV USERFILE=eggdrop.user
# Tue, 28 Mar 2017 17:09:07 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 28 Mar 2017 17:09:08 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 28 Mar 2017 17:09:08 GMT
EXPOSE 3333/tcp
# Tue, 28 Mar 2017 17:09:09 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 28 Mar 2017 17:09:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 28 Mar 2017 17:09:11 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 28 Mar 2017 17:09:11 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5c47fff02df2b35ae358a2202af4e17996168dc37b707a35cf0dd467f3734`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e3857bd72846a4c81f7ed61db77dc8cc8462fa581cd45ab69ec251efd85cc`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 7.9 KB (7920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afe2aa0c0a4cb598dc337c1e1f677503cba1cb1d687aa04f7a44deb47e03636`  
		Last Modified: Tue, 28 Mar 2017 17:10:33 GMT  
		Size: 4.9 MB (4929421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110185c7ab5e7c686e49a988cf756bf32437668d96cc0c4550786f401418c6f1`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4c088c4a843f703b613ebb1bb362be608a9fee63cd408bf48c1257950bb9af`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.1`

```console
$ docker pull eggdrop@sha256:4d8de65809617f289f8269b028673dbe73c63842ca1adbdadc6097b3e9ea3151
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7254423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c83f9449fa02943a16c17b5e9dde9ddd9bcebf0c3740c27e07f8914d15ef98f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:48:50 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 03 Mar 2017 21:48:51 GMT
RUN adduser -S eggdrop
# Fri, 03 Mar 2017 21:48:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 28 Mar 2017 17:09:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 28 Mar 2017 17:09:04 GMT
ENV NICK=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV SERVER=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV LISTEN=3333
# Tue, 28 Mar 2017 17:09:06 GMT
ENV OWNER=
# Tue, 28 Mar 2017 17:09:07 GMT
ENV USERFILE=eggdrop.user
# Tue, 28 Mar 2017 17:09:07 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 28 Mar 2017 17:09:08 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 28 Mar 2017 17:09:08 GMT
EXPOSE 3333/tcp
# Tue, 28 Mar 2017 17:09:09 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 28 Mar 2017 17:09:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 28 Mar 2017 17:09:11 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 28 Mar 2017 17:09:11 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5c47fff02df2b35ae358a2202af4e17996168dc37b707a35cf0dd467f3734`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e3857bd72846a4c81f7ed61db77dc8cc8462fa581cd45ab69ec251efd85cc`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 7.9 KB (7920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afe2aa0c0a4cb598dc337c1e1f677503cba1cb1d687aa04f7a44deb47e03636`  
		Last Modified: Tue, 28 Mar 2017 17:10:33 GMT  
		Size: 4.9 MB (4929421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110185c7ab5e7c686e49a988cf756bf32437668d96cc0c4550786f401418c6f1`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4c088c4a843f703b613ebb1bb362be608a9fee63cd408bf48c1257950bb9af`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:4d8de65809617f289f8269b028673dbe73c63842ca1adbdadc6097b3e9ea3151
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7254423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c83f9449fa02943a16c17b5e9dde9ddd9bcebf0c3740c27e07f8914d15ef98f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:48:50 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 03 Mar 2017 21:48:51 GMT
RUN adduser -S eggdrop
# Fri, 03 Mar 2017 21:48:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 28 Mar 2017 17:09:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 28 Mar 2017 17:09:04 GMT
ENV NICK=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV SERVER=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV LISTEN=3333
# Tue, 28 Mar 2017 17:09:06 GMT
ENV OWNER=
# Tue, 28 Mar 2017 17:09:07 GMT
ENV USERFILE=eggdrop.user
# Tue, 28 Mar 2017 17:09:07 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 28 Mar 2017 17:09:08 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 28 Mar 2017 17:09:08 GMT
EXPOSE 3333/tcp
# Tue, 28 Mar 2017 17:09:09 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 28 Mar 2017 17:09:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 28 Mar 2017 17:09:11 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 28 Mar 2017 17:09:11 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5c47fff02df2b35ae358a2202af4e17996168dc37b707a35cf0dd467f3734`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e3857bd72846a4c81f7ed61db77dc8cc8462fa581cd45ab69ec251efd85cc`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 7.9 KB (7920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afe2aa0c0a4cb598dc337c1e1f677503cba1cb1d687aa04f7a44deb47e03636`  
		Last Modified: Tue, 28 Mar 2017 17:10:33 GMT  
		Size: 4.9 MB (4929421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110185c7ab5e7c686e49a988cf756bf32437668d96cc0c4550786f401418c6f1`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4c088c4a843f703b613ebb1bb362be608a9fee63cd408bf48c1257950bb9af`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:4d8de65809617f289f8269b028673dbe73c63842ca1adbdadc6097b3e9ea3151
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7254423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c83f9449fa02943a16c17b5e9dde9ddd9bcebf0c3740c27e07f8914d15ef98f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:48:50 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 03 Mar 2017 21:48:51 GMT
RUN adduser -S eggdrop
# Fri, 03 Mar 2017 21:48:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 28 Mar 2017 17:09:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 28 Mar 2017 17:09:04 GMT
ENV NICK=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV SERVER=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV LISTEN=3333
# Tue, 28 Mar 2017 17:09:06 GMT
ENV OWNER=
# Tue, 28 Mar 2017 17:09:07 GMT
ENV USERFILE=eggdrop.user
# Tue, 28 Mar 2017 17:09:07 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 28 Mar 2017 17:09:08 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 28 Mar 2017 17:09:08 GMT
EXPOSE 3333/tcp
# Tue, 28 Mar 2017 17:09:09 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 28 Mar 2017 17:09:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 28 Mar 2017 17:09:11 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 28 Mar 2017 17:09:11 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5c47fff02df2b35ae358a2202af4e17996168dc37b707a35cf0dd467f3734`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e3857bd72846a4c81f7ed61db77dc8cc8462fa581cd45ab69ec251efd85cc`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 7.9 KB (7920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afe2aa0c0a4cb598dc337c1e1f677503cba1cb1d687aa04f7a44deb47e03636`  
		Last Modified: Tue, 28 Mar 2017 17:10:33 GMT  
		Size: 4.9 MB (4929421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110185c7ab5e7c686e49a988cf756bf32437668d96cc0c4550786f401418c6f1`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4c088c4a843f703b613ebb1bb362be608a9fee63cd408bf48c1257950bb9af`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:168262f1a684654719da657035ef4384ea42d51dba10b59263343db7e82529f4
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b7a1dc3869e5b391c168d6bfe18c9afa6cb9d713f0557c2b577921fdb6febb`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:48:50 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 03 Mar 2017 21:48:51 GMT
RUN adduser -S eggdrop
# Fri, 03 Mar 2017 21:48:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 28 Mar 2017 17:09:33 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 28 Mar 2017 17:09:33 GMT
ENV NICK=
# Tue, 28 Mar 2017 17:09:34 GMT
ENV SERVER=
# Tue, 28 Mar 2017 17:09:35 GMT
ENV LISTEN=3333
# Tue, 28 Mar 2017 17:09:35 GMT
ENV OWNER=
# Tue, 28 Mar 2017 17:09:36 GMT
ENV USERFILE=eggdrop.user
# Tue, 28 Mar 2017 17:09:36 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 28 Mar 2017 17:09:37 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 28 Mar 2017 17:09:38 GMT
EXPOSE 3333/tcp
# Tue, 28 Mar 2017 17:09:39 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 28 Mar 2017 17:09:39 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 28 Mar 2017 17:09:40 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 28 Mar 2017 17:09:41 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5c47fff02df2b35ae358a2202af4e17996168dc37b707a35cf0dd467f3734`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e3857bd72846a4c81f7ed61db77dc8cc8462fa581cd45ab69ec251efd85cc`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 7.9 KB (7920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1cf3b7f24bb446a595ed9932e146e2f7ad6b2be6f1c5e042f4207b931264cc`  
		Last Modified: Tue, 28 Mar 2017 17:11:56 GMT  
		Size: 3.6 MB (3585058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32d4c51394f19b269d5dab03a8a2eb0ba73836f7664307d26510407fcd3b49d`  
		Last Modified: Tue, 28 Mar 2017 17:11:55 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ed03251520fe6c389bc3f791b8ebcfcf9ac43ee5b93f563ee6d2622f99746`  
		Last Modified: Tue, 28 Mar 2017 17:11:56 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:168262f1a684654719da657035ef4384ea42d51dba10b59263343db7e82529f4
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b7a1dc3869e5b391c168d6bfe18c9afa6cb9d713f0557c2b577921fdb6febb`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:48:50 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 03 Mar 2017 21:48:51 GMT
RUN adduser -S eggdrop
# Fri, 03 Mar 2017 21:48:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 28 Mar 2017 17:09:33 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 28 Mar 2017 17:09:33 GMT
ENV NICK=
# Tue, 28 Mar 2017 17:09:34 GMT
ENV SERVER=
# Tue, 28 Mar 2017 17:09:35 GMT
ENV LISTEN=3333
# Tue, 28 Mar 2017 17:09:35 GMT
ENV OWNER=
# Tue, 28 Mar 2017 17:09:36 GMT
ENV USERFILE=eggdrop.user
# Tue, 28 Mar 2017 17:09:36 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 28 Mar 2017 17:09:37 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 28 Mar 2017 17:09:38 GMT
EXPOSE 3333/tcp
# Tue, 28 Mar 2017 17:09:39 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 28 Mar 2017 17:09:39 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 28 Mar 2017 17:09:40 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 28 Mar 2017 17:09:41 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5c47fff02df2b35ae358a2202af4e17996168dc37b707a35cf0dd467f3734`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e3857bd72846a4c81f7ed61db77dc8cc8462fa581cd45ab69ec251efd85cc`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 7.9 KB (7920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1cf3b7f24bb446a595ed9932e146e2f7ad6b2be6f1c5e042f4207b931264cc`  
		Last Modified: Tue, 28 Mar 2017 17:11:56 GMT  
		Size: 3.6 MB (3585058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32d4c51394f19b269d5dab03a8a2eb0ba73836f7664307d26510407fcd3b49d`  
		Last Modified: Tue, 28 Mar 2017 17:11:55 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ed03251520fe6c389bc3f791b8ebcfcf9ac43ee5b93f563ee6d2622f99746`  
		Last Modified: Tue, 28 Mar 2017 17:11:56 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
