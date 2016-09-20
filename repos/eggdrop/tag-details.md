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
$ docker pull eggdrop@sha256:271edf43a33eed28f902e1b9747ed8aeab8146ac19cefd1e297215acfa8097de
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7898104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e19ca3395b6bf8a97739b8631d6da21631d459c77970272ea4a0c93961c687`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:55:32 GMT
ENV EGGDROP_SHA256=4e3f1e4b52d2c9ae0df9d7c9cfabf501f8ca39a08c7f8556cc5abe49e280b6e8
# Mon, 19 Sep 2016 23:55:32 GMT
ENV EGGDROP_COMMIT=1a2ac64b9afd3bba52513a41adf8d8ac672177e4
# Mon, 19 Sep 2016 23:56:30 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Mon, 19 Sep 2016 23:56:30 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:56:31 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:56:31 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:56:31 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:56:32 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:56:32 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:56:32 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:56:33 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:56:33 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:56:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:56:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:56:34 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4653daacb5cf47f52076ef1bba6d4828a98139d181724f1b34376385ad4596`  
		Last Modified: Mon, 19 Sep 2016 23:56:44 GMT  
		Size: 5.6 MB (5575601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c206c7d43814b08186002cf973f92d9f417cc9ddf62ca676d4b7a7931fa30692`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.6 KB (1557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af987e3c8c6b179de2c6f6e921d01461840a537dc588defd93a17a29468e56d7`  
		Last Modified: Mon, 19 Sep 2016 23:56:41 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:ff63a738d849fc3c9647a4718b83c5956f29107c7225db5bee193309d66192d1
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6983476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4419770d0f59244f245e80a65b3187320fa16e2fec95a2b58a12f7931eb58a5e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:58:13 GMT
ENV EGGDROP_SHA256=184d54ae5681ece523a24633d591907b530fe7e4628cf8386edf205a8eabf3cd
# Mon, 19 Sep 2016 23:58:13 GMT
ENV EGGDROP_COMMIT=c5016d76014c2ce494a327016629543ed868b2c7
# Mon, 19 Sep 2016 23:58:51 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Mon, 19 Sep 2016 23:58:51 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:58:52 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:58:52 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:58:52 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:58:53 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:58:53 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:58:53 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:58:53 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:58:54 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:58:54 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:58:55 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:58:55 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66942de205cc19fcec8673266e2ac5179b7947421415057a897152d9c8eb7a4d`  
		Last Modified: Mon, 19 Sep 2016 23:59:03 GMT  
		Size: 4.7 MB (4660974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842389149c6ea9335fffcd93e73da6997093234dfd89a0a16602a3611fa8a625`  
		Last Modified: Mon, 19 Sep 2016 23:59:01 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf170c9c444409edf32fb83d5c53f5e2afbe54740fa31686be3db86daa72cce4`  
		Last Modified: Mon, 19 Sep 2016 23:59:01 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0`

```console
$ docker pull eggdrop@sha256:ff63a738d849fc3c9647a4718b83c5956f29107c7225db5bee193309d66192d1
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6983476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4419770d0f59244f245e80a65b3187320fa16e2fec95a2b58a12f7931eb58a5e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:58:13 GMT
ENV EGGDROP_SHA256=184d54ae5681ece523a24633d591907b530fe7e4628cf8386edf205a8eabf3cd
# Mon, 19 Sep 2016 23:58:13 GMT
ENV EGGDROP_COMMIT=c5016d76014c2ce494a327016629543ed868b2c7
# Mon, 19 Sep 2016 23:58:51 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Mon, 19 Sep 2016 23:58:51 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:58:52 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:58:52 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:58:52 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:58:53 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:58:53 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:58:53 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:58:53 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:58:54 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:58:54 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:58:55 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:58:55 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66942de205cc19fcec8673266e2ac5179b7947421415057a897152d9c8eb7a4d`  
		Last Modified: Mon, 19 Sep 2016 23:59:03 GMT  
		Size: 4.7 MB (4660974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842389149c6ea9335fffcd93e73da6997093234dfd89a0a16602a3611fa8a625`  
		Last Modified: Mon, 19 Sep 2016 23:59:01 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf170c9c444409edf32fb83d5c53f5e2afbe54740fa31686be3db86daa72cce4`  
		Last Modified: Mon, 19 Sep 2016 23:59:01 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0rc1`

```console
$ docker pull eggdrop@sha256:ff63a738d849fc3c9647a4718b83c5956f29107c7225db5bee193309d66192d1
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6983476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4419770d0f59244f245e80a65b3187320fa16e2fec95a2b58a12f7931eb58a5e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:58:13 GMT
ENV EGGDROP_SHA256=184d54ae5681ece523a24633d591907b530fe7e4628cf8386edf205a8eabf3cd
# Mon, 19 Sep 2016 23:58:13 GMT
ENV EGGDROP_COMMIT=c5016d76014c2ce494a327016629543ed868b2c7
# Mon, 19 Sep 2016 23:58:51 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Mon, 19 Sep 2016 23:58:51 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:58:52 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:58:52 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:58:52 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:58:53 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:58:53 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:58:53 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:58:53 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:58:54 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:58:54 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:58:55 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:58:55 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66942de205cc19fcec8673266e2ac5179b7947421415057a897152d9c8eb7a4d`  
		Last Modified: Mon, 19 Sep 2016 23:59:03 GMT  
		Size: 4.7 MB (4660974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842389149c6ea9335fffcd93e73da6997093234dfd89a0a16602a3611fa8a625`  
		Last Modified: Mon, 19 Sep 2016 23:59:01 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf170c9c444409edf32fb83d5c53f5e2afbe54740fa31686be3db86daa72cce4`  
		Last Modified: Mon, 19 Sep 2016 23:59:01 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:fcef8042a20827743a3b94ca19f0babbee000bb9393735de3d0b1598a872413b
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2401ba7743fe0cf39c40641473328314204f4f181e5bb3af4bb294660803617`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:57:27 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Mon, 19 Sep 2016 23:57:28 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:57:29 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:57:29 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:57:29 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:57:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:57:30 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:57:30 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:57:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:57:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:57:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb238d7a4b8f49308636f366a99f2dd0081f8f55a9e49d17e160787028eac5b`  
		Last Modified: Mon, 19 Sep 2016 23:57:41 GMT  
		Size: 3.6 MB (3586780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38a5ba8449ebd0d324640ee3ac1019826d3c17d83579b1f47c1667b7ae1bb06`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6a395a61eaafd7c0a570ac7026193834120e48e8c17ba0987b22e40d5b29d`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:fcef8042a20827743a3b94ca19f0babbee000bb9393735de3d0b1598a872413b
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2401ba7743fe0cf39c40641473328314204f4f181e5bb3af4bb294660803617`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:57:27 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Mon, 19 Sep 2016 23:57:28 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:57:29 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:57:29 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:57:29 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:57:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:57:30 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:57:30 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:57:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:57:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:57:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb238d7a4b8f49308636f366a99f2dd0081f8f55a9e49d17e160787028eac5b`  
		Last Modified: Mon, 19 Sep 2016 23:57:41 GMT  
		Size: 3.6 MB (3586780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38a5ba8449ebd0d324640ee3ac1019826d3c17d83579b1f47c1667b7ae1bb06`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6a395a61eaafd7c0a570ac7026193834120e48e8c17ba0987b22e40d5b29d`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:fcef8042a20827743a3b94ca19f0babbee000bb9393735de3d0b1598a872413b
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2401ba7743fe0cf39c40641473328314204f4f181e5bb3af4bb294660803617`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:57:27 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Mon, 19 Sep 2016 23:57:28 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:57:29 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:57:29 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:57:29 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:57:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:57:30 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:57:30 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:57:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:57:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:57:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb238d7a4b8f49308636f366a99f2dd0081f8f55a9e49d17e160787028eac5b`  
		Last Modified: Mon, 19 Sep 2016 23:57:41 GMT  
		Size: 3.6 MB (3586780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38a5ba8449ebd0d324640ee3ac1019826d3c17d83579b1f47c1667b7ae1bb06`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6a395a61eaafd7c0a570ac7026193834120e48e8c17ba0987b22e40d5b29d`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:fcef8042a20827743a3b94ca19f0babbee000bb9393735de3d0b1598a872413b
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2401ba7743fe0cf39c40641473328314204f4f181e5bb3af4bb294660803617`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:57:27 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Mon, 19 Sep 2016 23:57:28 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:57:29 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:57:29 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:57:29 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:57:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:57:30 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:57:30 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:57:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:57:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:57:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb238d7a4b8f49308636f366a99f2dd0081f8f55a9e49d17e160787028eac5b`  
		Last Modified: Mon, 19 Sep 2016 23:57:41 GMT  
		Size: 3.6 MB (3586780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38a5ba8449ebd0d324640ee3ac1019826d3c17d83579b1f47c1667b7ae1bb06`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6a395a61eaafd7c0a570ac7026193834120e48e8c17ba0987b22e40d5b29d`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
