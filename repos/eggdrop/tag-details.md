<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.2`](#eggdrop182)
-	[`eggdrop:1.8.3rc1`](#eggdrop183rc1)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:cca5e9bcd382250e8dea57a89455ad6b1b4d670a1b5b3d1dc62b724170de56df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

```console
$ docker pull eggdrop@sha256:57f7cacc1a4ea6e0515c73599fafb3c28fcf2da7a7286179fa4f248ee4a2d789
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6109892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2a0c4fc92f56f216569b110cf6df8717983afe040ecab2abeb360bff0d82d5`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:01:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 01 Dec 2017 20:01:37 GMT
RUN adduser -S eggdrop
# Fri, 01 Dec 2017 20:01:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 20:03:48 GMT
RUN apk add --no-cache tcl bash
# Fri, 01 Dec 2017 20:04:16 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 01 Dec 2017 20:04:16 GMT
ENV NICK=
# Fri, 01 Dec 2017 20:04:16 GMT
ENV SERVER=
# Fri, 01 Dec 2017 20:04:16 GMT
ENV LISTEN=3333
# Fri, 01 Dec 2017 20:04:16 GMT
ENV OWNER=
# Fri, 01 Dec 2017 20:04:17 GMT
ENV USERFILE=eggdrop.user
# Fri, 01 Dec 2017 20:04:17 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 01 Dec 2017 20:04:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 01 Dec 2017 20:04:17 GMT
EXPOSE 3333/tcp
# Fri, 01 Dec 2017 20:04:18 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Fri, 01 Dec 2017 20:04:18 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 01 Dec 2017 20:04:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 01 Dec 2017 20:04:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cf222e5273c5c78e4a721f92a0ccc99643195342dfd981af4c9ba4511007c`  
		Last Modified: Fri, 01 Dec 2017 20:04:53 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4243a2477f3cf4a7eb86bdf699be4fdefb352d59bcc107555cae1b0307aa194`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 8.1 KB (8050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1495ee01a68d8527d8d09130ed2aad2e106bdbb1f8cf9994c57dc91fe4d29a75`  
		Last Modified: Fri, 01 Dec 2017 20:05:30 GMT  
		Size: 2.7 MB (2718482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dee97ec90fae4cb2bd6ed486bfe427faf0f13a432bbb3e99fe2a0a73bbaf4a`  
		Last Modified: Fri, 01 Dec 2017 20:05:30 GMT  
		Size: 992.1 KB (992130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf2625bf1fe24007effabbae6c00207eb4afcf5356ec300121d6a20da7c9275`  
		Last Modified: Fri, 01 Dec 2017 20:05:30 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912aa632e9a31c8934b23916d88e5b9fe4d45445b75791a886ceab79f664eed6`  
		Last Modified: Fri, 01 Dec 2017 20:05:31 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:cca5e9bcd382250e8dea57a89455ad6b1b4d670a1b5b3d1dc62b724170de56df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

```console
$ docker pull eggdrop@sha256:57f7cacc1a4ea6e0515c73599fafb3c28fcf2da7a7286179fa4f248ee4a2d789
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6109892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2a0c4fc92f56f216569b110cf6df8717983afe040ecab2abeb360bff0d82d5`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:01:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 01 Dec 2017 20:01:37 GMT
RUN adduser -S eggdrop
# Fri, 01 Dec 2017 20:01:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 20:03:48 GMT
RUN apk add --no-cache tcl bash
# Fri, 01 Dec 2017 20:04:16 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 01 Dec 2017 20:04:16 GMT
ENV NICK=
# Fri, 01 Dec 2017 20:04:16 GMT
ENV SERVER=
# Fri, 01 Dec 2017 20:04:16 GMT
ENV LISTEN=3333
# Fri, 01 Dec 2017 20:04:16 GMT
ENV OWNER=
# Fri, 01 Dec 2017 20:04:17 GMT
ENV USERFILE=eggdrop.user
# Fri, 01 Dec 2017 20:04:17 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 01 Dec 2017 20:04:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 01 Dec 2017 20:04:17 GMT
EXPOSE 3333/tcp
# Fri, 01 Dec 2017 20:04:18 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Fri, 01 Dec 2017 20:04:18 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 01 Dec 2017 20:04:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 01 Dec 2017 20:04:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cf222e5273c5c78e4a721f92a0ccc99643195342dfd981af4c9ba4511007c`  
		Last Modified: Fri, 01 Dec 2017 20:04:53 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4243a2477f3cf4a7eb86bdf699be4fdefb352d59bcc107555cae1b0307aa194`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 8.1 KB (8050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1495ee01a68d8527d8d09130ed2aad2e106bdbb1f8cf9994c57dc91fe4d29a75`  
		Last Modified: Fri, 01 Dec 2017 20:05:30 GMT  
		Size: 2.7 MB (2718482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dee97ec90fae4cb2bd6ed486bfe427faf0f13a432bbb3e99fe2a0a73bbaf4a`  
		Last Modified: Fri, 01 Dec 2017 20:05:30 GMT  
		Size: 992.1 KB (992130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf2625bf1fe24007effabbae6c00207eb4afcf5356ec300121d6a20da7c9275`  
		Last Modified: Fri, 01 Dec 2017 20:05:30 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912aa632e9a31c8934b23916d88e5b9fe4d45445b75791a886ceab79f664eed6`  
		Last Modified: Fri, 01 Dec 2017 20:05:31 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:463dddef1450bfc8a4c5ea22bf210e6dd883d74fbcb78f86301578e5221a7f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:da234a41aa35d59f332a236f0ac5e8dacf737d81e7d6f6f1b9870c9b982e7ded
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7485668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc0451094f84fc0305829dca48c7ac29452f922eb718bc27401b9ebb16376fe`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:01:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 01 Dec 2017 20:01:37 GMT
RUN adduser -S eggdrop
# Fri, 01 Dec 2017 20:01:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 20:01:46 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 01 Dec 2017 20:03:27 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 01 Dec 2017 20:03:27 GMT
ENV NICK=
# Fri, 01 Dec 2017 20:03:28 GMT
ENV SERVER=
# Fri, 01 Dec 2017 20:03:28 GMT
ENV LISTEN=3333
# Fri, 01 Dec 2017 20:03:28 GMT
ENV OWNER=
# Fri, 01 Dec 2017 20:03:29 GMT
ENV USERFILE=eggdrop.user
# Fri, 01 Dec 2017 20:03:29 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 01 Dec 2017 20:03:29 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 01 Dec 2017 20:03:30 GMT
EXPOSE 3333/tcp
# Fri, 01 Dec 2017 20:03:30 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 01 Dec 2017 20:03:30 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 01 Dec 2017 20:03:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 01 Dec 2017 20:03:31 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cf222e5273c5c78e4a721f92a0ccc99643195342dfd981af4c9ba4511007c`  
		Last Modified: Fri, 01 Dec 2017 20:04:53 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4243a2477f3cf4a7eb86bdf699be4fdefb352d59bcc107555cae1b0307aa194`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 8.1 KB (8050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce89f805386407d890b87aaf26a1215b2e215ac1f442d63a2e6b36769e3098`  
		Last Modified: Fri, 01 Dec 2017 20:04:51 GMT  
		Size: 2.9 MB (2938595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111da74f1e7a70d014e15804f116e54a0b867a2642514321b6dfc866f4ff5ac`  
		Last Modified: Fri, 01 Dec 2017 20:04:51 GMT  
		Size: 2.1 MB (2147628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a0c2c91b7f5c2d3862abec9a24589f94f7e88829ac26983c504a424c74615f`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073afb79c4c367f050d2b3d047da0c664af84d3ce9def46fbea16e52fe7eb337`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.2`

```console
$ docker pull eggdrop@sha256:463dddef1450bfc8a4c5ea22bf210e6dd883d74fbcb78f86301578e5221a7f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.2` - linux; amd64

```console
$ docker pull eggdrop@sha256:da234a41aa35d59f332a236f0ac5e8dacf737d81e7d6f6f1b9870c9b982e7ded
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7485668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc0451094f84fc0305829dca48c7ac29452f922eb718bc27401b9ebb16376fe`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:01:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 01 Dec 2017 20:01:37 GMT
RUN adduser -S eggdrop
# Fri, 01 Dec 2017 20:01:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 20:01:46 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 01 Dec 2017 20:03:27 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 01 Dec 2017 20:03:27 GMT
ENV NICK=
# Fri, 01 Dec 2017 20:03:28 GMT
ENV SERVER=
# Fri, 01 Dec 2017 20:03:28 GMT
ENV LISTEN=3333
# Fri, 01 Dec 2017 20:03:28 GMT
ENV OWNER=
# Fri, 01 Dec 2017 20:03:29 GMT
ENV USERFILE=eggdrop.user
# Fri, 01 Dec 2017 20:03:29 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 01 Dec 2017 20:03:29 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 01 Dec 2017 20:03:30 GMT
EXPOSE 3333/tcp
# Fri, 01 Dec 2017 20:03:30 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 01 Dec 2017 20:03:30 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 01 Dec 2017 20:03:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 01 Dec 2017 20:03:31 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cf222e5273c5c78e4a721f92a0ccc99643195342dfd981af4c9ba4511007c`  
		Last Modified: Fri, 01 Dec 2017 20:04:53 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4243a2477f3cf4a7eb86bdf699be4fdefb352d59bcc107555cae1b0307aa194`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 8.1 KB (8050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce89f805386407d890b87aaf26a1215b2e215ac1f442d63a2e6b36769e3098`  
		Last Modified: Fri, 01 Dec 2017 20:04:51 GMT  
		Size: 2.9 MB (2938595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111da74f1e7a70d014e15804f116e54a0b867a2642514321b6dfc866f4ff5ac`  
		Last Modified: Fri, 01 Dec 2017 20:04:51 GMT  
		Size: 2.1 MB (2147628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a0c2c91b7f5c2d3862abec9a24589f94f7e88829ac26983c504a424c74615f`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073afb79c4c367f050d2b3d047da0c664af84d3ce9def46fbea16e52fe7eb337`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.3rc1`

**does not exist** (yet?)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:38bf3fca6265e9a21ed26807373a66165b6f3130cc8d8664d8be785e201b1b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:b1fb1e514e8f2d6628f30628e2aa1d8f683e9ec53676c1acf1065829b93c706a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14531759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac9fe76cb5abd1be39c01a0dd84c54320a32c96d7e25f56a0183224af70252d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:59:49 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 01 Dec 2017 19:59:50 GMT
RUN adduser -S eggdrop
# Fri, 01 Dec 2017 19:59:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 19:59:53 GMT
ENV EGGDROP_SHA256=880aef0a11442a8f972f7267079abcceff4ce37a0ce3054141359470c0585228
# Fri, 01 Dec 2017 19:59:53 GMT
ENV EGGDROP_COMMIT=5d9da79dd6b8b9a8f392701dbdd343e8dae73644
# Fri, 01 Dec 2017 20:00:05 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 01 Dec 2017 20:01:11 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 01 Dec 2017 20:01:11 GMT
ENV NICK=
# Fri, 01 Dec 2017 20:01:11 GMT
ENV SERVER=
# Fri, 01 Dec 2017 20:01:11 GMT
ENV LISTEN=3333
# Fri, 01 Dec 2017 20:01:12 GMT
ENV OWNER=
# Fri, 01 Dec 2017 20:01:12 GMT
ENV USERFILE=eggdrop.user
# Fri, 01 Dec 2017 20:01:12 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 01 Dec 2017 20:01:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 01 Dec 2017 20:01:13 GMT
EXPOSE 3333/tcp
# Fri, 01 Dec 2017 20:01:14 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 01 Dec 2017 20:01:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 01 Dec 2017 20:01:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 01 Dec 2017 20:01:15 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb826a87abf259eae93ec4b25dc1f8ecdade319714955dcca949dd5f24ca5cc`  
		Last Modified: Fri, 01 Dec 2017 20:04:37 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd5c986b868bca9d853ec7240b6b0aea7a95aeabaf451ed536eac87a796eb16`  
		Last Modified: Fri, 01 Dec 2017 20:04:34 GMT  
		Size: 7.8 KB (7819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0892660d8d15f692af49ddb2061a744d0dcd0d01da52214c861fdd66cbce36a7`  
		Last Modified: Fri, 01 Dec 2017 20:04:39 GMT  
		Size: 5.2 MB (5249588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e39ed5492f865c59e21516d997f6c120e2376910944a35ecd637d997dea7062`  
		Last Modified: Fri, 01 Dec 2017 20:04:36 GMT  
		Size: 7.3 MB (7300415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fc2a383d827f43676bbf63c4af634d431cf5e7ce7baf507620f166ecb3d9e8`  
		Last Modified: Fri, 01 Dec 2017 20:04:34 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f873e51cfc637e6326c0d658d624ccf2e04610662ef6b95cabf427c93268c4`  
		Last Modified: Fri, 01 Dec 2017 20:04:34 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:463dddef1450bfc8a4c5ea22bf210e6dd883d74fbcb78f86301578e5221a7f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:da234a41aa35d59f332a236f0ac5e8dacf737d81e7d6f6f1b9870c9b982e7ded
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7485668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc0451094f84fc0305829dca48c7ac29452f922eb718bc27401b9ebb16376fe`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:01:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 01 Dec 2017 20:01:37 GMT
RUN adduser -S eggdrop
# Fri, 01 Dec 2017 20:01:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 20:01:46 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 01 Dec 2017 20:03:27 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 01 Dec 2017 20:03:27 GMT
ENV NICK=
# Fri, 01 Dec 2017 20:03:28 GMT
ENV SERVER=
# Fri, 01 Dec 2017 20:03:28 GMT
ENV LISTEN=3333
# Fri, 01 Dec 2017 20:03:28 GMT
ENV OWNER=
# Fri, 01 Dec 2017 20:03:29 GMT
ENV USERFILE=eggdrop.user
# Fri, 01 Dec 2017 20:03:29 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 01 Dec 2017 20:03:29 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 01 Dec 2017 20:03:30 GMT
EXPOSE 3333/tcp
# Fri, 01 Dec 2017 20:03:30 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 01 Dec 2017 20:03:30 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 01 Dec 2017 20:03:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 01 Dec 2017 20:03:31 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cf222e5273c5c78e4a721f92a0ccc99643195342dfd981af4c9ba4511007c`  
		Last Modified: Fri, 01 Dec 2017 20:04:53 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4243a2477f3cf4a7eb86bdf699be4fdefb352d59bcc107555cae1b0307aa194`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 8.1 KB (8050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce89f805386407d890b87aaf26a1215b2e215ac1f442d63a2e6b36769e3098`  
		Last Modified: Fri, 01 Dec 2017 20:04:51 GMT  
		Size: 2.9 MB (2938595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111da74f1e7a70d014e15804f116e54a0b867a2642514321b6dfc866f4ff5ac`  
		Last Modified: Fri, 01 Dec 2017 20:04:51 GMT  
		Size: 2.1 MB (2147628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a0c2c91b7f5c2d3862abec9a24589f94f7e88829ac26983c504a424c74615f`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073afb79c4c367f050d2b3d047da0c664af84d3ce9def46fbea16e52fe7eb337`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:463dddef1450bfc8a4c5ea22bf210e6dd883d74fbcb78f86301578e5221a7f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:da234a41aa35d59f332a236f0ac5e8dacf737d81e7d6f6f1b9870c9b982e7ded
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7485668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc0451094f84fc0305829dca48c7ac29452f922eb718bc27401b9ebb16376fe`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:01:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 01 Dec 2017 20:01:37 GMT
RUN adduser -S eggdrop
# Fri, 01 Dec 2017 20:01:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 20:01:46 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 01 Dec 2017 20:03:27 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 01 Dec 2017 20:03:27 GMT
ENV NICK=
# Fri, 01 Dec 2017 20:03:28 GMT
ENV SERVER=
# Fri, 01 Dec 2017 20:03:28 GMT
ENV LISTEN=3333
# Fri, 01 Dec 2017 20:03:28 GMT
ENV OWNER=
# Fri, 01 Dec 2017 20:03:29 GMT
ENV USERFILE=eggdrop.user
# Fri, 01 Dec 2017 20:03:29 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 01 Dec 2017 20:03:29 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 01 Dec 2017 20:03:30 GMT
EXPOSE 3333/tcp
# Fri, 01 Dec 2017 20:03:30 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 01 Dec 2017 20:03:30 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 01 Dec 2017 20:03:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 01 Dec 2017 20:03:31 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cf222e5273c5c78e4a721f92a0ccc99643195342dfd981af4c9ba4511007c`  
		Last Modified: Fri, 01 Dec 2017 20:04:53 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4243a2477f3cf4a7eb86bdf699be4fdefb352d59bcc107555cae1b0307aa194`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 8.1 KB (8050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce89f805386407d890b87aaf26a1215b2e215ac1f442d63a2e6b36769e3098`  
		Last Modified: Fri, 01 Dec 2017 20:04:51 GMT  
		Size: 2.9 MB (2938595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111da74f1e7a70d014e15804f116e54a0b867a2642514321b6dfc866f4ff5ac`  
		Last Modified: Fri, 01 Dec 2017 20:04:51 GMT  
		Size: 2.1 MB (2147628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a0c2c91b7f5c2d3862abec9a24589f94f7e88829ac26983c504a424c74615f`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073afb79c4c367f050d2b3d047da0c664af84d3ce9def46fbea16e52fe7eb337`  
		Last Modified: Fri, 01 Dec 2017 20:04:50 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
