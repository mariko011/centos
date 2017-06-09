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
$ docker pull eggdrop@sha256:bff01c10bbc041d4386d5d654d4e3d30fe60cef114d3eaed1aae78661d38587a
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13437130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a0e584f3d313c7fd3388726f0955e18f0e816b7c155ac207d309bbe6cc583a5`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:31:32 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 30 May 2017 17:31:34 GMT
RUN adduser -S eggdrop
# Tue, 30 May 2017 17:31:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Jun 2017 22:33:48 GMT
ENV EGGDROP_SHA256=fa120ed6739b9e63290e3f95392210f8bcfd0f7e514b07a05b559063a3e8f89f
# Fri, 09 Jun 2017 22:33:49 GMT
ENV EGGDROP_COMMIT=ec5aca979d6b7f3d4582640aa5fc175b2f7869bb
# Fri, 09 Jun 2017 22:34:38 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 09 Jun 2017 22:34:39 GMT
ENV NICK=
# Fri, 09 Jun 2017 22:34:40 GMT
ENV SERVER=
# Fri, 09 Jun 2017 22:34:41 GMT
ENV LISTEN=3333
# Fri, 09 Jun 2017 22:34:42 GMT
ENV OWNER=
# Fri, 09 Jun 2017 22:34:42 GMT
ENV USERFILE=eggdrop.user
# Fri, 09 Jun 2017 22:34:43 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 09 Jun 2017 22:34:44 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 09 Jun 2017 22:34:45 GMT
EXPOSE 3333/tcp
# Fri, 09 Jun 2017 22:34:47 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 09 Jun 2017 22:34:48 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 09 Jun 2017 22:34:49 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 09 Jun 2017 22:34:50 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d59ced41d0126fcd828277d3d85feb3adcd4d8534555c757ae98fe3acdb00b1`  
		Last Modified: Tue, 30 May 2017 17:41:58 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a28453d103eba364a8dc567e85d9ccc349027c85d48460eb0e4072fd78ed29`  
		Last Modified: Tue, 30 May 2017 17:41:58 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78bef5c99ec32ac0830ba0ab5a3acfac92a49d593d6fb433fd9b287f6e9bfff`  
		Last Modified: Fri, 09 Jun 2017 22:35:21 GMT  
		Size: 11.5 MB (11457744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e16c833af2f73112e72c947a053a830f026177c559f9fdbe9d461734122069`  
		Last Modified: Fri, 09 Jun 2017 22:35:18 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c04ef777e337ece436cd9b65e838e2bdcf16e626d4e1b6c6a647b8b50e688f`  
		Last Modified: Fri, 09 Jun 2017 22:35:18 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:74a7d946f4cad5657e8249d227f3b07bd10169a5ecf86c407b49f60e6ec18fe4
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

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

## `eggdrop:1.8.1`

```console
$ docker pull eggdrop@sha256:74a7d946f4cad5657e8249d227f3b07bd10169a5ecf86c407b49f60e6ec18fe4
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.1` - linux; amd64

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

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:74a7d946f4cad5657e8249d227f3b07bd10169a5ecf86c407b49f60e6ec18fe4
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

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
