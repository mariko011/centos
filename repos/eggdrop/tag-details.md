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
$ docker pull eggdrop@sha256:013878e159c2f478af82aaa0122376987854e5f8cb89cddc21cd44e925d563a9
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13389992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063a041e2b2cb36d94d68d6c5057aee0a882a4f296b3a6133082b4baa10aac6d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 19:34:27 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Jun 2017 19:34:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Jun 2017 19:34:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 19:34:58 GMT
ENV EGGDROP_SHA256=fa120ed6739b9e63290e3f95392210f8bcfd0f7e514b07a05b559063a3e8f89f
# Mon, 19 Jun 2017 19:34:59 GMT
ENV EGGDROP_COMMIT=ec5aca979d6b7f3d4582640aa5fc175b2f7869bb
# Mon, 19 Jun 2017 19:35:56 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 19 Jun 2017 19:38:05 GMT
ENV NICK=
# Mon, 19 Jun 2017 19:38:06 GMT
ENV SERVER=
# Mon, 19 Jun 2017 19:38:07 GMT
ENV LISTEN=3333
# Mon, 19 Jun 2017 19:38:08 GMT
ENV OWNER=
# Mon, 19 Jun 2017 19:38:09 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Jun 2017 19:38:10 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Jun 2017 19:38:11 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Jun 2017 19:38:11 GMT
EXPOSE 3333/tcp
# Mon, 19 Jun 2017 19:38:13 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Mon, 19 Jun 2017 19:38:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Jun 2017 19:38:15 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Jun 2017 19:38:17 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428856c08444a18d9f31f8e48e75d917d7cb6488a8c419380674b962ca752736`  
		Last Modified: Sat, 24 Jun 2017 08:24:18 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5767f7042d945b0a4da1ec1a27ce7bb8c90548e6ac54dae9304464093ff04e2`  
		Last Modified: Sat, 24 Jun 2017 08:24:18 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98950979d718172c441bd637ab1d572aa38d9c7793a68eaa40449a793818b3d7`  
		Last Modified: Sat, 24 Jun 2017 08:24:22 GMT  
		Size: 11.4 MB (11408224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f647be9049346385be77ba5d559a704846df469d2c88c5bf0e149ee9ed9ddf3`  
		Last Modified: Sat, 24 Jun 2017 08:24:19 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702335c38b6fc99a51551cea59b9fb28362036c6bce61a3c4c61919f770d2b03`  
		Last Modified: Sat, 24 Jun 2017 08:24:18 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:cfd7f7ed740e2a7764dd7fad4c89be49fcb0b7f027c35aae0393701ae9200805
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7375372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c38dc6256903a00a33b0c89d1f518c312b85a67972a778f8f4de6f8c37320d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 19:38:42 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Jun 2017 19:38:45 GMT
RUN adduser -S eggdrop
# Mon, 19 Jun 2017 19:38:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 19:39:35 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 19 Jun 2017 19:41:49 GMT
ENV NICK=
# Mon, 19 Jun 2017 19:41:50 GMT
ENV SERVER=
# Mon, 19 Jun 2017 19:41:51 GMT
ENV LISTEN=3333
# Mon, 19 Jun 2017 19:41:52 GMT
ENV OWNER=
# Mon, 19 Jun 2017 19:41:53 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Jun 2017 19:41:53 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Jun 2017 19:41:54 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Jun 2017 19:41:56 GMT
EXPOSE 3333/tcp
# Mon, 19 Jun 2017 19:41:57 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Mon, 19 Jun 2017 19:41:59 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Jun 2017 19:42:00 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Jun 2017 19:42:01 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9319254a3e67469944e3e87c65a0677255db5496c6c6944de830956851724b30`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f0b83c6668de689b699657c0949bc46495ebd307fa589089b8c92b918189ba`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 8.0 KB (8007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40263ed3eaca37d5b0f4c49f44ba464633673a25feb17d13748bef288db718c`  
		Last Modified: Sat, 24 Jun 2017 08:24:56 GMT  
		Size: 5.0 MB (4978589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8972b9a07c085ae27eed90204785236639f776038bb8def3d883f7a2e2f8e4e8`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4bce80779c83ef771be81c5cf43905976209aaf813a425b6435893a0e6df5f`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.1`

```console
$ docker pull eggdrop@sha256:cfd7f7ed740e2a7764dd7fad4c89be49fcb0b7f027c35aae0393701ae9200805
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7375372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c38dc6256903a00a33b0c89d1f518c312b85a67972a778f8f4de6f8c37320d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 19:38:42 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Jun 2017 19:38:45 GMT
RUN adduser -S eggdrop
# Mon, 19 Jun 2017 19:38:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 19:39:35 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 19 Jun 2017 19:41:49 GMT
ENV NICK=
# Mon, 19 Jun 2017 19:41:50 GMT
ENV SERVER=
# Mon, 19 Jun 2017 19:41:51 GMT
ENV LISTEN=3333
# Mon, 19 Jun 2017 19:41:52 GMT
ENV OWNER=
# Mon, 19 Jun 2017 19:41:53 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Jun 2017 19:41:53 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Jun 2017 19:41:54 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Jun 2017 19:41:56 GMT
EXPOSE 3333/tcp
# Mon, 19 Jun 2017 19:41:57 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Mon, 19 Jun 2017 19:41:59 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Jun 2017 19:42:00 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Jun 2017 19:42:01 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9319254a3e67469944e3e87c65a0677255db5496c6c6944de830956851724b30`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f0b83c6668de689b699657c0949bc46495ebd307fa589089b8c92b918189ba`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 8.0 KB (8007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40263ed3eaca37d5b0f4c49f44ba464633673a25feb17d13748bef288db718c`  
		Last Modified: Sat, 24 Jun 2017 08:24:56 GMT  
		Size: 5.0 MB (4978589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8972b9a07c085ae27eed90204785236639f776038bb8def3d883f7a2e2f8e4e8`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4bce80779c83ef771be81c5cf43905976209aaf813a425b6435893a0e6df5f`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:cfd7f7ed740e2a7764dd7fad4c89be49fcb0b7f027c35aae0393701ae9200805
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7375372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c38dc6256903a00a33b0c89d1f518c312b85a67972a778f8f4de6f8c37320d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 19:38:42 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Jun 2017 19:38:45 GMT
RUN adduser -S eggdrop
# Mon, 19 Jun 2017 19:38:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 19:39:35 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 19 Jun 2017 19:41:49 GMT
ENV NICK=
# Mon, 19 Jun 2017 19:41:50 GMT
ENV SERVER=
# Mon, 19 Jun 2017 19:41:51 GMT
ENV LISTEN=3333
# Mon, 19 Jun 2017 19:41:52 GMT
ENV OWNER=
# Mon, 19 Jun 2017 19:41:53 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Jun 2017 19:41:53 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Jun 2017 19:41:54 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Jun 2017 19:41:56 GMT
EXPOSE 3333/tcp
# Mon, 19 Jun 2017 19:41:57 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Mon, 19 Jun 2017 19:41:59 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Jun 2017 19:42:00 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Jun 2017 19:42:01 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9319254a3e67469944e3e87c65a0677255db5496c6c6944de830956851724b30`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f0b83c6668de689b699657c0949bc46495ebd307fa589089b8c92b918189ba`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 8.0 KB (8007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40263ed3eaca37d5b0f4c49f44ba464633673a25feb17d13748bef288db718c`  
		Last Modified: Sat, 24 Jun 2017 08:24:56 GMT  
		Size: 5.0 MB (4978589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8972b9a07c085ae27eed90204785236639f776038bb8def3d883f7a2e2f8e4e8`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4bce80779c83ef771be81c5cf43905976209aaf813a425b6435893a0e6df5f`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:cfd7f7ed740e2a7764dd7fad4c89be49fcb0b7f027c35aae0393701ae9200805
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7375372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c38dc6256903a00a33b0c89d1f518c312b85a67972a778f8f4de6f8c37320d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 19:38:42 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Jun 2017 19:38:45 GMT
RUN adduser -S eggdrop
# Mon, 19 Jun 2017 19:38:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 19:39:35 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 19 Jun 2017 19:41:49 GMT
ENV NICK=
# Mon, 19 Jun 2017 19:41:50 GMT
ENV SERVER=
# Mon, 19 Jun 2017 19:41:51 GMT
ENV LISTEN=3333
# Mon, 19 Jun 2017 19:41:52 GMT
ENV OWNER=
# Mon, 19 Jun 2017 19:41:53 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Jun 2017 19:41:53 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Jun 2017 19:41:54 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Jun 2017 19:41:56 GMT
EXPOSE 3333/tcp
# Mon, 19 Jun 2017 19:41:57 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Mon, 19 Jun 2017 19:41:59 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Jun 2017 19:42:00 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Jun 2017 19:42:01 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9319254a3e67469944e3e87c65a0677255db5496c6c6944de830956851724b30`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f0b83c6668de689b699657c0949bc46495ebd307fa589089b8c92b918189ba`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 8.0 KB (8007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40263ed3eaca37d5b0f4c49f44ba464633673a25feb17d13748bef288db718c`  
		Last Modified: Sat, 24 Jun 2017 08:24:56 GMT  
		Size: 5.0 MB (4978589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8972b9a07c085ae27eed90204785236639f776038bb8def3d883f7a2e2f8e4e8`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4bce80779c83ef771be81c5cf43905976209aaf813a425b6435893a0e6df5f`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:ffee1f599d4121a33dd9847db76b962d93b4def85f68f3057832fd8441080eda
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eedae60ee268f369a27fff561c67bb0709449ca2db266ae979a8d64cdad062dc`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 19:38:42 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Jun 2017 19:38:45 GMT
RUN adduser -S eggdrop
# Mon, 19 Jun 2017 19:38:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 19:42:54 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Mon, 19 Jun 2017 19:43:13 GMT
ENV NICK=
# Mon, 19 Jun 2017 19:43:14 GMT
ENV SERVER=
# Mon, 19 Jun 2017 19:43:15 GMT
ENV LISTEN=3333
# Mon, 19 Jun 2017 19:43:17 GMT
ENV OWNER=
# Mon, 19 Jun 2017 19:43:18 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Jun 2017 19:43:19 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Jun 2017 19:43:21 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Jun 2017 19:43:22 GMT
EXPOSE 3333/tcp
# Mon, 19 Jun 2017 19:43:23 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Jun 2017 19:43:47 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Jun 2017 19:43:48 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Jun 2017 19:44:12 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9319254a3e67469944e3e87c65a0677255db5496c6c6944de830956851724b30`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f0b83c6668de689b699657c0949bc46495ebd307fa589089b8c92b918189ba`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 8.0 KB (8007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8431da564e402af5470c6994e6432db7b171d2617fd97d44218b388a459d81a`  
		Last Modified: Sat, 24 Jun 2017 08:26:49 GMT  
		Size: 3.6 MB (3612794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f471c2b0e42f8c59ab0facf644e2c9723b5fd68cebb36829fd24eb95acb6d6`  
		Last Modified: Sat, 24 Jun 2017 08:26:46 GMT  
		Size: 1.6 KB (1562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2369907a755c8d2e77e13c6723160b82783d87b132d60d582d0ccf151ba67740`  
		Last Modified: Sat, 24 Jun 2017 08:26:46 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:ffee1f599d4121a33dd9847db76b962d93b4def85f68f3057832fd8441080eda
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eedae60ee268f369a27fff561c67bb0709449ca2db266ae979a8d64cdad062dc`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 19:38:42 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Jun 2017 19:38:45 GMT
RUN adduser -S eggdrop
# Mon, 19 Jun 2017 19:38:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 19:42:54 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Mon, 19 Jun 2017 19:43:13 GMT
ENV NICK=
# Mon, 19 Jun 2017 19:43:14 GMT
ENV SERVER=
# Mon, 19 Jun 2017 19:43:15 GMT
ENV LISTEN=3333
# Mon, 19 Jun 2017 19:43:17 GMT
ENV OWNER=
# Mon, 19 Jun 2017 19:43:18 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Jun 2017 19:43:19 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Jun 2017 19:43:21 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Jun 2017 19:43:22 GMT
EXPOSE 3333/tcp
# Mon, 19 Jun 2017 19:43:23 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Jun 2017 19:43:47 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Jun 2017 19:43:48 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Jun 2017 19:44:12 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9319254a3e67469944e3e87c65a0677255db5496c6c6944de830956851724b30`  
		Last Modified: Sat, 24 Jun 2017 08:24:53 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f0b83c6668de689b699657c0949bc46495ebd307fa589089b8c92b918189ba`  
		Last Modified: Sat, 24 Jun 2017 08:24:54 GMT  
		Size: 8.0 KB (8007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8431da564e402af5470c6994e6432db7b171d2617fd97d44218b388a459d81a`  
		Last Modified: Sat, 24 Jun 2017 08:26:49 GMT  
		Size: 3.6 MB (3612794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f471c2b0e42f8c59ab0facf644e2c9723b5fd68cebb36829fd24eb95acb6d6`  
		Last Modified: Sat, 24 Jun 2017 08:26:46 GMT  
		Size: 1.6 KB (1562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2369907a755c8d2e77e13c6723160b82783d87b132d60d582d0ccf151ba67740`  
		Last Modified: Sat, 24 Jun 2017 08:26:46 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
