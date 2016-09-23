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
$ docker pull eggdrop@sha256:cdd7a5da5fdf7141970d6b4ce4ab6dd7bc301393953d2b1cfe91d8fe44ed07a0
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7900015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b951924a2b2c172e4529c6aa5b7fd6b521203074d8878ba2bab89c60312f401f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:43:33 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 23 Sep 2016 16:43:34 GMT
RUN adduser -S eggdrop
# Fri, 23 Sep 2016 16:43:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 16:45:57 GMT
ENV EGGDROP_SHA256=4e3f1e4b52d2c9ae0df9d7c9cfabf501f8ca39a08c7f8556cc5abe49e280b6e8
# Fri, 23 Sep 2016 16:45:57 GMT
ENV EGGDROP_COMMIT=1a2ac64b9afd3bba52513a41adf8d8ac672177e4
# Fri, 23 Sep 2016 16:46:33 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Fri, 23 Sep 2016 16:46:33 GMT
ENV NICK=
# Fri, 23 Sep 2016 16:46:33 GMT
ENV SERVER=
# Fri, 23 Sep 2016 16:46:34 GMT
ENV LISTEN=3333
# Fri, 23 Sep 2016 16:46:34 GMT
ENV OWNER=
# Fri, 23 Sep 2016 16:46:34 GMT
ENV USERFILE=eggdrop.user
# Fri, 23 Sep 2016 16:46:35 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 23 Sep 2016 16:46:35 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 23 Sep 2016 16:46:35 GMT
EXPOSE 3333/tcp
# Fri, 23 Sep 2016 16:46:36 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 23 Sep 2016 16:46:36 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 23 Sep 2016 16:46:37 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 23 Sep 2016 16:46:37 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fce46b3e4ac4adeb2bc0c47748fabc6a63379f573c104d410da2f5c94cd04b`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fc389670947f64dbcc7493d755290d57126fe23abf317a4374b5f97c193c91`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe2d8e5d82b31a0b45389264e7421bbbad884eac49e6656b0fca2fb363db03b`  
		Last Modified: Fri, 23 Sep 2016 16:46:46 GMT  
		Size: 5.6 MB (5575645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca172c035aa2cc0cf2e1cbd21c7614c1b94951d7df316c366817e37cd09f041`  
		Last Modified: Fri, 23 Sep 2016 16:46:44 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03d9d7ae995a5894c142bdc4de7a38f255797c1f79d0e6e598b989ba617a43f`  
		Last Modified: Fri, 23 Sep 2016 16:46:44 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:065b5d875dde71e1506416b71c71bfda71ea470cd537f505aa9e5c87610d2b78
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6985442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35310b76b4059c5de105aa6ff3e15638765a08963d80d73b986e3f0ab834e068`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:43:33 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 23 Sep 2016 16:43:34 GMT
RUN adduser -S eggdrop
# Fri, 23 Sep 2016 16:43:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 16:44:43 GMT
ENV EGGDROP_SHA256=184d54ae5681ece523a24633d591907b530fe7e4628cf8386edf205a8eabf3cd
# Fri, 23 Sep 2016 16:44:43 GMT
ENV EGGDROP_COMMIT=c5016d76014c2ce494a327016629543ed868b2c7
# Fri, 23 Sep 2016 16:45:18 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Fri, 23 Sep 2016 16:45:19 GMT
ENV NICK=
# Fri, 23 Sep 2016 16:45:19 GMT
ENV SERVER=
# Fri, 23 Sep 2016 16:45:19 GMT
ENV LISTEN=3333
# Fri, 23 Sep 2016 16:45:20 GMT
ENV OWNER=
# Fri, 23 Sep 2016 16:45:20 GMT
ENV USERFILE=eggdrop.user
# Fri, 23 Sep 2016 16:45:20 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 23 Sep 2016 16:45:21 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 23 Sep 2016 16:45:21 GMT
EXPOSE 3333/tcp
# Fri, 23 Sep 2016 16:45:21 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 23 Sep 2016 16:45:22 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 23 Sep 2016 16:45:22 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 23 Sep 2016 16:45:23 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fce46b3e4ac4adeb2bc0c47748fabc6a63379f573c104d410da2f5c94cd04b`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fc389670947f64dbcc7493d755290d57126fe23abf317a4374b5f97c193c91`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e2d089b4931e76acb57159f82afeb1a5bae36fc6c8f5e344fb637423451ed6`  
		Last Modified: Fri, 23 Sep 2016 16:45:32 GMT  
		Size: 4.7 MB (4661068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0abe3215a4b1ed10f75b0c2b4b548d76100f4851365a70a9cf47502496ab831`  
		Last Modified: Fri, 23 Sep 2016 16:45:29 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f5f5525f1435ba21889e77eac51efebce6df3f3964e3c02c8e394c4578907`  
		Last Modified: Fri, 23 Sep 2016 16:45:29 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0`

```console
$ docker pull eggdrop@sha256:065b5d875dde71e1506416b71c71bfda71ea470cd537f505aa9e5c87610d2b78
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6985442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35310b76b4059c5de105aa6ff3e15638765a08963d80d73b986e3f0ab834e068`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:43:33 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 23 Sep 2016 16:43:34 GMT
RUN adduser -S eggdrop
# Fri, 23 Sep 2016 16:43:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 16:44:43 GMT
ENV EGGDROP_SHA256=184d54ae5681ece523a24633d591907b530fe7e4628cf8386edf205a8eabf3cd
# Fri, 23 Sep 2016 16:44:43 GMT
ENV EGGDROP_COMMIT=c5016d76014c2ce494a327016629543ed868b2c7
# Fri, 23 Sep 2016 16:45:18 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Fri, 23 Sep 2016 16:45:19 GMT
ENV NICK=
# Fri, 23 Sep 2016 16:45:19 GMT
ENV SERVER=
# Fri, 23 Sep 2016 16:45:19 GMT
ENV LISTEN=3333
# Fri, 23 Sep 2016 16:45:20 GMT
ENV OWNER=
# Fri, 23 Sep 2016 16:45:20 GMT
ENV USERFILE=eggdrop.user
# Fri, 23 Sep 2016 16:45:20 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 23 Sep 2016 16:45:21 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 23 Sep 2016 16:45:21 GMT
EXPOSE 3333/tcp
# Fri, 23 Sep 2016 16:45:21 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 23 Sep 2016 16:45:22 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 23 Sep 2016 16:45:22 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 23 Sep 2016 16:45:23 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fce46b3e4ac4adeb2bc0c47748fabc6a63379f573c104d410da2f5c94cd04b`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fc389670947f64dbcc7493d755290d57126fe23abf317a4374b5f97c193c91`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e2d089b4931e76acb57159f82afeb1a5bae36fc6c8f5e344fb637423451ed6`  
		Last Modified: Fri, 23 Sep 2016 16:45:32 GMT  
		Size: 4.7 MB (4661068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0abe3215a4b1ed10f75b0c2b4b548d76100f4851365a70a9cf47502496ab831`  
		Last Modified: Fri, 23 Sep 2016 16:45:29 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f5f5525f1435ba21889e77eac51efebce6df3f3964e3c02c8e394c4578907`  
		Last Modified: Fri, 23 Sep 2016 16:45:29 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0rc1`

```console
$ docker pull eggdrop@sha256:065b5d875dde71e1506416b71c71bfda71ea470cd537f505aa9e5c87610d2b78
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6985442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35310b76b4059c5de105aa6ff3e15638765a08963d80d73b986e3f0ab834e068`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:43:33 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 23 Sep 2016 16:43:34 GMT
RUN adduser -S eggdrop
# Fri, 23 Sep 2016 16:43:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 16:44:43 GMT
ENV EGGDROP_SHA256=184d54ae5681ece523a24633d591907b530fe7e4628cf8386edf205a8eabf3cd
# Fri, 23 Sep 2016 16:44:43 GMT
ENV EGGDROP_COMMIT=c5016d76014c2ce494a327016629543ed868b2c7
# Fri, 23 Sep 2016 16:45:18 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Fri, 23 Sep 2016 16:45:19 GMT
ENV NICK=
# Fri, 23 Sep 2016 16:45:19 GMT
ENV SERVER=
# Fri, 23 Sep 2016 16:45:19 GMT
ENV LISTEN=3333
# Fri, 23 Sep 2016 16:45:20 GMT
ENV OWNER=
# Fri, 23 Sep 2016 16:45:20 GMT
ENV USERFILE=eggdrop.user
# Fri, 23 Sep 2016 16:45:20 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 23 Sep 2016 16:45:21 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 23 Sep 2016 16:45:21 GMT
EXPOSE 3333/tcp
# Fri, 23 Sep 2016 16:45:21 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 23 Sep 2016 16:45:22 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 23 Sep 2016 16:45:22 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 23 Sep 2016 16:45:23 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fce46b3e4ac4adeb2bc0c47748fabc6a63379f573c104d410da2f5c94cd04b`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fc389670947f64dbcc7493d755290d57126fe23abf317a4374b5f97c193c91`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e2d089b4931e76acb57159f82afeb1a5bae36fc6c8f5e344fb637423451ed6`  
		Last Modified: Fri, 23 Sep 2016 16:45:32 GMT  
		Size: 4.7 MB (4661068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0abe3215a4b1ed10f75b0c2b4b548d76100f4851365a70a9cf47502496ab831`  
		Last Modified: Fri, 23 Sep 2016 16:45:29 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f5f5525f1435ba21889e77eac51efebce6df3f3964e3c02c8e394c4578907`  
		Last Modified: Fri, 23 Sep 2016 16:45:29 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:e09ffaefeb7bd793a6bc88be1a1f28ebfef20e13ffb937f60610a0a85baf063d
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7d68fc91d07e543a2c45f631c0ca8712e2947c0ea54a5c75a85073e327cf62`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:43:33 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 23 Sep 2016 16:43:34 GMT
RUN adduser -S eggdrop
# Fri, 23 Sep 2016 16:43:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 16:43:58 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Fri, 23 Sep 2016 16:43:58 GMT
ENV NICK=
# Fri, 23 Sep 2016 16:43:58 GMT
ENV SERVER=
# Fri, 23 Sep 2016 16:43:59 GMT
ENV LISTEN=3333
# Fri, 23 Sep 2016 16:43:59 GMT
ENV OWNER=
# Fri, 23 Sep 2016 16:44:00 GMT
ENV USERFILE=eggdrop.user
# Fri, 23 Sep 2016 16:44:00 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 23 Sep 2016 16:44:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 23 Sep 2016 16:44:01 GMT
EXPOSE 3333/tcp
# Fri, 23 Sep 2016 16:44:01 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 23 Sep 2016 16:44:02 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 23 Sep 2016 16:44:02 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 23 Sep 2016 16:44:02 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fce46b3e4ac4adeb2bc0c47748fabc6a63379f573c104d410da2f5c94cd04b`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fc389670947f64dbcc7493d755290d57126fe23abf317a4374b5f97c193c91`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5f8f9dea053fdda997ed9bc6823c6c5638cff0b941e76610f702fda79abea0`  
		Last Modified: Fri, 23 Sep 2016 16:44:11 GMT  
		Size: 3.6 MB (3586892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75af2b73b60759f9d32ed4198848a9684b6f61cf29b524a58c3f15a2c8853f6f`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.6 KB (1557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7044c351fa5630874be656b7315a2c2b22c5c15dd1a0794958b4231679bdf2e2`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:e09ffaefeb7bd793a6bc88be1a1f28ebfef20e13ffb937f60610a0a85baf063d
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7d68fc91d07e543a2c45f631c0ca8712e2947c0ea54a5c75a85073e327cf62`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:43:33 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 23 Sep 2016 16:43:34 GMT
RUN adduser -S eggdrop
# Fri, 23 Sep 2016 16:43:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 16:43:58 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Fri, 23 Sep 2016 16:43:58 GMT
ENV NICK=
# Fri, 23 Sep 2016 16:43:58 GMT
ENV SERVER=
# Fri, 23 Sep 2016 16:43:59 GMT
ENV LISTEN=3333
# Fri, 23 Sep 2016 16:43:59 GMT
ENV OWNER=
# Fri, 23 Sep 2016 16:44:00 GMT
ENV USERFILE=eggdrop.user
# Fri, 23 Sep 2016 16:44:00 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 23 Sep 2016 16:44:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 23 Sep 2016 16:44:01 GMT
EXPOSE 3333/tcp
# Fri, 23 Sep 2016 16:44:01 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 23 Sep 2016 16:44:02 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 23 Sep 2016 16:44:02 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 23 Sep 2016 16:44:02 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fce46b3e4ac4adeb2bc0c47748fabc6a63379f573c104d410da2f5c94cd04b`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fc389670947f64dbcc7493d755290d57126fe23abf317a4374b5f97c193c91`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5f8f9dea053fdda997ed9bc6823c6c5638cff0b941e76610f702fda79abea0`  
		Last Modified: Fri, 23 Sep 2016 16:44:11 GMT  
		Size: 3.6 MB (3586892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75af2b73b60759f9d32ed4198848a9684b6f61cf29b524a58c3f15a2c8853f6f`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.6 KB (1557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7044c351fa5630874be656b7315a2c2b22c5c15dd1a0794958b4231679bdf2e2`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:e09ffaefeb7bd793a6bc88be1a1f28ebfef20e13ffb937f60610a0a85baf063d
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7d68fc91d07e543a2c45f631c0ca8712e2947c0ea54a5c75a85073e327cf62`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:43:33 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 23 Sep 2016 16:43:34 GMT
RUN adduser -S eggdrop
# Fri, 23 Sep 2016 16:43:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 16:43:58 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Fri, 23 Sep 2016 16:43:58 GMT
ENV NICK=
# Fri, 23 Sep 2016 16:43:58 GMT
ENV SERVER=
# Fri, 23 Sep 2016 16:43:59 GMT
ENV LISTEN=3333
# Fri, 23 Sep 2016 16:43:59 GMT
ENV OWNER=
# Fri, 23 Sep 2016 16:44:00 GMT
ENV USERFILE=eggdrop.user
# Fri, 23 Sep 2016 16:44:00 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 23 Sep 2016 16:44:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 23 Sep 2016 16:44:01 GMT
EXPOSE 3333/tcp
# Fri, 23 Sep 2016 16:44:01 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 23 Sep 2016 16:44:02 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 23 Sep 2016 16:44:02 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 23 Sep 2016 16:44:02 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fce46b3e4ac4adeb2bc0c47748fabc6a63379f573c104d410da2f5c94cd04b`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fc389670947f64dbcc7493d755290d57126fe23abf317a4374b5f97c193c91`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5f8f9dea053fdda997ed9bc6823c6c5638cff0b941e76610f702fda79abea0`  
		Last Modified: Fri, 23 Sep 2016 16:44:11 GMT  
		Size: 3.6 MB (3586892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75af2b73b60759f9d32ed4198848a9684b6f61cf29b524a58c3f15a2c8853f6f`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.6 KB (1557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7044c351fa5630874be656b7315a2c2b22c5c15dd1a0794958b4231679bdf2e2`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:e09ffaefeb7bd793a6bc88be1a1f28ebfef20e13ffb937f60610a0a85baf063d
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7d68fc91d07e543a2c45f631c0ca8712e2947c0ea54a5c75a85073e327cf62`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:43:33 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 23 Sep 2016 16:43:34 GMT
RUN adduser -S eggdrop
# Fri, 23 Sep 2016 16:43:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 16:43:58 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Fri, 23 Sep 2016 16:43:58 GMT
ENV NICK=
# Fri, 23 Sep 2016 16:43:58 GMT
ENV SERVER=
# Fri, 23 Sep 2016 16:43:59 GMT
ENV LISTEN=3333
# Fri, 23 Sep 2016 16:43:59 GMT
ENV OWNER=
# Fri, 23 Sep 2016 16:44:00 GMT
ENV USERFILE=eggdrop.user
# Fri, 23 Sep 2016 16:44:00 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 23 Sep 2016 16:44:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 23 Sep 2016 16:44:01 GMT
EXPOSE 3333/tcp
# Fri, 23 Sep 2016 16:44:01 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Fri, 23 Sep 2016 16:44:02 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 23 Sep 2016 16:44:02 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 23 Sep 2016 16:44:02 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fce46b3e4ac4adeb2bc0c47748fabc6a63379f573c104d410da2f5c94cd04b`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fc389670947f64dbcc7493d755290d57126fe23abf317a4374b5f97c193c91`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5f8f9dea053fdda997ed9bc6823c6c5638cff0b941e76610f702fda79abea0`  
		Last Modified: Fri, 23 Sep 2016 16:44:11 GMT  
		Size: 3.6 MB (3586892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75af2b73b60759f9d32ed4198848a9684b6f61cf29b524a58c3f15a2c8853f6f`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.6 KB (1557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7044c351fa5630874be656b7315a2c2b22c5c15dd1a0794958b4231679bdf2e2`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
