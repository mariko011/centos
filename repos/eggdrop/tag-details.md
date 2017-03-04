<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:1.8.1rc2`](#eggdrop181rc2)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.0`](#eggdrop180)
-	[`eggdrop:stable`](#eggdropstable)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:31f1fd5ea7b17c9e5aef541bf274abe61cbc75ce2ed61ea3e54cf711e3fe87b6
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13134133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd25808dea78cbbe590bed939633deae30a505e2c535064801bdf3a3e6f61d1`
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
# Fri, 03 Mar 2017 21:50:51 GMT
ENV EGGDROP_SHA256=17ce77233894c8f2bb26a1c9a7b054e86d57475fcfbcd90b0d200d2a52b9c5eb
# Fri, 03 Mar 2017 21:50:52 GMT
ENV EGGDROP_COMMIT=f0863681d5e9cb900d1ee4bb1ea7a6bbb36c3b4c
# Fri, 03 Mar 2017 21:51:38 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 21:51:38 GMT
ENV NICK=
# Fri, 03 Mar 2017 21:51:38 GMT
ENV SERVER=
# Fri, 03 Mar 2017 21:51:38 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 21:51:39 GMT
ENV OWNER=
# Fri, 03 Mar 2017 21:51:39 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 21:51:39 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 21:51:40 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 21:51:40 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 21:51:40 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 21:51:41 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 21:51:41 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 21:51:41 GMT
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
	-	`sha256:509f695d400184597ab07642041d08b4626eefb837cc770e0a7297f2c82025a9`  
		Last Modified: Sat, 04 Mar 2017 04:53:53 GMT  
		Size: 11.2 MB (11217493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c37d389955aa289433e9b00e1061f37eafb4ff5abaf95120d62bc5b9abb982`  
		Last Modified: Sat, 04 Mar 2017 04:53:46 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993f68e2a96404df85b91a106e66a9e9e8025d33ba950a591249f2d064bd6aff`  
		Last Modified: Sat, 04 Mar 2017 04:53:46 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.1rc2`

```console
$ docker pull eggdrop@sha256:b4287a5f1161d585e15c2ca135cbdc52fc166e3059ce4db14237da04f794f4f9
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.1rc2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7250884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a8cf49a7f892c14ab33518077807212afb3db54e7e61c637d2145edf2186fa`
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
# Fri, 03 Mar 2017 21:50:45 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1rc2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1rc2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1rc2.tar.gz.asc eggdrop-1.8.1rc2.tar.gz   && rm eggdrop-1.8.1rc2.tar.gz.asc   && tar -zxvf eggdrop-1.8.1rc2.tar.gz   && rm eggdrop-1.8.1rc2.tar.gz   && ( cd eggdrop-1.8.1rc2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1rc2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 21:50:45 GMT
ENV NICK=
# Fri, 03 Mar 2017 21:50:45 GMT
ENV SERVER=
# Fri, 03 Mar 2017 21:50:46 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 21:50:46 GMT
ENV OWNER=
# Fri, 03 Mar 2017 21:50:46 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 21:50:46 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 21:50:47 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 21:50:47 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 21:50:47 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 21:50:48 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 21:50:48 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 21:50:48 GMT
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
	-	`sha256:5501d9248d02df6fc194f505eb0ff136f192aaa5d1c066fe4d868b591b3953d8`  
		Last Modified: Sat, 04 Mar 2017 04:53:25 GMT  
		Size: 4.9 MB (4925881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28644a200ffaa875f0fd436a41a397acc5760222e4cbe4833ee2f787eb64182`  
		Last Modified: Sat, 04 Mar 2017 04:53:20 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81058d8abb49303fd36d4dcb1522c76d79305942852d1be7defc3919215c3729`  
		Last Modified: Sat, 04 Mar 2017 04:53:20 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:a15a12787f73c4d478beaf8277b1c6de27c511abb6f8e7d85c8ca5e03aa603d3
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d76cc57d1277f8a0371b7fd6ef9ccfaca635ec56848b3ac1b1e155c4f3f611`
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
# Fri, 03 Mar 2017 21:49:58 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.0.tar.gz.asc eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz.asc   && tar -zxvf eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz   && ( cd eggdrop-1.8.0     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.0   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 21:49:59 GMT
ENV NICK=
# Fri, 03 Mar 2017 21:49:59 GMT
ENV SERVER=
# Fri, 03 Mar 2017 21:49:59 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 21:50:00 GMT
ENV OWNER=
# Fri, 03 Mar 2017 21:50:00 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 21:50:00 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 21:50:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 21:50:01 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 21:50:01 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 21:50:02 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 21:50:02 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 21:50:02 GMT
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
	-	`sha256:e1216bb5acbef1b631d01e5e8d66c10a49054ad0674a26621274e2be08a31fb5`  
		Last Modified: Sat, 04 Mar 2017 04:52:06 GMT  
		Size: 5.0 MB (5041986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6f1d66c41405eb53ef8e367131a8096fb922f8820302ccab37faa0b65e581b`  
		Last Modified: Sat, 04 Mar 2017 04:52:02 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4fe58132d241b1bc965daefb91f058d5a2c0d6b6da6c0e507a15cbb8bd108a`  
		Last Modified: Sat, 04 Mar 2017 04:52:01 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0`

```console
$ docker pull eggdrop@sha256:a15a12787f73c4d478beaf8277b1c6de27c511abb6f8e7d85c8ca5e03aa603d3
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d76cc57d1277f8a0371b7fd6ef9ccfaca635ec56848b3ac1b1e155c4f3f611`
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
# Fri, 03 Mar 2017 21:49:58 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.0.tar.gz.asc eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz.asc   && tar -zxvf eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz   && ( cd eggdrop-1.8.0     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.0   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 21:49:59 GMT
ENV NICK=
# Fri, 03 Mar 2017 21:49:59 GMT
ENV SERVER=
# Fri, 03 Mar 2017 21:49:59 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 21:50:00 GMT
ENV OWNER=
# Fri, 03 Mar 2017 21:50:00 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 21:50:00 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 21:50:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 21:50:01 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 21:50:01 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 21:50:02 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 21:50:02 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 21:50:02 GMT
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
	-	`sha256:e1216bb5acbef1b631d01e5e8d66c10a49054ad0674a26621274e2be08a31fb5`  
		Last Modified: Sat, 04 Mar 2017 04:52:06 GMT  
		Size: 5.0 MB (5041986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6f1d66c41405eb53ef8e367131a8096fb922f8820302ccab37faa0b65e581b`  
		Last Modified: Sat, 04 Mar 2017 04:52:02 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4fe58132d241b1bc965daefb91f058d5a2c0d6b6da6c0e507a15cbb8bd108a`  
		Last Modified: Sat, 04 Mar 2017 04:52:01 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:a15a12787f73c4d478beaf8277b1c6de27c511abb6f8e7d85c8ca5e03aa603d3
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d76cc57d1277f8a0371b7fd6ef9ccfaca635ec56848b3ac1b1e155c4f3f611`
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
# Fri, 03 Mar 2017 21:49:58 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.0.tar.gz.asc eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz.asc   && tar -zxvf eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz   && ( cd eggdrop-1.8.0     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.0   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 21:49:59 GMT
ENV NICK=
# Fri, 03 Mar 2017 21:49:59 GMT
ENV SERVER=
# Fri, 03 Mar 2017 21:49:59 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 21:50:00 GMT
ENV OWNER=
# Fri, 03 Mar 2017 21:50:00 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 21:50:00 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 21:50:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 21:50:01 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 21:50:01 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 21:50:02 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 21:50:02 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 21:50:02 GMT
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
	-	`sha256:e1216bb5acbef1b631d01e5e8d66c10a49054ad0674a26621274e2be08a31fb5`  
		Last Modified: Sat, 04 Mar 2017 04:52:06 GMT  
		Size: 5.0 MB (5041986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6f1d66c41405eb53ef8e367131a8096fb922f8820302ccab37faa0b65e581b`  
		Last Modified: Sat, 04 Mar 2017 04:52:02 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4fe58132d241b1bc965daefb91f058d5a2c0d6b6da6c0e507a15cbb8bd108a`  
		Last Modified: Sat, 04 Mar 2017 04:52:01 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:a15a12787f73c4d478beaf8277b1c6de27c511abb6f8e7d85c8ca5e03aa603d3
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d76cc57d1277f8a0371b7fd6ef9ccfaca635ec56848b3ac1b1e155c4f3f611`
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
# Fri, 03 Mar 2017 21:49:58 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.0.tar.gz.asc eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz.asc   && tar -zxvf eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz   && ( cd eggdrop-1.8.0     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.0   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 21:49:59 GMT
ENV NICK=
# Fri, 03 Mar 2017 21:49:59 GMT
ENV SERVER=
# Fri, 03 Mar 2017 21:49:59 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 21:50:00 GMT
ENV OWNER=
# Fri, 03 Mar 2017 21:50:00 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 21:50:00 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 21:50:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 21:50:01 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 21:50:01 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 21:50:02 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 21:50:02 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 21:50:02 GMT
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
	-	`sha256:e1216bb5acbef1b631d01e5e8d66c10a49054ad0674a26621274e2be08a31fb5`  
		Last Modified: Sat, 04 Mar 2017 04:52:06 GMT  
		Size: 5.0 MB (5041986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6f1d66c41405eb53ef8e367131a8096fb922f8820302ccab37faa0b65e581b`  
		Last Modified: Sat, 04 Mar 2017 04:52:02 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4fe58132d241b1bc965daefb91f058d5a2c0d6b6da6c0e507a15cbb8bd108a`  
		Last Modified: Sat, 04 Mar 2017 04:52:01 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:4c528892fc7e7b2592ebdfa63d4b6de33e183db61241d6c6edf9867862efb0ca
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e3cf57997123a20e454991c5d098601070184c78a758ef1f78057d08876c54`
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
# Fri, 03 Mar 2017 21:49:13 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Fri, 03 Mar 2017 21:49:14 GMT
ENV NICK=
# Fri, 03 Mar 2017 21:49:14 GMT
ENV SERVER=
# Fri, 03 Mar 2017 21:49:14 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 21:49:14 GMT
ENV OWNER=
# Fri, 03 Mar 2017 21:49:15 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 21:49:15 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 21:49:15 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 21:49:16 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 21:49:16 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 21:49:16 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 21:49:17 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 21:49:17 GMT
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
	-	`sha256:107dd737e4b9c94c7b2c6ca9de9dfa9ecc38e27de0b8b6fe7d0d3ea4025fb39e`  
		Last Modified: Sat, 04 Mar 2017 04:51:22 GMT  
		Size: 3.6 MB (3585015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1c209b5bfeaa66d27be19aa91cd750e22ad3a289f1770ec69d83b8d37f45e2`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9241205839627a482a0de6bd8709e1ea285ae5835357b098eb805f1b0b1032`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:4c528892fc7e7b2592ebdfa63d4b6de33e183db61241d6c6edf9867862efb0ca
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e3cf57997123a20e454991c5d098601070184c78a758ef1f78057d08876c54`
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
# Fri, 03 Mar 2017 21:49:13 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Fri, 03 Mar 2017 21:49:14 GMT
ENV NICK=
# Fri, 03 Mar 2017 21:49:14 GMT
ENV SERVER=
# Fri, 03 Mar 2017 21:49:14 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 21:49:14 GMT
ENV OWNER=
# Fri, 03 Mar 2017 21:49:15 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 21:49:15 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 21:49:15 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 21:49:16 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 21:49:16 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 21:49:16 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 21:49:17 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 21:49:17 GMT
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
	-	`sha256:107dd737e4b9c94c7b2c6ca9de9dfa9ecc38e27de0b8b6fe7d0d3ea4025fb39e`  
		Last Modified: Sat, 04 Mar 2017 04:51:22 GMT  
		Size: 3.6 MB (3585015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1c209b5bfeaa66d27be19aa91cd750e22ad3a289f1770ec69d83b8d37f45e2`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9241205839627a482a0de6bd8709e1ea285ae5835357b098eb805f1b0b1032`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
