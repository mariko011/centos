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
$ docker pull eggdrop@sha256:74a7d946f4cad5657e8249d227f3b07bd10169a5ecf86c407b49f60e6ec18fe4
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7373343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507d67dfc618c9b5724f93a16a8339a7e0ca8999cb367df220a3145a4326426b`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:20:26 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 30 May 2017 17:20:28 GMT
RUN adduser -S eggdrop
# Tue, 30 May 2017 17:20:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:26:39 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 30 May 2017 17:26:54 GMT
ENV NICK=
# Tue, 30 May 2017 17:27:36 GMT
ENV SERVER=
# Tue, 30 May 2017 17:27:58 GMT
ENV LISTEN=3333
# Tue, 30 May 2017 17:27:59 GMT
ENV OWNER=
# Tue, 30 May 2017 17:28:24 GMT
ENV USERFILE=eggdrop.user
# Tue, 30 May 2017 17:28:26 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 30 May 2017 17:28:28 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 30 May 2017 17:28:56 GMT
EXPOSE 3333/tcp
# Tue, 30 May 2017 17:28:58 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 30 May 2017 17:29:00 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 30 May 2017 17:30:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 30 May 2017 17:30:27 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8f6b69c917520b9ad10012ca08c1f11493d03ff995dc8c550ff402ff121be8`  
		Last Modified: Tue, 30 May 2017 17:35:24 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63213cd7e843857c542713817a6412b72b61def7f3debb504ea52586eb4ef198`  
		Last Modified: Tue, 30 May 2017 17:35:25 GMT  
		Size: 8.0 KB (8009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2994eefe3efa9bcbffaab52fbffc435ecd1e4549b1dda05c0aab650b1bccd95`  
		Last Modified: Tue, 30 May 2017 17:36:51 GMT  
		Size: 5.0 MB (4978559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb93103866df09f1dfec3effe69e47370608a82a601a7d3d45531e47d0920cf`  
		Last Modified: Tue, 30 May 2017 17:36:48 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19823ebabae9963acb4803cd391259ebb3d2c26e6784898bc4336b0247cb48cb`  
		Last Modified: Tue, 30 May 2017 17:36:48 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:2a9cf81c18b0f4b4e604970b36b414d1c77d25377f100eaf14630f0a8dfe2227
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6007364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a84790c91b12e7ae4af9b1052835d231318b4d2f967635b2a5ee97f77fd3d60`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:20:26 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 30 May 2017 17:20:28 GMT
RUN adduser -S eggdrop
# Tue, 30 May 2017 17:20:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:21:46 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 30 May 2017 17:22:04 GMT
ENV NICK=
# Tue, 30 May 2017 17:22:25 GMT
ENV SERVER=
# Tue, 30 May 2017 17:23:07 GMT
ENV LISTEN=3333
# Tue, 30 May 2017 17:23:49 GMT
ENV OWNER=
# Tue, 30 May 2017 17:24:10 GMT
ENV USERFILE=eggdrop.user
# Tue, 30 May 2017 17:24:32 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 30 May 2017 17:24:34 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 30 May 2017 17:24:35 GMT
EXPOSE 3333/tcp
# Tue, 30 May 2017 17:24:58 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 30 May 2017 17:25:00 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 30 May 2017 17:25:01 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 30 May 2017 17:25:02 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8f6b69c917520b9ad10012ca08c1f11493d03ff995dc8c550ff402ff121be8`  
		Last Modified: Tue, 30 May 2017 17:35:24 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63213cd7e843857c542713817a6412b72b61def7f3debb504ea52586eb4ef198`  
		Last Modified: Tue, 30 May 2017 17:35:25 GMT  
		Size: 8.0 KB (8009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2c753570d0d9652c20f81cf1148df97d1935721745a2b3a7ce4f3302adfc0c`  
		Last Modified: Tue, 30 May 2017 17:35:27 GMT  
		Size: 3.6 MB (3612755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726a98ada9f385a2465258ddfde479ea40dda61728951b73bb027621dc6dad93`  
		Last Modified: Tue, 30 May 2017 17:35:23 GMT  
		Size: 1.6 KB (1563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab809e70fc4ea013dc3a0885e53ea80300bf2a08e964e6de4a85d19e07a7ac4b`  
		Last Modified: Tue, 30 May 2017 17:35:24 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:2a9cf81c18b0f4b4e604970b36b414d1c77d25377f100eaf14630f0a8dfe2227
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6007364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a84790c91b12e7ae4af9b1052835d231318b4d2f967635b2a5ee97f77fd3d60`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:20:26 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 30 May 2017 17:20:28 GMT
RUN adduser -S eggdrop
# Tue, 30 May 2017 17:20:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:21:46 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 30 May 2017 17:22:04 GMT
ENV NICK=
# Tue, 30 May 2017 17:22:25 GMT
ENV SERVER=
# Tue, 30 May 2017 17:23:07 GMT
ENV LISTEN=3333
# Tue, 30 May 2017 17:23:49 GMT
ENV OWNER=
# Tue, 30 May 2017 17:24:10 GMT
ENV USERFILE=eggdrop.user
# Tue, 30 May 2017 17:24:32 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 30 May 2017 17:24:34 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 30 May 2017 17:24:35 GMT
EXPOSE 3333/tcp
# Tue, 30 May 2017 17:24:58 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 30 May 2017 17:25:00 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 30 May 2017 17:25:01 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 30 May 2017 17:25:02 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8f6b69c917520b9ad10012ca08c1f11493d03ff995dc8c550ff402ff121be8`  
		Last Modified: Tue, 30 May 2017 17:35:24 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63213cd7e843857c542713817a6412b72b61def7f3debb504ea52586eb4ef198`  
		Last Modified: Tue, 30 May 2017 17:35:25 GMT  
		Size: 8.0 KB (8009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2c753570d0d9652c20f81cf1148df97d1935721745a2b3a7ce4f3302adfc0c`  
		Last Modified: Tue, 30 May 2017 17:35:27 GMT  
		Size: 3.6 MB (3612755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726a98ada9f385a2465258ddfde479ea40dda61728951b73bb027621dc6dad93`  
		Last Modified: Tue, 30 May 2017 17:35:23 GMT  
		Size: 1.6 KB (1563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab809e70fc4ea013dc3a0885e53ea80300bf2a08e964e6de4a85d19e07a7ac4b`  
		Last Modified: Tue, 30 May 2017 17:35:24 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
