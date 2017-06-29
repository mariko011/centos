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
$ docker pull eggdrop@sha256:71084274ca8c3d42699099e630fea42bce709198d1cad0b79ca21a9874ff3756
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13389981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bdf953246cddde66f59f773db000e2ee082449f9b44974626cce6a73d6dbc1`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:10:07 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Jun 2017 21:10:09 GMT
RUN adduser -S eggdrop
# Tue, 27 Jun 2017 21:10:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Jun 2017 21:11:02 GMT
ENV EGGDROP_SHA256=fa120ed6739b9e63290e3f95392210f8bcfd0f7e514b07a05b559063a3e8f89f
# Tue, 27 Jun 2017 21:11:03 GMT
ENV EGGDROP_COMMIT=ec5aca979d6b7f3d4582640aa5fc175b2f7869bb
# Tue, 27 Jun 2017 21:11:58 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 27 Jun 2017 21:11:59 GMT
ENV NICK=
# Tue, 27 Jun 2017 21:12:00 GMT
ENV SERVER=
# Tue, 27 Jun 2017 21:12:01 GMT
ENV LISTEN=3333
# Tue, 27 Jun 2017 21:12:02 GMT
ENV OWNER=
# Tue, 27 Jun 2017 21:12:03 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Jun 2017 21:12:04 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Jun 2017 21:12:05 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Jun 2017 21:12:06 GMT
EXPOSE 3333/tcp
# Tue, 27 Jun 2017 21:12:07 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 27 Jun 2017 21:12:09 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Jun 2017 21:12:09 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Jun 2017 21:12:10 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32e4a65f3ffa8b2f64ffdb82491dd10a9acd7aac1960956a74bad2483953a6c`  
		Last Modified: Thu, 29 Jun 2017 20:38:15 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93eac8f9ae6f107f767faac9ed278a248b45d29dcd82c4960fd6e3a1b64adf19`  
		Last Modified: Thu, 29 Jun 2017 20:38:16 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2506ff8f99238641d4af817414c9ca42378040f6ca6aac9ed064afb45d839dc3`  
		Last Modified: Thu, 29 Jun 2017 20:38:20 GMT  
		Size: 11.4 MB (11408253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78b698855571c34209a34129647531646b760184e141252e5488e811c19d755`  
		Last Modified: Thu, 29 Jun 2017 20:38:15 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479845a0df9550d2e910528888c3dd6ec0197462dd3f81cb8686812675e77ae1`  
		Last Modified: Thu, 29 Jun 2017 20:38:16 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:3460c74ed48d5a05e0b7180533532411347205e2a9d6daf48976f71a45f6e967
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7375382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742c8cc6c5710ed493d3a0bd322e0216dba670730c1b525eca6f6cf3c1af64db`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:55:40 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Jun 2017 20:55:42 GMT
RUN adduser -S eggdrop
# Tue, 27 Jun 2017 20:55:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Jun 2017 21:07:49 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 27 Jun 2017 21:08:12 GMT
ENV NICK=
# Tue, 27 Jun 2017 21:08:13 GMT
ENV SERVER=
# Tue, 27 Jun 2017 21:08:14 GMT
ENV LISTEN=3333
# Tue, 27 Jun 2017 21:08:15 GMT
ENV OWNER=
# Tue, 27 Jun 2017 21:08:16 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Jun 2017 21:08:41 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Jun 2017 21:08:42 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Jun 2017 21:08:43 GMT
EXPOSE 3333/tcp
# Tue, 27 Jun 2017 21:08:44 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 27 Jun 2017 21:09:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Jun 2017 21:09:10 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Jun 2017 21:09:11 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3317de5b46aacdce6e9880e6d72fa5b0dafade2ff44ea2f3e5e92dda2db48641`  
		Last Modified: Thu, 29 Jun 2017 20:35:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fa8b4aaaf45ddc1747bf091c8974177ce29644d104f6ec4d970a8eb6bf4f79`  
		Last Modified: Thu, 29 Jun 2017 20:35:21 GMT  
		Size: 8.0 KB (8003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533e40611ab15e65336505f58dff0b1f94707948fb0b425c302bc367c50965f`  
		Last Modified: Thu, 29 Jun 2017 20:36:24 GMT  
		Size: 5.0 MB (4978655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6485a5ae0629f3c03939a7aa6cba12fd5bbd2618a9e17a2a7a3c29ef0cc54cf`  
		Last Modified: Thu, 29 Jun 2017 20:36:22 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca07e04562c3a71147a820af4791e87daeb8776e5e4488e3c2f2cb474a28ef6`  
		Last Modified: Thu, 29 Jun 2017 20:36:22 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.1`

```console
$ docker pull eggdrop@sha256:3460c74ed48d5a05e0b7180533532411347205e2a9d6daf48976f71a45f6e967
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7375382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742c8cc6c5710ed493d3a0bd322e0216dba670730c1b525eca6f6cf3c1af64db`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:55:40 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Jun 2017 20:55:42 GMT
RUN adduser -S eggdrop
# Tue, 27 Jun 2017 20:55:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Jun 2017 21:07:49 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 27 Jun 2017 21:08:12 GMT
ENV NICK=
# Tue, 27 Jun 2017 21:08:13 GMT
ENV SERVER=
# Tue, 27 Jun 2017 21:08:14 GMT
ENV LISTEN=3333
# Tue, 27 Jun 2017 21:08:15 GMT
ENV OWNER=
# Tue, 27 Jun 2017 21:08:16 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Jun 2017 21:08:41 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Jun 2017 21:08:42 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Jun 2017 21:08:43 GMT
EXPOSE 3333/tcp
# Tue, 27 Jun 2017 21:08:44 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 27 Jun 2017 21:09:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Jun 2017 21:09:10 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Jun 2017 21:09:11 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3317de5b46aacdce6e9880e6d72fa5b0dafade2ff44ea2f3e5e92dda2db48641`  
		Last Modified: Thu, 29 Jun 2017 20:35:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fa8b4aaaf45ddc1747bf091c8974177ce29644d104f6ec4d970a8eb6bf4f79`  
		Last Modified: Thu, 29 Jun 2017 20:35:21 GMT  
		Size: 8.0 KB (8003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533e40611ab15e65336505f58dff0b1f94707948fb0b425c302bc367c50965f`  
		Last Modified: Thu, 29 Jun 2017 20:36:24 GMT  
		Size: 5.0 MB (4978655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6485a5ae0629f3c03939a7aa6cba12fd5bbd2618a9e17a2a7a3c29ef0cc54cf`  
		Last Modified: Thu, 29 Jun 2017 20:36:22 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca07e04562c3a71147a820af4791e87daeb8776e5e4488e3c2f2cb474a28ef6`  
		Last Modified: Thu, 29 Jun 2017 20:36:22 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:3460c74ed48d5a05e0b7180533532411347205e2a9d6daf48976f71a45f6e967
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7375382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742c8cc6c5710ed493d3a0bd322e0216dba670730c1b525eca6f6cf3c1af64db`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:55:40 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Jun 2017 20:55:42 GMT
RUN adduser -S eggdrop
# Tue, 27 Jun 2017 20:55:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Jun 2017 21:07:49 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 27 Jun 2017 21:08:12 GMT
ENV NICK=
# Tue, 27 Jun 2017 21:08:13 GMT
ENV SERVER=
# Tue, 27 Jun 2017 21:08:14 GMT
ENV LISTEN=3333
# Tue, 27 Jun 2017 21:08:15 GMT
ENV OWNER=
# Tue, 27 Jun 2017 21:08:16 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Jun 2017 21:08:41 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Jun 2017 21:08:42 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Jun 2017 21:08:43 GMT
EXPOSE 3333/tcp
# Tue, 27 Jun 2017 21:08:44 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 27 Jun 2017 21:09:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Jun 2017 21:09:10 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Jun 2017 21:09:11 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3317de5b46aacdce6e9880e6d72fa5b0dafade2ff44ea2f3e5e92dda2db48641`  
		Last Modified: Thu, 29 Jun 2017 20:35:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fa8b4aaaf45ddc1747bf091c8974177ce29644d104f6ec4d970a8eb6bf4f79`  
		Last Modified: Thu, 29 Jun 2017 20:35:21 GMT  
		Size: 8.0 KB (8003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533e40611ab15e65336505f58dff0b1f94707948fb0b425c302bc367c50965f`  
		Last Modified: Thu, 29 Jun 2017 20:36:24 GMT  
		Size: 5.0 MB (4978655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6485a5ae0629f3c03939a7aa6cba12fd5bbd2618a9e17a2a7a3c29ef0cc54cf`  
		Last Modified: Thu, 29 Jun 2017 20:36:22 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca07e04562c3a71147a820af4791e87daeb8776e5e4488e3c2f2cb474a28ef6`  
		Last Modified: Thu, 29 Jun 2017 20:36:22 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:3460c74ed48d5a05e0b7180533532411347205e2a9d6daf48976f71a45f6e967
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7375382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742c8cc6c5710ed493d3a0bd322e0216dba670730c1b525eca6f6cf3c1af64db`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:55:40 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Jun 2017 20:55:42 GMT
RUN adduser -S eggdrop
# Tue, 27 Jun 2017 20:55:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Jun 2017 21:07:49 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 27 Jun 2017 21:08:12 GMT
ENV NICK=
# Tue, 27 Jun 2017 21:08:13 GMT
ENV SERVER=
# Tue, 27 Jun 2017 21:08:14 GMT
ENV LISTEN=3333
# Tue, 27 Jun 2017 21:08:15 GMT
ENV OWNER=
# Tue, 27 Jun 2017 21:08:16 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Jun 2017 21:08:41 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Jun 2017 21:08:42 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Jun 2017 21:08:43 GMT
EXPOSE 3333/tcp
# Tue, 27 Jun 2017 21:08:44 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 27 Jun 2017 21:09:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Jun 2017 21:09:10 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Jun 2017 21:09:11 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3317de5b46aacdce6e9880e6d72fa5b0dafade2ff44ea2f3e5e92dda2db48641`  
		Last Modified: Thu, 29 Jun 2017 20:35:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fa8b4aaaf45ddc1747bf091c8974177ce29644d104f6ec4d970a8eb6bf4f79`  
		Last Modified: Thu, 29 Jun 2017 20:35:21 GMT  
		Size: 8.0 KB (8003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533e40611ab15e65336505f58dff0b1f94707948fb0b425c302bc367c50965f`  
		Last Modified: Thu, 29 Jun 2017 20:36:24 GMT  
		Size: 5.0 MB (4978655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6485a5ae0629f3c03939a7aa6cba12fd5bbd2618a9e17a2a7a3c29ef0cc54cf`  
		Last Modified: Thu, 29 Jun 2017 20:36:22 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca07e04562c3a71147a820af4791e87daeb8776e5e4488e3c2f2cb474a28ef6`  
		Last Modified: Thu, 29 Jun 2017 20:36:22 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:788fe491f9daee02ba7b1c452d9a08301b90014b6373e76b7b1b127a8ca63466
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6546759506cb1bbc5c6b4795c6924ac8b8b6a98a551f06bd91b64c9f6de9c8`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:55:40 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Jun 2017 20:55:42 GMT
RUN adduser -S eggdrop
# Tue, 27 Jun 2017 20:55:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Jun 2017 20:56:12 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 27 Jun 2017 21:05:14 GMT
ENV NICK=
# Tue, 27 Jun 2017 21:05:14 GMT
ENV SERVER=
# Tue, 27 Jun 2017 21:05:15 GMT
ENV LISTEN=3333
# Tue, 27 Jun 2017 21:05:40 GMT
ENV OWNER=
# Tue, 27 Jun 2017 21:05:41 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Jun 2017 21:05:42 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Jun 2017 21:05:43 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Jun 2017 21:06:08 GMT
EXPOSE 3333/tcp
# Tue, 27 Jun 2017 21:06:10 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 27 Jun 2017 21:06:11 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Jun 2017 21:06:12 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Jun 2017 21:06:13 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3317de5b46aacdce6e9880e6d72fa5b0dafade2ff44ea2f3e5e92dda2db48641`  
		Last Modified: Thu, 29 Jun 2017 20:35:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fa8b4aaaf45ddc1747bf091c8974177ce29644d104f6ec4d970a8eb6bf4f79`  
		Last Modified: Thu, 29 Jun 2017 20:35:21 GMT  
		Size: 8.0 KB (8003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e0891c62b3f2b5ff3f3a64f2d09b7596a6b8071ea712e4df723e4eb9e2e4cf`  
		Last Modified: Thu, 29 Jun 2017 20:35:23 GMT  
		Size: 3.6 MB (3612824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a31af053bc337cc87bbdb476103f5e2d6327597864a4475a37c52a465e9e74`  
		Last Modified: Thu, 29 Jun 2017 20:35:20 GMT  
		Size: 1.6 KB (1562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa677480a253bf2d9352bf1cfe392fc674b7a4de8d0261d9a93b234be93998e`  
		Last Modified: Thu, 29 Jun 2017 20:35:19 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:788fe491f9daee02ba7b1c452d9a08301b90014b6373e76b7b1b127a8ca63466
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6546759506cb1bbc5c6b4795c6924ac8b8b6a98a551f06bd91b64c9f6de9c8`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:55:40 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Jun 2017 20:55:42 GMT
RUN adduser -S eggdrop
# Tue, 27 Jun 2017 20:55:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Jun 2017 20:56:12 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 27 Jun 2017 21:05:14 GMT
ENV NICK=
# Tue, 27 Jun 2017 21:05:14 GMT
ENV SERVER=
# Tue, 27 Jun 2017 21:05:15 GMT
ENV LISTEN=3333
# Tue, 27 Jun 2017 21:05:40 GMT
ENV OWNER=
# Tue, 27 Jun 2017 21:05:41 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Jun 2017 21:05:42 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Jun 2017 21:05:43 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Jun 2017 21:06:08 GMT
EXPOSE 3333/tcp
# Tue, 27 Jun 2017 21:06:10 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 27 Jun 2017 21:06:11 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Jun 2017 21:06:12 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Jun 2017 21:06:13 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3317de5b46aacdce6e9880e6d72fa5b0dafade2ff44ea2f3e5e92dda2db48641`  
		Last Modified: Thu, 29 Jun 2017 20:35:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fa8b4aaaf45ddc1747bf091c8974177ce29644d104f6ec4d970a8eb6bf4f79`  
		Last Modified: Thu, 29 Jun 2017 20:35:21 GMT  
		Size: 8.0 KB (8003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e0891c62b3f2b5ff3f3a64f2d09b7596a6b8071ea712e4df723e4eb9e2e4cf`  
		Last Modified: Thu, 29 Jun 2017 20:35:23 GMT  
		Size: 3.6 MB (3612824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a31af053bc337cc87bbdb476103f5e2d6327597864a4475a37c52a465e9e74`  
		Last Modified: Thu, 29 Jun 2017 20:35:20 GMT  
		Size: 1.6 KB (1562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa677480a253bf2d9352bf1cfe392fc674b7a4de8d0261d9a93b234be93998e`  
		Last Modified: Thu, 29 Jun 2017 20:35:19 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
