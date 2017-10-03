<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.2`](#eggdrop182)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:c1c842d84ae3323ea42c179270ace180251fc3936d8c69f44b95f58915594f25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

```console
$ docker pull eggdrop@sha256:222b1da9d4028f08852a161971922ae488e82aeab480c9c1dfb8b6dfced04a2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6090495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a147f07267bd8d2d1bceedb7f5658058e600424fd390c8cb7e18c118de9499c5`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 18:04:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 13 Sep 2017 18:04:30 GMT
RUN adduser -S eggdrop
# Wed, 13 Sep 2017 18:04:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 03 Oct 2017 00:05:37 GMT
RUN apk add --no-cache tcl bash
# Tue, 03 Oct 2017 00:06:18 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 03 Oct 2017 00:06:22 GMT
ENV NICK=
# Tue, 03 Oct 2017 00:06:22 GMT
ENV SERVER=
# Tue, 03 Oct 2017 00:06:23 GMT
ENV LISTEN=3333
# Tue, 03 Oct 2017 00:06:23 GMT
ENV OWNER=
# Tue, 03 Oct 2017 00:06:23 GMT
ENV USERFILE=eggdrop.user
# Tue, 03 Oct 2017 00:06:23 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 03 Oct 2017 00:06:27 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 03 Oct 2017 00:06:27 GMT
EXPOSE 3333/tcp
# Tue, 03 Oct 2017 00:06:28 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Tue, 03 Oct 2017 00:06:28 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 03 Oct 2017 00:06:28 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 03 Oct 2017 00:06:28 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2833457dffc8e8a7a2c6ecee877d82daf3cea89ae209cd84d69e0fa4392640f8`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527954569c455e21fcd50d4475347b379733aa7593d8d0ba782a6d4303e43957`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe055a638621b4a055ce097d0c854019f12569adabf4491232209dc226d84b`  
		Last Modified: Tue, 03 Oct 2017 00:07:35 GMT  
		Size: 2.7 MB (2702467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbfc679f0e4ac0a1c2bb7b62455e64ca0b45dd426625317c9aafe8082ee1379`  
		Last Modified: Tue, 03 Oct 2017 00:07:34 GMT  
		Size: 991.3 KB (991264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2383cb7eb134acced77fd00e9466be99c4ac6074fdf5c2ac5c87c118655e5b`  
		Last Modified: Tue, 03 Oct 2017 00:07:34 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dba56540971eb8129c595528e802b65a0de4cbdfae597a5211c4cff63b66625`  
		Last Modified: Tue, 03 Oct 2017 00:07:34 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:c1c842d84ae3323ea42c179270ace180251fc3936d8c69f44b95f58915594f25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

```console
$ docker pull eggdrop@sha256:222b1da9d4028f08852a161971922ae488e82aeab480c9c1dfb8b6dfced04a2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6090495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a147f07267bd8d2d1bceedb7f5658058e600424fd390c8cb7e18c118de9499c5`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 18:04:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 13 Sep 2017 18:04:30 GMT
RUN adduser -S eggdrop
# Wed, 13 Sep 2017 18:04:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 03 Oct 2017 00:05:37 GMT
RUN apk add --no-cache tcl bash
# Tue, 03 Oct 2017 00:06:18 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 03 Oct 2017 00:06:22 GMT
ENV NICK=
# Tue, 03 Oct 2017 00:06:22 GMT
ENV SERVER=
# Tue, 03 Oct 2017 00:06:23 GMT
ENV LISTEN=3333
# Tue, 03 Oct 2017 00:06:23 GMT
ENV OWNER=
# Tue, 03 Oct 2017 00:06:23 GMT
ENV USERFILE=eggdrop.user
# Tue, 03 Oct 2017 00:06:23 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 03 Oct 2017 00:06:27 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 03 Oct 2017 00:06:27 GMT
EXPOSE 3333/tcp
# Tue, 03 Oct 2017 00:06:28 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Tue, 03 Oct 2017 00:06:28 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 03 Oct 2017 00:06:28 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 03 Oct 2017 00:06:28 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2833457dffc8e8a7a2c6ecee877d82daf3cea89ae209cd84d69e0fa4392640f8`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527954569c455e21fcd50d4475347b379733aa7593d8d0ba782a6d4303e43957`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe055a638621b4a055ce097d0c854019f12569adabf4491232209dc226d84b`  
		Last Modified: Tue, 03 Oct 2017 00:07:35 GMT  
		Size: 2.7 MB (2702467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbfc679f0e4ac0a1c2bb7b62455e64ca0b45dd426625317c9aafe8082ee1379`  
		Last Modified: Tue, 03 Oct 2017 00:07:34 GMT  
		Size: 991.3 KB (991264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2383cb7eb134acced77fd00e9466be99c4ac6074fdf5c2ac5c87c118655e5b`  
		Last Modified: Tue, 03 Oct 2017 00:07:34 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dba56540971eb8129c595528e802b65a0de4cbdfae597a5211c4cff63b66625`  
		Last Modified: Tue, 03 Oct 2017 00:07:34 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:79b84d9383dbf88a77d6f633fd04fe4e9b3834bfbc2853be11c5a2bc02ea1d66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:9c540558035275adc99efd4f0f76eed15956952822876a66aae1626233afdb27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa264d70156ee1e2db7507ace561a07bd89fd3de7eda9fae67c2d4dfb2bfe27`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 18:04:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 13 Sep 2017 18:04:30 GMT
RUN adduser -S eggdrop
# Wed, 13 Sep 2017 18:04:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 03 Oct 2017 00:04:26 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 03 Oct 2017 00:05:15 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 03 Oct 2017 00:05:18 GMT
ENV NICK=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV SERVER=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV LISTEN=3333
# Tue, 03 Oct 2017 00:05:18 GMT
ENV OWNER=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV USERFILE=eggdrop.user
# Tue, 03 Oct 2017 00:05:19 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 03 Oct 2017 00:05:23 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 03 Oct 2017 00:05:23 GMT
EXPOSE 3333/tcp
# Tue, 03 Oct 2017 00:05:23 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 03 Oct 2017 00:05:23 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 03 Oct 2017 00:05:24 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 03 Oct 2017 00:05:24 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2833457dffc8e8a7a2c6ecee877d82daf3cea89ae209cd84d69e0fa4392640f8`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527954569c455e21fcd50d4475347b379733aa7593d8d0ba782a6d4303e43957`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85eda4b87a76bb09f23cf5463a2ffa1ad709e4c25bbf88c3b6c553d4d80a88`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 2.9 MB (2921624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f245833004457bd09b7688ac8a68303617ed323eb44677e8dc1647479e5636`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 2.1 MB (2146590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f71f3e1c68f8c62d75cc95a4c9d11abe072cec1a92d054c5b21f60c1f765a8`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e57916b33cfa5205d6c679a94158c573e7f00cb889c5fcffb28457eb0521a9`  
		Last Modified: Tue, 03 Oct 2017 00:06:55 GMT  
		Size: 707.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.2`

```console
$ docker pull eggdrop@sha256:79b84d9383dbf88a77d6f633fd04fe4e9b3834bfbc2853be11c5a2bc02ea1d66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.2` - linux; amd64

```console
$ docker pull eggdrop@sha256:9c540558035275adc99efd4f0f76eed15956952822876a66aae1626233afdb27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa264d70156ee1e2db7507ace561a07bd89fd3de7eda9fae67c2d4dfb2bfe27`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 18:04:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 13 Sep 2017 18:04:30 GMT
RUN adduser -S eggdrop
# Wed, 13 Sep 2017 18:04:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 03 Oct 2017 00:04:26 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 03 Oct 2017 00:05:15 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 03 Oct 2017 00:05:18 GMT
ENV NICK=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV SERVER=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV LISTEN=3333
# Tue, 03 Oct 2017 00:05:18 GMT
ENV OWNER=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV USERFILE=eggdrop.user
# Tue, 03 Oct 2017 00:05:19 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 03 Oct 2017 00:05:23 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 03 Oct 2017 00:05:23 GMT
EXPOSE 3333/tcp
# Tue, 03 Oct 2017 00:05:23 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 03 Oct 2017 00:05:23 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 03 Oct 2017 00:05:24 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 03 Oct 2017 00:05:24 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2833457dffc8e8a7a2c6ecee877d82daf3cea89ae209cd84d69e0fa4392640f8`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527954569c455e21fcd50d4475347b379733aa7593d8d0ba782a6d4303e43957`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85eda4b87a76bb09f23cf5463a2ffa1ad709e4c25bbf88c3b6c553d4d80a88`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 2.9 MB (2921624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f245833004457bd09b7688ac8a68303617ed323eb44677e8dc1647479e5636`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 2.1 MB (2146590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f71f3e1c68f8c62d75cc95a4c9d11abe072cec1a92d054c5b21f60c1f765a8`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e57916b33cfa5205d6c679a94158c573e7f00cb889c5fcffb28457eb0521a9`  
		Last Modified: Tue, 03 Oct 2017 00:06:55 GMT  
		Size: 707.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:62b96a9880a52986ce3655ad5a97db6e7d504ca21b3d8407b260f1173f4076e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:e0ea630ee8641bd660747ebbd21ea6060ac5d4991fe6154becd55812f132e155
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14505251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09c5515c9305924b90ba2b64ade30ce6f74a4e59cfdac07902b45dec199209a`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 18:03:32 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 13 Sep 2017 18:03:33 GMT
RUN adduser -S eggdrop
# Wed, 13 Sep 2017 18:03:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 29 Sep 2017 18:04:34 GMT
ENV EGGDROP_SHA256=6a9b16413a9afa4e7f79b2c26a7ad03d181dc9cdb096e9e321725f1ae3abc5a6
# Fri, 29 Sep 2017 18:04:34 GMT
ENV EGGDROP_COMMIT=6306685b1e6f67211f6106e9c5706063ce5433d6
# Tue, 03 Oct 2017 00:03:18 GMT
RUN apk --update add --no-cache tcl bash openssl
# Tue, 03 Oct 2017 00:04:07 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 03 Oct 2017 00:04:10 GMT
ENV NICK=
# Tue, 03 Oct 2017 00:04:10 GMT
ENV SERVER=
# Tue, 03 Oct 2017 00:04:10 GMT
ENV LISTEN=3333
# Tue, 03 Oct 2017 00:04:10 GMT
ENV OWNER=
# Tue, 03 Oct 2017 00:04:11 GMT
ENV USERFILE=eggdrop.user
# Tue, 03 Oct 2017 00:04:11 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 03 Oct 2017 00:04:15 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 03 Oct 2017 00:04:15 GMT
EXPOSE 3333/tcp
# Tue, 03 Oct 2017 00:04:15 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 03 Oct 2017 00:04:16 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 03 Oct 2017 00:04:16 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 03 Oct 2017 00:04:16 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8cfddfc8981b97cfb80611dff028672ff268afdf649a09cde754e817d1314c`  
		Last Modified: Wed, 13 Sep 2017 18:06:30 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffd8cd20db60b836bc706d0d77ed92ff42f60af63d563c2a72802b3caf2148c`  
		Last Modified: Wed, 13 Sep 2017 18:06:30 GMT  
		Size: 7.8 KB (7819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4684b053eb66273d4d4fe1ba6d913a1484bf9a78ec821d426d8b7c58d5ce756`  
		Last Modified: Tue, 03 Oct 2017 00:06:42 GMT  
		Size: 5.2 MB (5229501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44b596b22674983da0c2fde463959bcf05d32f9b1672ff3d03816eded444745`  
		Last Modified: Tue, 03 Oct 2017 00:06:42 GMT  
		Size: 7.3 MB (7293808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0d463db7efb81dab8fd2899db2862eff6a0606b2e02aab2af72b727fbfb2b8`  
		Last Modified: Tue, 03 Oct 2017 00:06:40 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f2403c6107385b7f7e030adefed8ac4b438adae13fce04d30a3f3afa0822a5`  
		Last Modified: Tue, 03 Oct 2017 00:06:40 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:79b84d9383dbf88a77d6f633fd04fe4e9b3834bfbc2853be11c5a2bc02ea1d66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:9c540558035275adc99efd4f0f76eed15956952822876a66aae1626233afdb27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa264d70156ee1e2db7507ace561a07bd89fd3de7eda9fae67c2d4dfb2bfe27`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 18:04:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 13 Sep 2017 18:04:30 GMT
RUN adduser -S eggdrop
# Wed, 13 Sep 2017 18:04:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 03 Oct 2017 00:04:26 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 03 Oct 2017 00:05:15 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 03 Oct 2017 00:05:18 GMT
ENV NICK=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV SERVER=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV LISTEN=3333
# Tue, 03 Oct 2017 00:05:18 GMT
ENV OWNER=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV USERFILE=eggdrop.user
# Tue, 03 Oct 2017 00:05:19 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 03 Oct 2017 00:05:23 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 03 Oct 2017 00:05:23 GMT
EXPOSE 3333/tcp
# Tue, 03 Oct 2017 00:05:23 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 03 Oct 2017 00:05:23 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 03 Oct 2017 00:05:24 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 03 Oct 2017 00:05:24 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2833457dffc8e8a7a2c6ecee877d82daf3cea89ae209cd84d69e0fa4392640f8`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527954569c455e21fcd50d4475347b379733aa7593d8d0ba782a6d4303e43957`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85eda4b87a76bb09f23cf5463a2ffa1ad709e4c25bbf88c3b6c553d4d80a88`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 2.9 MB (2921624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f245833004457bd09b7688ac8a68303617ed323eb44677e8dc1647479e5636`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 2.1 MB (2146590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f71f3e1c68f8c62d75cc95a4c9d11abe072cec1a92d054c5b21f60c1f765a8`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e57916b33cfa5205d6c679a94158c573e7f00cb889c5fcffb28457eb0521a9`  
		Last Modified: Tue, 03 Oct 2017 00:06:55 GMT  
		Size: 707.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:79b84d9383dbf88a77d6f633fd04fe4e9b3834bfbc2853be11c5a2bc02ea1d66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:9c540558035275adc99efd4f0f76eed15956952822876a66aae1626233afdb27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa264d70156ee1e2db7507ace561a07bd89fd3de7eda9fae67c2d4dfb2bfe27`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 18:04:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 13 Sep 2017 18:04:30 GMT
RUN adduser -S eggdrop
# Wed, 13 Sep 2017 18:04:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 03 Oct 2017 00:04:26 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 03 Oct 2017 00:05:15 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 03 Oct 2017 00:05:18 GMT
ENV NICK=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV SERVER=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV LISTEN=3333
# Tue, 03 Oct 2017 00:05:18 GMT
ENV OWNER=
# Tue, 03 Oct 2017 00:05:18 GMT
ENV USERFILE=eggdrop.user
# Tue, 03 Oct 2017 00:05:19 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 03 Oct 2017 00:05:23 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 03 Oct 2017 00:05:23 GMT
EXPOSE 3333/tcp
# Tue, 03 Oct 2017 00:05:23 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 03 Oct 2017 00:05:23 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 03 Oct 2017 00:05:24 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 03 Oct 2017 00:05:24 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2833457dffc8e8a7a2c6ecee877d82daf3cea89ae209cd84d69e0fa4392640f8`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527954569c455e21fcd50d4475347b379733aa7593d8d0ba782a6d4303e43957`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85eda4b87a76bb09f23cf5463a2ffa1ad709e4c25bbf88c3b6c553d4d80a88`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 2.9 MB (2921624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f245833004457bd09b7688ac8a68303617ed323eb44677e8dc1647479e5636`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 2.1 MB (2146590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f71f3e1c68f8c62d75cc95a4c9d11abe072cec1a92d054c5b21f60c1f765a8`  
		Last Modified: Tue, 03 Oct 2017 00:06:56 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e57916b33cfa5205d6c679a94158c573e7f00cb889c5fcffb28457eb0521a9`  
		Last Modified: Tue, 03 Oct 2017 00:06:55 GMT  
		Size: 707.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
