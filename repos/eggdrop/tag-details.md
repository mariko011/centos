<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.0`](#eggdrop180)
-	[`eggdrop:1.8.0rc3`](#eggdrop180rc3)
-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)
-	[`eggdrop:stable`](#eggdropstable)
-	[`eggdrop:latest`](#eggdroplatest)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:2cb5f114c9dd59a80699e7b498348f007042d9fe2d7b10ed980a3da5cec2842f
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8283009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c37c47a15e658e746ff201a9dce40a021dbd7066702eceab5b28344790e66d28`
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
# Thu, 03 Nov 2016 16:38:14 GMT
ENV EGGDROP_SHA256=3edeb6aa4f8ba07502090ec8e20cd65eef6c57aa9038c62754b47eb84da2e8aa
# Thu, 03 Nov 2016 16:38:14 GMT
ENV EGGDROP_COMMIT=d4690467959e16c8c3f214233b75fa9afaf0490a
# Thu, 03 Nov 2016 16:38:52 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Thu, 03 Nov 2016 16:38:52 GMT
ENV NICK=
# Thu, 03 Nov 2016 16:38:52 GMT
ENV SERVER=
# Thu, 03 Nov 2016 16:38:53 GMT
ENV LISTEN=3333
# Thu, 03 Nov 2016 16:38:53 GMT
ENV OWNER=
# Thu, 03 Nov 2016 16:38:53 GMT
ENV USERFILE=eggdrop.user
# Thu, 03 Nov 2016 16:38:53 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 03 Nov 2016 16:38:54 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 03 Nov 2016 16:38:54 GMT
EXPOSE 3333/tcp
# Thu, 03 Nov 2016 16:38:54 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Thu, 03 Nov 2016 16:38:55 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 03 Nov 2016 16:38:55 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 03 Nov 2016 16:38:55 GMT
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
	-	`sha256:54031bfb603d1f5c5119e53a22c56302508673209bb8f5faae43254f0e46aa78`  
		Last Modified: Thu, 03 Nov 2016 16:39:50 GMT  
		Size: 6.0 MB (5958595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5058a4024acc67ea88af44abd52db89fd5a23c68d6b707482bb880b530a30bb`  
		Last Modified: Thu, 03 Nov 2016 16:39:48 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e1de3a2fb41e3c526a9f529c32f6f9fc0333e594b0b73a73c9d976d97c6c76`  
		Last Modified: Thu, 03 Nov 2016 16:39:47 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:a8391ff5358992077b37413d43b78c05ff645e101a6369187e772bad9036aa21
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7374593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a685469f85f8da822915ae1d4f1be513ed7d5c6df8092657a6cd24fb11fca249`
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
# Thu, 03 Nov 2016 16:38:56 GMT
ENV EGGDROP_SHA256=92a5d0f99867ef613a74fca08f77201df265a761b63537b695a5fc6eff720235
# Thu, 03 Nov 2016 16:38:56 GMT
ENV EGGDROP_COMMIT=7c42c069e17a4f52e22e39a50449a1507874c59a
# Thu, 03 Nov 2016 16:39:33 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Thu, 03 Nov 2016 16:39:33 GMT
ENV NICK=
# Thu, 03 Nov 2016 16:39:33 GMT
ENV SERVER=
# Thu, 03 Nov 2016 16:39:34 GMT
ENV LISTEN=3333
# Thu, 03 Nov 2016 16:39:34 GMT
ENV OWNER=
# Thu, 03 Nov 2016 16:39:34 GMT
ENV USERFILE=eggdrop.user
# Thu, 03 Nov 2016 16:39:34 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 03 Nov 2016 16:39:35 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 03 Nov 2016 16:39:35 GMT
EXPOSE 3333/tcp
# Thu, 03 Nov 2016 16:39:35 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Thu, 03 Nov 2016 16:39:36 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 03 Nov 2016 16:39:36 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 03 Nov 2016 16:39:36 GMT
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
	-	`sha256:abafcde1e5dad45120d835c1fb391c8825a494784342f8e5873b79208cf3be6a`  
		Last Modified: Thu, 03 Nov 2016 16:40:11 GMT  
		Size: 5.1 MB (5050182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92c416697923de795a51f252a3b9e9cc1e4ee5b7d22c446ace0f721c6750276`  
		Last Modified: Thu, 03 Nov 2016 16:40:10 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabc93afb96187f6d0a4faeb97c8a0de4758e588bf9a3c0d7bc1d1c0de8b2b0a`  
		Last Modified: Thu, 03 Nov 2016 16:40:10 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0`

```console
$ docker pull eggdrop@sha256:197c02143cca2cc144d96e7088abd16ad882091f576ff5c76c0db4d084b60213
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7444619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e50df5ae71a97f464d2292619e0d136a44acbd21ff4e655775fd3f86bb6fcc`
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
# Tue, 22 Nov 2016 17:23:06 GMT
ENV EGGDROP_SHA256=e63202326f0504a958b36fc3d57c874bc8ad07e98f19d4aa64d8b835cb7e5e72
# Tue, 22 Nov 2016 17:23:06 GMT
ENV EGGDROP_COMMIT=cf5da32b488bdf06eafcee1c01846c9e31307461
# Tue, 22 Nov 2016 17:23:43 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Tue, 22 Nov 2016 17:23:43 GMT
ENV NICK=
# Tue, 22 Nov 2016 17:23:44 GMT
ENV SERVER=
# Tue, 22 Nov 2016 17:23:44 GMT
ENV LISTEN=3333
# Tue, 22 Nov 2016 17:23:44 GMT
ENV OWNER=
# Tue, 22 Nov 2016 17:23:44 GMT
ENV USERFILE=eggdrop.user
# Tue, 22 Nov 2016 17:23:45 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 22 Nov 2016 17:23:45 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 22 Nov 2016 17:23:45 GMT
EXPOSE 3333/tcp
# Tue, 22 Nov 2016 17:23:46 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 22 Nov 2016 17:23:46 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 22 Nov 2016 17:23:47 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 22 Nov 2016 17:23:47 GMT
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
	-	`sha256:30e8b8839b1561a86a3541f79c98d1f22b6a893e6f4c80e9f1f4c4bffc54d3c4`  
		Last Modified: Tue, 22 Nov 2016 17:24:26 GMT  
		Size: 5.1 MB (5120205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff794582d416924921908bad6513ef1d476ebfa6164be3c31a563c0d8921e2c0`  
		Last Modified: Tue, 22 Nov 2016 17:24:24 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15b49487852fdaa460887b7dab38805f08c2fd35c3f90105e9be695b66944f7`  
		Last Modified: Tue, 22 Nov 2016 17:24:24 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0rc3`

**does not exist** (yet?)

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
