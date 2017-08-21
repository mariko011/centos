<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.2`](#eggdrop182)
-	[`eggdrop:stable`](#eggdropstable)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:d5473ea1da857c05560cc59e614272882a26e19d981c1ab1d3a69a7dd76d5d3e
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13388694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aee9675a73e9ee4107e121e19f77c5ce04c2b81494832f881351f22ff3bf400`
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
# Mon, 21 Aug 2017 16:34:29 GMT
ENV EGGDROP_SHA256=528faa09f8bb10d358b7a0c0d953846cbadd10c73fd8dc75475d1dc3679d7674
# Mon, 21 Aug 2017 16:34:29 GMT
ENV EGGDROP_COMMIT=0d6d8d5c792ebc1f2700ee7ee1209feb7741973b
# Mon, 21 Aug 2017 16:35:17 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 21 Aug 2017 16:35:17 GMT
ENV NICK=
# Mon, 21 Aug 2017 16:35:17 GMT
ENV SERVER=
# Mon, 21 Aug 2017 16:35:18 GMT
ENV LISTEN=3333
# Mon, 21 Aug 2017 16:35:18 GMT
ENV OWNER=
# Mon, 21 Aug 2017 16:35:18 GMT
ENV USERFILE=eggdrop.user
# Mon, 21 Aug 2017 16:35:19 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 21 Aug 2017 16:35:19 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 21 Aug 2017 16:35:19 GMT
EXPOSE 3333/tcp
# Mon, 21 Aug 2017 16:35:20 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Mon, 21 Aug 2017 16:35:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 21 Aug 2017 16:35:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 21 Aug 2017 16:35:21 GMT
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
	-	`sha256:745a80102ae53b7fed8f62737ce06e28a1aaab45d04149ca3d3e78f10a5efb74`  
		Last Modified: Mon, 21 Aug 2017 16:35:30 GMT  
		Size: 11.4 MB (11406836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e386b363f9adf7bfcd1245134d0da293b34f951a65207466407664868f4e5de4`  
		Last Modified: Mon, 21 Aug 2017 16:35:28 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148ed6915db3bafce974e5a0755a7b92834c939459578cf61f117c31bcb9d3c9`  
		Last Modified: Mon, 21 Aug 2017 16:35:28 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:ad40ac26ec649eeff7e96b10427bd1d4ffd3b7e76026287b98a60dc9c7dd29f2
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7380140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b98747d525352efdc19a21fe8c9d48d053f6f19d90a82f6207121fee453d4`
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
# Mon, 14 Aug 2017 21:18:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 14 Aug 2017 21:18:05 GMT
ENV NICK=
# Mon, 14 Aug 2017 21:18:05 GMT
ENV SERVER=
# Mon, 14 Aug 2017 21:18:05 GMT
ENV LISTEN=3333
# Mon, 14 Aug 2017 21:18:05 GMT
ENV OWNER=
# Mon, 14 Aug 2017 21:18:06 GMT
ENV USERFILE=eggdrop.user
# Mon, 14 Aug 2017 21:18:06 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 14 Aug 2017 21:18:06 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 14 Aug 2017 21:18:06 GMT
EXPOSE 3333/tcp
# Mon, 14 Aug 2017 21:18:07 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Mon, 14 Aug 2017 21:18:07 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 14 Aug 2017 21:18:07 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 14 Aug 2017 21:18:08 GMT
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
	-	`sha256:46a9ff8c50c7db7ddf2f671d16767518f6feb8c4c9dc90be7ab4e3666f7cb501`  
		Last Modified: Mon, 14 Aug 2017 21:18:23 GMT  
		Size: 5.0 MB (4983285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3e1f5d31af64d18408c382064ca1c19671fc7e0e33a76422157c5bcd28ef5`  
		Last Modified: Mon, 14 Aug 2017 21:18:21 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb14398029e0dc0e4547c549135fbfff6e0ed9c5f4b85417e63e9719f60219bb`  
		Last Modified: Mon, 14 Aug 2017 21:18:22 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.2`

```console
$ docker pull eggdrop@sha256:ad40ac26ec649eeff7e96b10427bd1d4ffd3b7e76026287b98a60dc9c7dd29f2
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7380140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b98747d525352efdc19a21fe8c9d48d053f6f19d90a82f6207121fee453d4`
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
# Mon, 14 Aug 2017 21:18:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 14 Aug 2017 21:18:05 GMT
ENV NICK=
# Mon, 14 Aug 2017 21:18:05 GMT
ENV SERVER=
# Mon, 14 Aug 2017 21:18:05 GMT
ENV LISTEN=3333
# Mon, 14 Aug 2017 21:18:05 GMT
ENV OWNER=
# Mon, 14 Aug 2017 21:18:06 GMT
ENV USERFILE=eggdrop.user
# Mon, 14 Aug 2017 21:18:06 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 14 Aug 2017 21:18:06 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 14 Aug 2017 21:18:06 GMT
EXPOSE 3333/tcp
# Mon, 14 Aug 2017 21:18:07 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Mon, 14 Aug 2017 21:18:07 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 14 Aug 2017 21:18:07 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 14 Aug 2017 21:18:08 GMT
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
	-	`sha256:46a9ff8c50c7db7ddf2f671d16767518f6feb8c4c9dc90be7ab4e3666f7cb501`  
		Last Modified: Mon, 14 Aug 2017 21:18:23 GMT  
		Size: 5.0 MB (4983285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3e1f5d31af64d18408c382064ca1c19671fc7e0e33a76422157c5bcd28ef5`  
		Last Modified: Mon, 14 Aug 2017 21:18:21 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb14398029e0dc0e4547c549135fbfff6e0ed9c5f4b85417e63e9719f60219bb`  
		Last Modified: Mon, 14 Aug 2017 21:18:22 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:ad40ac26ec649eeff7e96b10427bd1d4ffd3b7e76026287b98a60dc9c7dd29f2
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7380140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b98747d525352efdc19a21fe8c9d48d053f6f19d90a82f6207121fee453d4`
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
# Mon, 14 Aug 2017 21:18:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 14 Aug 2017 21:18:05 GMT
ENV NICK=
# Mon, 14 Aug 2017 21:18:05 GMT
ENV SERVER=
# Mon, 14 Aug 2017 21:18:05 GMT
ENV LISTEN=3333
# Mon, 14 Aug 2017 21:18:05 GMT
ENV OWNER=
# Mon, 14 Aug 2017 21:18:06 GMT
ENV USERFILE=eggdrop.user
# Mon, 14 Aug 2017 21:18:06 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 14 Aug 2017 21:18:06 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 14 Aug 2017 21:18:06 GMT
EXPOSE 3333/tcp
# Mon, 14 Aug 2017 21:18:07 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Mon, 14 Aug 2017 21:18:07 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 14 Aug 2017 21:18:07 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 14 Aug 2017 21:18:08 GMT
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
	-	`sha256:46a9ff8c50c7db7ddf2f671d16767518f6feb8c4c9dc90be7ab4e3666f7cb501`  
		Last Modified: Mon, 14 Aug 2017 21:18:23 GMT  
		Size: 5.0 MB (4983285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3e1f5d31af64d18408c382064ca1c19671fc7e0e33a76422157c5bcd28ef5`  
		Last Modified: Mon, 14 Aug 2017 21:18:21 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb14398029e0dc0e4547c549135fbfff6e0ed9c5f4b85417e63e9719f60219bb`  
		Last Modified: Mon, 14 Aug 2017 21:18:22 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:ad40ac26ec649eeff7e96b10427bd1d4ffd3b7e76026287b98a60dc9c7dd29f2
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7380140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b98747d525352efdc19a21fe8c9d48d053f6f19d90a82f6207121fee453d4`
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
# Mon, 14 Aug 2017 21:18:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 14 Aug 2017 21:18:05 GMT
ENV NICK=
# Mon, 14 Aug 2017 21:18:05 GMT
ENV SERVER=
# Mon, 14 Aug 2017 21:18:05 GMT
ENV LISTEN=3333
# Mon, 14 Aug 2017 21:18:05 GMT
ENV OWNER=
# Mon, 14 Aug 2017 21:18:06 GMT
ENV USERFILE=eggdrop.user
# Mon, 14 Aug 2017 21:18:06 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 14 Aug 2017 21:18:06 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 14 Aug 2017 21:18:06 GMT
EXPOSE 3333/tcp
# Mon, 14 Aug 2017 21:18:07 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Mon, 14 Aug 2017 21:18:07 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 14 Aug 2017 21:18:07 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 14 Aug 2017 21:18:08 GMT
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
	-	`sha256:46a9ff8c50c7db7ddf2f671d16767518f6feb8c4c9dc90be7ab4e3666f7cb501`  
		Last Modified: Mon, 14 Aug 2017 21:18:23 GMT  
		Size: 5.0 MB (4983285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a3e1f5d31af64d18408c382064ca1c19671fc7e0e33a76422157c5bcd28ef5`  
		Last Modified: Mon, 14 Aug 2017 21:18:21 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb14398029e0dc0e4547c549135fbfff6e0ed9c5f4b85417e63e9719f60219bb`  
		Last Modified: Mon, 14 Aug 2017 21:18:22 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:9d41756bda6ef19c4e0b8f60f5ff169ec11268856a037e3dd27cf7a93e600964
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff496560f7da88cae1c64bce9a93f3d87566a7e60544a0dd097af0def90b8e1`
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
# Mon, 03 Jul 2017 17:51:29 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Mon, 03 Jul 2017 17:51:30 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 03 Jul 2017 17:51:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 03 Jul 2017 17:51:32 GMT
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
	-	`sha256:a15f1b347335a4e58860171e3680275de00abf91e386e57cfd65c8fb40be68f7`  
		Last Modified: Mon, 03 Jul 2017 17:54:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e6823666bb307b4f2e65b1236a5babd80bd02a05c62d377ce5596822d0b8f6`  
		Last Modified: Mon, 03 Jul 2017 17:54:26 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:9d41756bda6ef19c4e0b8f60f5ff169ec11268856a037e3dd27cf7a93e600964
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff496560f7da88cae1c64bce9a93f3d87566a7e60544a0dd097af0def90b8e1`
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
# Mon, 03 Jul 2017 17:51:29 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Mon, 03 Jul 2017 17:51:30 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 03 Jul 2017 17:51:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 03 Jul 2017 17:51:32 GMT
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
	-	`sha256:a15f1b347335a4e58860171e3680275de00abf91e386e57cfd65c8fb40be68f7`  
		Last Modified: Mon, 03 Jul 2017 17:54:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e6823666bb307b4f2e65b1236a5babd80bd02a05c62d377ce5596822d0b8f6`  
		Last Modified: Mon, 03 Jul 2017 17:54:26 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
