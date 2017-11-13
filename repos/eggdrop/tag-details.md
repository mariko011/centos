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
$ docker pull eggdrop@sha256:7d5888c58fb4a4f22dcbfb1d43b9d009a540bbc3a21562681bb62a2061c0c4bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

```console
$ docker pull eggdrop@sha256:223cb2e4553290aec95d2e16be54b817582559e3d89e35c01c3f9aba02acfcb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6107369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a02a1e9a1cfa56f06651ae3245f6e4bbe19b416dd2e5eacb4f6bd58044b11a`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:52:45 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Sat, 04 Nov 2017 10:52:46 GMT
RUN adduser -S eggdrop
# Sat, 04 Nov 2017 10:52:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 10:54:37 GMT
RUN apk add --no-cache tcl bash
# Sat, 04 Nov 2017 10:55:02 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 04 Nov 2017 10:55:02 GMT
ENV NICK=
# Sat, 04 Nov 2017 10:55:03 GMT
ENV SERVER=
# Sat, 04 Nov 2017 10:55:03 GMT
ENV LISTEN=3333
# Sat, 04 Nov 2017 10:55:03 GMT
ENV OWNER=
# Sat, 04 Nov 2017 10:55:03 GMT
ENV USERFILE=eggdrop.user
# Sat, 04 Nov 2017 10:55:03 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 04 Nov 2017 10:55:03 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 04 Nov 2017 10:55:04 GMT
EXPOSE 3333/tcp
# Sat, 04 Nov 2017 10:55:04 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Sat, 04 Nov 2017 10:55:04 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 04 Nov 2017 10:55:04 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 04 Nov 2017 10:55:04 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4603b86cc0c05a41a9a6ad3f65a5ce37b1c7513ce89c62a46d40910cccfad53b`  
		Last Modified: Sat, 04 Nov 2017 10:55:27 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811db42f15abfcb37d240b8bd22cf970db9a157f51d566d3d1a9135dbe4d6b5d`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 8.1 KB (8056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e4eaedc9382eadbdd5f01e3dd43857a434cdb0455b7f92bbef24c90c28f87d`  
		Last Modified: Sat, 04 Nov 2017 10:55:51 GMT  
		Size: 2.7 MB (2718443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fe180dacde136542ebbccb39d3b52bcfd7dabbacf94aac684f878e2ab58334`  
		Last Modified: Sat, 04 Nov 2017 10:55:51 GMT  
		Size: 992.2 KB (992157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91d60dab5e768f62e2ac287dff39c1402bf43d687301aead4e7b0bbaf854f24`  
		Last Modified: Sat, 04 Nov 2017 10:55:50 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f1dd7dc092700db3d046fd67d9d069d32062db450becab493bafc402c55b68`  
		Last Modified: Sat, 04 Nov 2017 10:55:50 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:7d5888c58fb4a4f22dcbfb1d43b9d009a540bbc3a21562681bb62a2061c0c4bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

```console
$ docker pull eggdrop@sha256:223cb2e4553290aec95d2e16be54b817582559e3d89e35c01c3f9aba02acfcb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6107369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a02a1e9a1cfa56f06651ae3245f6e4bbe19b416dd2e5eacb4f6bd58044b11a`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:52:45 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Sat, 04 Nov 2017 10:52:46 GMT
RUN adduser -S eggdrop
# Sat, 04 Nov 2017 10:52:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 10:54:37 GMT
RUN apk add --no-cache tcl bash
# Sat, 04 Nov 2017 10:55:02 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 04 Nov 2017 10:55:02 GMT
ENV NICK=
# Sat, 04 Nov 2017 10:55:03 GMT
ENV SERVER=
# Sat, 04 Nov 2017 10:55:03 GMT
ENV LISTEN=3333
# Sat, 04 Nov 2017 10:55:03 GMT
ENV OWNER=
# Sat, 04 Nov 2017 10:55:03 GMT
ENV USERFILE=eggdrop.user
# Sat, 04 Nov 2017 10:55:03 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 04 Nov 2017 10:55:03 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 04 Nov 2017 10:55:04 GMT
EXPOSE 3333/tcp
# Sat, 04 Nov 2017 10:55:04 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Sat, 04 Nov 2017 10:55:04 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 04 Nov 2017 10:55:04 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 04 Nov 2017 10:55:04 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4603b86cc0c05a41a9a6ad3f65a5ce37b1c7513ce89c62a46d40910cccfad53b`  
		Last Modified: Sat, 04 Nov 2017 10:55:27 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811db42f15abfcb37d240b8bd22cf970db9a157f51d566d3d1a9135dbe4d6b5d`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 8.1 KB (8056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e4eaedc9382eadbdd5f01e3dd43857a434cdb0455b7f92bbef24c90c28f87d`  
		Last Modified: Sat, 04 Nov 2017 10:55:51 GMT  
		Size: 2.7 MB (2718443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fe180dacde136542ebbccb39d3b52bcfd7dabbacf94aac684f878e2ab58334`  
		Last Modified: Sat, 04 Nov 2017 10:55:51 GMT  
		Size: 992.2 KB (992157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91d60dab5e768f62e2ac287dff39c1402bf43d687301aead4e7b0bbaf854f24`  
		Last Modified: Sat, 04 Nov 2017 10:55:50 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f1dd7dc092700db3d046fd67d9d069d32062db450becab493bafc402c55b68`  
		Last Modified: Sat, 04 Nov 2017 10:55:50 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:1e1a91e8e26ec60e66b6cdc101fc53c6944a5cb7186ff10dcbd904e72747c21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:4972ad509908ff20f59b71cbb9fb09eb298c166a996d4950b202b99535d5ae53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd500952ac2249eeccf6f46969563aa1ee429a24bb6944bee19e496af827ff43`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:52:45 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Sat, 04 Nov 2017 10:52:46 GMT
RUN adduser -S eggdrop
# Sat, 04 Nov 2017 10:52:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 10:52:53 GMT
RUN apk add --no-cache tcl bash openssl
# Sat, 04 Nov 2017 10:54:15 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 04 Nov 2017 10:54:16 GMT
ENV NICK=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV SERVER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV LISTEN=3333
# Sat, 04 Nov 2017 10:54:16 GMT
ENV OWNER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV USERFILE=eggdrop.user
# Sat, 04 Nov 2017 10:54:17 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 04 Nov 2017 10:54:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 04 Nov 2017 10:54:17 GMT
EXPOSE 3333/tcp
# Sat, 04 Nov 2017 10:54:17 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Sat, 04 Nov 2017 10:54:18 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 04 Nov 2017 10:54:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 04 Nov 2017 10:54:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4603b86cc0c05a41a9a6ad3f65a5ce37b1c7513ce89c62a46d40910cccfad53b`  
		Last Modified: Sat, 04 Nov 2017 10:55:27 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811db42f15abfcb37d240b8bd22cf970db9a157f51d566d3d1a9135dbe4d6b5d`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 8.1 KB (8056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edec6a848949b5c9a1408c206ec0e930cdfb6077f327835a5a32dfea56d5e3a`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.9 MB (2938322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a12abf2195086f9a454f65a8c45b196b5610323c0a07561e599d4188feb28`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.1 MB (2147602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a447569736dabac1a7ab53b48dc5b542604181c6284494805bd12c82f45df3`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270b6114886a6c354433e97620cfcfb4b7f1b87cdf4d042957c2b31d0616551`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.2`

```console
$ docker pull eggdrop@sha256:1e1a91e8e26ec60e66b6cdc101fc53c6944a5cb7186ff10dcbd904e72747c21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.2` - linux; amd64

```console
$ docker pull eggdrop@sha256:4972ad509908ff20f59b71cbb9fb09eb298c166a996d4950b202b99535d5ae53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd500952ac2249eeccf6f46969563aa1ee429a24bb6944bee19e496af827ff43`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:52:45 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Sat, 04 Nov 2017 10:52:46 GMT
RUN adduser -S eggdrop
# Sat, 04 Nov 2017 10:52:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 10:52:53 GMT
RUN apk add --no-cache tcl bash openssl
# Sat, 04 Nov 2017 10:54:15 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 04 Nov 2017 10:54:16 GMT
ENV NICK=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV SERVER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV LISTEN=3333
# Sat, 04 Nov 2017 10:54:16 GMT
ENV OWNER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV USERFILE=eggdrop.user
# Sat, 04 Nov 2017 10:54:17 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 04 Nov 2017 10:54:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 04 Nov 2017 10:54:17 GMT
EXPOSE 3333/tcp
# Sat, 04 Nov 2017 10:54:17 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Sat, 04 Nov 2017 10:54:18 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 04 Nov 2017 10:54:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 04 Nov 2017 10:54:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4603b86cc0c05a41a9a6ad3f65a5ce37b1c7513ce89c62a46d40910cccfad53b`  
		Last Modified: Sat, 04 Nov 2017 10:55:27 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811db42f15abfcb37d240b8bd22cf970db9a157f51d566d3d1a9135dbe4d6b5d`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 8.1 KB (8056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edec6a848949b5c9a1408c206ec0e930cdfb6077f327835a5a32dfea56d5e3a`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.9 MB (2938322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a12abf2195086f9a454f65a8c45b196b5610323c0a07561e599d4188feb28`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.1 MB (2147602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a447569736dabac1a7ab53b48dc5b542604181c6284494805bd12c82f45df3`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270b6114886a6c354433e97620cfcfb4b7f1b87cdf4d042957c2b31d0616551`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:1418903931349d1b086c2246caa53437e81a6ac9912a4d0084640e5a9157fa81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:a0338355a08d61d90691a723493e7fa81c964ff2a2c277fb30313257b1fe9b66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14531510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c271cd77db50d1333a34ea9c23ebfe48a11966e7ab9e4b2c3b61ecc5e9ecbfb`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:51:21 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Sat, 04 Nov 2017 10:51:21 GMT
RUN adduser -S eggdrop
# Sat, 04 Nov 2017 10:51:25 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 13 Nov 2017 17:11:31 GMT
ENV EGGDROP_SHA256=880aef0a11442a8f972f7267079abcceff4ce37a0ce3054141359470c0585228
# Mon, 13 Nov 2017 17:11:31 GMT
ENV EGGDROP_COMMIT=5d9da79dd6b8b9a8f392701dbdd343e8dae73644
# Mon, 13 Nov 2017 17:11:36 GMT
RUN apk --update add --no-cache tcl bash openssl
# Mon, 13 Nov 2017 17:12:29 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Mon, 13 Nov 2017 17:12:30 GMT
ENV NICK=
# Mon, 13 Nov 2017 17:12:30 GMT
ENV SERVER=
# Mon, 13 Nov 2017 17:12:30 GMT
ENV LISTEN=3333
# Mon, 13 Nov 2017 17:12:30 GMT
ENV OWNER=
# Mon, 13 Nov 2017 17:12:30 GMT
ENV USERFILE=eggdrop.user
# Mon, 13 Nov 2017 17:12:30 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 13 Nov 2017 17:12:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 13 Nov 2017 17:12:31 GMT
EXPOSE 3333/tcp
# Mon, 13 Nov 2017 17:12:32 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Mon, 13 Nov 2017 17:12:32 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 13 Nov 2017 17:12:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 13 Nov 2017 17:12:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814e05d70eb3d37c00649a6e4ba13c2c86f1e6cb9185284aceb76e8aa39f695b`  
		Last Modified: Sat, 04 Nov 2017 10:55:15 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aba588b42ac868ff6ebae12ee0e941256bced60042f33de92dad22226e05057`  
		Last Modified: Sat, 04 Nov 2017 10:55:13 GMT  
		Size: 7.8 KB (7818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f79760b9f12536dcf00e12b9880e107a52ffd627f688794495bcf8c39c7527`  
		Last Modified: Mon, 13 Nov 2017 17:12:56 GMT  
		Size: 5.2 MB (5249198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b340f41fdd16d95fb920c906030b75ee55b4b190b534d259926ae606ff22d1`  
		Last Modified: Mon, 13 Nov 2017 17:12:56 GMT  
		Size: 7.3 MB (7300414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc886d5a1c61ad5ef837e7a2b4d4639ac562b788f830890f7ecf97b5336c5dec`  
		Last Modified: Mon, 13 Nov 2017 17:12:53 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d14519236cfec1c3a2c091dbbfe0bddc0467b26befa28bc291d7cd561f32597`  
		Last Modified: Mon, 13 Nov 2017 17:12:53 GMT  
		Size: 705.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:1e1a91e8e26ec60e66b6cdc101fc53c6944a5cb7186ff10dcbd904e72747c21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:4972ad509908ff20f59b71cbb9fb09eb298c166a996d4950b202b99535d5ae53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd500952ac2249eeccf6f46969563aa1ee429a24bb6944bee19e496af827ff43`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:52:45 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Sat, 04 Nov 2017 10:52:46 GMT
RUN adduser -S eggdrop
# Sat, 04 Nov 2017 10:52:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 10:52:53 GMT
RUN apk add --no-cache tcl bash openssl
# Sat, 04 Nov 2017 10:54:15 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 04 Nov 2017 10:54:16 GMT
ENV NICK=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV SERVER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV LISTEN=3333
# Sat, 04 Nov 2017 10:54:16 GMT
ENV OWNER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV USERFILE=eggdrop.user
# Sat, 04 Nov 2017 10:54:17 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 04 Nov 2017 10:54:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 04 Nov 2017 10:54:17 GMT
EXPOSE 3333/tcp
# Sat, 04 Nov 2017 10:54:17 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Sat, 04 Nov 2017 10:54:18 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 04 Nov 2017 10:54:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 04 Nov 2017 10:54:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4603b86cc0c05a41a9a6ad3f65a5ce37b1c7513ce89c62a46d40910cccfad53b`  
		Last Modified: Sat, 04 Nov 2017 10:55:27 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811db42f15abfcb37d240b8bd22cf970db9a157f51d566d3d1a9135dbe4d6b5d`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 8.1 KB (8056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edec6a848949b5c9a1408c206ec0e930cdfb6077f327835a5a32dfea56d5e3a`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.9 MB (2938322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a12abf2195086f9a454f65a8c45b196b5610323c0a07561e599d4188feb28`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.1 MB (2147602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a447569736dabac1a7ab53b48dc5b542604181c6284494805bd12c82f45df3`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270b6114886a6c354433e97620cfcfb4b7f1b87cdf4d042957c2b31d0616551`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:1e1a91e8e26ec60e66b6cdc101fc53c6944a5cb7186ff10dcbd904e72747c21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:4972ad509908ff20f59b71cbb9fb09eb298c166a996d4950b202b99535d5ae53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd500952ac2249eeccf6f46969563aa1ee429a24bb6944bee19e496af827ff43`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:52:45 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Sat, 04 Nov 2017 10:52:46 GMT
RUN adduser -S eggdrop
# Sat, 04 Nov 2017 10:52:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 10:52:53 GMT
RUN apk add --no-cache tcl bash openssl
# Sat, 04 Nov 2017 10:54:15 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 04 Nov 2017 10:54:16 GMT
ENV NICK=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV SERVER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV LISTEN=3333
# Sat, 04 Nov 2017 10:54:16 GMT
ENV OWNER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV USERFILE=eggdrop.user
# Sat, 04 Nov 2017 10:54:17 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 04 Nov 2017 10:54:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 04 Nov 2017 10:54:17 GMT
EXPOSE 3333/tcp
# Sat, 04 Nov 2017 10:54:17 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Sat, 04 Nov 2017 10:54:18 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 04 Nov 2017 10:54:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 04 Nov 2017 10:54:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4603b86cc0c05a41a9a6ad3f65a5ce37b1c7513ce89c62a46d40910cccfad53b`  
		Last Modified: Sat, 04 Nov 2017 10:55:27 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811db42f15abfcb37d240b8bd22cf970db9a157f51d566d3d1a9135dbe4d6b5d`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 8.1 KB (8056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edec6a848949b5c9a1408c206ec0e930cdfb6077f327835a5a32dfea56d5e3a`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.9 MB (2938322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a12abf2195086f9a454f65a8c45b196b5610323c0a07561e599d4188feb28`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.1 MB (2147602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a447569736dabac1a7ab53b48dc5b542604181c6284494805bd12c82f45df3`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270b6114886a6c354433e97620cfcfb4b7f1b87cdf4d042957c2b31d0616551`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
