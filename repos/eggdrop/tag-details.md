<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.0`](#eggdrop180)
-	[`eggdrop:1.8.0rc1`](#eggdrop180rc1)
-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)
-	[`eggdrop:stable`](#eggdropstable)
-	[`eggdrop:latest`](#eggdroplatest)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:0a89b89601705d4895e33f138e09e8b5af74586919621828085848d484a4b9c2
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7901769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cf52e2376e970886b2bc30b3eb4328e8147d0eb81a97f437aa1d899ca1e200`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:15:27 GMT
ENV EGGDROP_COMMIT=a059d848e24372d00b8383fb6d3a755c0fe00e70
# Tue, 18 Oct 2016 23:15:27 GMT
ENV EGGDROP_SHA256=ccff608aae904756a9f3eaad24642167c269126e3af73ab8a6ec2ee24e70886a
# Tue, 18 Oct 2016 23:16:21 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Tue, 18 Oct 2016 23:16:22 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:16:22 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:16:22 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:16:23 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:16:23 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:16:23 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:16:24 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:16:24 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:16:25 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:16:25 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:16:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:16:26 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656225102979363f1e265ca87147ef5de7a55b9c4026d6cc7bc9b0407568729e`  
		Last Modified: Tue, 18 Oct 2016 23:16:38 GMT  
		Size: 5.6 MB (5577357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8202ef17a5efeaa6ffc57842d2b1b2de5dfa272347bb3862e328e0b57a3d8d57`  
		Last Modified: Tue, 18 Oct 2016 23:16:36 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26642fd56b5d539ebb28a6d95306b884a694f8eb276b0d74beca6e48ad7261f`  
		Last Modified: Tue, 18 Oct 2016 23:16:35 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:349d06c90adad5c9d146e354b40070eb521ea06448ee1c31e16ab9d72fade6f3
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6985399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ece96617fa1b566bde4a46783a23537f9d98ba0be72d068bf4fecd274b0147`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:14:04 GMT
ENV EGGDROP_SHA256=184d54ae5681ece523a24633d591907b530fe7e4628cf8386edf205a8eabf3cd
# Tue, 18 Oct 2016 23:14:04 GMT
ENV EGGDROP_COMMIT=c5016d76014c2ce494a327016629543ed868b2c7
# Tue, 18 Oct 2016 23:14:40 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Tue, 18 Oct 2016 23:14:40 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:14:41 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:14:41 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:14:41 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:14:42 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:14:42 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:14:43 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:14:43 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:14:44 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:14:44 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:14:45 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:14:45 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c19fbd7c434b43f01377b3741cbd497ebb49b7304462545df46022184b885b`  
		Last Modified: Tue, 18 Oct 2016 23:14:56 GMT  
		Size: 4.7 MB (4660988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0e320362013ff495a33283ef18be8628b56f6b4705c33c312f77badb248f3e`  
		Last Modified: Tue, 18 Oct 2016 23:14:56 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75413ccdd786b6712e85b903159e6fc78e51ad06ab1a944b100524fcb07368b`  
		Last Modified: Tue, 18 Oct 2016 23:14:54 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0`

```console
$ docker pull eggdrop@sha256:349d06c90adad5c9d146e354b40070eb521ea06448ee1c31e16ab9d72fade6f3
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6985399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ece96617fa1b566bde4a46783a23537f9d98ba0be72d068bf4fecd274b0147`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:14:04 GMT
ENV EGGDROP_SHA256=184d54ae5681ece523a24633d591907b530fe7e4628cf8386edf205a8eabf3cd
# Tue, 18 Oct 2016 23:14:04 GMT
ENV EGGDROP_COMMIT=c5016d76014c2ce494a327016629543ed868b2c7
# Tue, 18 Oct 2016 23:14:40 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Tue, 18 Oct 2016 23:14:40 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:14:41 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:14:41 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:14:41 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:14:42 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:14:42 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:14:43 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:14:43 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:14:44 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:14:44 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:14:45 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:14:45 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c19fbd7c434b43f01377b3741cbd497ebb49b7304462545df46022184b885b`  
		Last Modified: Tue, 18 Oct 2016 23:14:56 GMT  
		Size: 4.7 MB (4660988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0e320362013ff495a33283ef18be8628b56f6b4705c33c312f77badb248f3e`  
		Last Modified: Tue, 18 Oct 2016 23:14:56 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75413ccdd786b6712e85b903159e6fc78e51ad06ab1a944b100524fcb07368b`  
		Last Modified: Tue, 18 Oct 2016 23:14:54 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0rc1`

```console
$ docker pull eggdrop@sha256:349d06c90adad5c9d146e354b40070eb521ea06448ee1c31e16ab9d72fade6f3
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6985399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ece96617fa1b566bde4a46783a23537f9d98ba0be72d068bf4fecd274b0147`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:14:04 GMT
ENV EGGDROP_SHA256=184d54ae5681ece523a24633d591907b530fe7e4628cf8386edf205a8eabf3cd
# Tue, 18 Oct 2016 23:14:04 GMT
ENV EGGDROP_COMMIT=c5016d76014c2ce494a327016629543ed868b2c7
# Tue, 18 Oct 2016 23:14:40 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Tue, 18 Oct 2016 23:14:40 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:14:41 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:14:41 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:14:41 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:14:42 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:14:42 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:14:43 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:14:43 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:14:44 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:14:44 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:14:45 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:14:45 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c19fbd7c434b43f01377b3741cbd497ebb49b7304462545df46022184b885b`  
		Last Modified: Tue, 18 Oct 2016 23:14:56 GMT  
		Size: 4.7 MB (4660988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0e320362013ff495a33283ef18be8628b56f6b4705c33c312f77badb248f3e`  
		Last Modified: Tue, 18 Oct 2016 23:14:56 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75413ccdd786b6712e85b903159e6fc78e51ad06ab1a944b100524fcb07368b`  
		Last Modified: Tue, 18 Oct 2016 23:14:54 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:9c652fb65e6cb9583058c4b0166460960c8b573bc510426b9b61ab00abe4ea27
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b534ea25fa14a8c8f2c5611ba41e0f14c375adeacdf78c9fc7041eb1bf134624`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:13:10 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 18 Oct 2016 23:13:10 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:13:11 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:13:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:13:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:13:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:13:13 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:13:13 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:13:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:13:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:13:15 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a57a3ec65c4f428394aad0a4312cd2dc0198beae4dd8a50e39576d6e4e4d07`  
		Last Modified: Tue, 18 Oct 2016 23:13:25 GMT  
		Size: 3.6 MB (3586865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8dff6fb983afa3853237d254dda9a97f55ac74806c2dab385c310ef9539da`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c87e3290f26f24556b19dc8113cd0899a7e67498e43fc288c364ddf66bcd0`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:9c652fb65e6cb9583058c4b0166460960c8b573bc510426b9b61ab00abe4ea27
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b534ea25fa14a8c8f2c5611ba41e0f14c375adeacdf78c9fc7041eb1bf134624`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:13:10 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 18 Oct 2016 23:13:10 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:13:11 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:13:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:13:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:13:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:13:13 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:13:13 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:13:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:13:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:13:15 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a57a3ec65c4f428394aad0a4312cd2dc0198beae4dd8a50e39576d6e4e4d07`  
		Last Modified: Tue, 18 Oct 2016 23:13:25 GMT  
		Size: 3.6 MB (3586865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8dff6fb983afa3853237d254dda9a97f55ac74806c2dab385c310ef9539da`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c87e3290f26f24556b19dc8113cd0899a7e67498e43fc288c364ddf66bcd0`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:9c652fb65e6cb9583058c4b0166460960c8b573bc510426b9b61ab00abe4ea27
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b534ea25fa14a8c8f2c5611ba41e0f14c375adeacdf78c9fc7041eb1bf134624`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:13:10 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 18 Oct 2016 23:13:10 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:13:11 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:13:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:13:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:13:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:13:13 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:13:13 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:13:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:13:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:13:15 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a57a3ec65c4f428394aad0a4312cd2dc0198beae4dd8a50e39576d6e4e4d07`  
		Last Modified: Tue, 18 Oct 2016 23:13:25 GMT  
		Size: 3.6 MB (3586865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8dff6fb983afa3853237d254dda9a97f55ac74806c2dab385c310ef9539da`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c87e3290f26f24556b19dc8113cd0899a7e67498e43fc288c364ddf66bcd0`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:9c652fb65e6cb9583058c4b0166460960c8b573bc510426b9b61ab00abe4ea27
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b534ea25fa14a8c8f2c5611ba41e0f14c375adeacdf78c9fc7041eb1bf134624`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:13:10 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 18 Oct 2016 23:13:10 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:13:11 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:13:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:13:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:13:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:13:13 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:13:13 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:13:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:13:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:13:15 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a57a3ec65c4f428394aad0a4312cd2dc0198beae4dd8a50e39576d6e4e4d07`  
		Last Modified: Tue, 18 Oct 2016 23:13:25 GMT  
		Size: 3.6 MB (3586865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8dff6fb983afa3853237d254dda9a97f55ac74806c2dab385c310ef9539da`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c87e3290f26f24556b19dc8113cd0899a7e67498e43fc288c364ddf66bcd0`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
