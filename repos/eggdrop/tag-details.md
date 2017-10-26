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
$ docker pull eggdrop@sha256:2a3e346b3412d21895e5df73d1959455b63ece24491d981f7aba16f3274533c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:8a6d58f159051474f9df95dcfc5c4fe611cc3fb3ae5eaee19fa11fa37aa221c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fbfd768cb43023e3d42c9031edd96fb52d441f88be4ade6700c078a0b88104`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:01:46 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 26 Oct 2017 00:01:46 GMT
RUN adduser -S eggdrop
# Thu, 26 Oct 2017 00:01:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 00:01:58 GMT
RUN apk add --no-cache tcl bash openssl
# Thu, 26 Oct 2017 00:03:29 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 26 Oct 2017 00:03:29 GMT
ENV NICK=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV SERVER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV LISTEN=3333
# Thu, 26 Oct 2017 00:03:30 GMT
ENV OWNER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV USERFILE=eggdrop.user
# Thu, 26 Oct 2017 00:03:30 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 26 Oct 2017 00:03:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 26 Oct 2017 00:03:31 GMT
EXPOSE 3333/tcp
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 26 Oct 2017 00:03:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 26 Oct 2017 00:03:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468533f6948e168df28d7d8c73f087b55f639bd5b65314d0eb5a38ae86bc9fa`  
		Last Modified: Thu, 26 Oct 2017 00:05:25 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628abe8acdff55a3ccde1d3f445747eae9155f8ac7395f39db5aeda403d56899`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7717a62d77f39a641afa4897499d15f043fcf23704083d29cc13c827718f2c0`  
		Last Modified: Thu, 26 Oct 2017 00:05:23 GMT  
		Size: 2.9 MB (2938344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6271445c007698a1dcd1c6e1ee9bc39de460a693205af69369e9372cb669ea29`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 2.1 MB (2147640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a3fcf2031112c48b2837679158da7eea6dc869581e27bed545ee011fbe695`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665f03535abd3b952b54befa252c7f59bb7c511ac75cbdefa77fed581f1589cb`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.2`

```console
$ docker pull eggdrop@sha256:2a3e346b3412d21895e5df73d1959455b63ece24491d981f7aba16f3274533c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.2` - linux; amd64

```console
$ docker pull eggdrop@sha256:8a6d58f159051474f9df95dcfc5c4fe611cc3fb3ae5eaee19fa11fa37aa221c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fbfd768cb43023e3d42c9031edd96fb52d441f88be4ade6700c078a0b88104`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:01:46 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 26 Oct 2017 00:01:46 GMT
RUN adduser -S eggdrop
# Thu, 26 Oct 2017 00:01:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 00:01:58 GMT
RUN apk add --no-cache tcl bash openssl
# Thu, 26 Oct 2017 00:03:29 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 26 Oct 2017 00:03:29 GMT
ENV NICK=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV SERVER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV LISTEN=3333
# Thu, 26 Oct 2017 00:03:30 GMT
ENV OWNER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV USERFILE=eggdrop.user
# Thu, 26 Oct 2017 00:03:30 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 26 Oct 2017 00:03:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 26 Oct 2017 00:03:31 GMT
EXPOSE 3333/tcp
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 26 Oct 2017 00:03:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 26 Oct 2017 00:03:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468533f6948e168df28d7d8c73f087b55f639bd5b65314d0eb5a38ae86bc9fa`  
		Last Modified: Thu, 26 Oct 2017 00:05:25 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628abe8acdff55a3ccde1d3f445747eae9155f8ac7395f39db5aeda403d56899`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7717a62d77f39a641afa4897499d15f043fcf23704083d29cc13c827718f2c0`  
		Last Modified: Thu, 26 Oct 2017 00:05:23 GMT  
		Size: 2.9 MB (2938344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6271445c007698a1dcd1c6e1ee9bc39de460a693205af69369e9372cb669ea29`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 2.1 MB (2147640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a3fcf2031112c48b2837679158da7eea6dc869581e27bed545ee011fbe695`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665f03535abd3b952b54befa252c7f59bb7c511ac75cbdefa77fed581f1589cb`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:95428a8a8ac089b875151a88215c9cfec0ccca495b4e3eb744ca886a0f6370a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:a803b3cac8f60bd88c5922c6b0ef972cf20a10edae3a234a8ee054d956fab9c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14523333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcacaf77a2c028d49b5d5b3c86d3099d5c37b5e077ffd7b2931379de0b1917c6`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:00:02 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 26 Oct 2017 00:00:03 GMT
RUN adduser -S eggdrop
# Thu, 26 Oct 2017 00:00:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 00:00:10 GMT
ENV EGGDROP_SHA256=6a9b16413a9afa4e7f79b2c26a7ad03d181dc9cdb096e9e321725f1ae3abc5a6
# Thu, 26 Oct 2017 00:00:10 GMT
ENV EGGDROP_COMMIT=6306685b1e6f67211f6106e9c5706063ce5433d6
# Thu, 26 Oct 2017 00:00:16 GMT
RUN apk --update add --no-cache tcl bash openssl
# Thu, 26 Oct 2017 00:01:08 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 26 Oct 2017 00:01:10 GMT
ENV NICK=
# Thu, 26 Oct 2017 00:01:10 GMT
ENV SERVER=
# Thu, 26 Oct 2017 00:01:10 GMT
ENV LISTEN=3333
# Thu, 26 Oct 2017 00:01:11 GMT
ENV OWNER=
# Thu, 26 Oct 2017 00:01:11 GMT
ENV USERFILE=eggdrop.user
# Thu, 26 Oct 2017 00:01:11 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 26 Oct 2017 00:01:11 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 26 Oct 2017 00:01:11 GMT
EXPOSE 3333/tcp
# Thu, 26 Oct 2017 00:01:12 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 26 Oct 2017 00:01:12 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 26 Oct 2017 00:01:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 26 Oct 2017 00:01:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043c88d3645132bef3a3aab723f4c440ec6b820ec9622a2964f7466b21ae79c2`  
		Last Modified: Thu, 26 Oct 2017 00:05:08 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbfd7ca6389ab6655f5b76b93801e457c350128b835c2b89b098647e0e57a77`  
		Last Modified: Thu, 26 Oct 2017 00:05:05 GMT  
		Size: 7.8 KB (7820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ba11c56d3f3c3c1de2b81384ed683b07b3fbb89345ade683a1a925624b7b2c`  
		Last Modified: Thu, 26 Oct 2017 00:05:09 GMT  
		Size: 5.2 MB (5246691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d875b24f3c84bf29596a5a48b93fc4cdc24fe92e3e3ad3a07192583689944dd`  
		Last Modified: Thu, 26 Oct 2017 00:05:07 GMT  
		Size: 7.3 MB (7294751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8cf931d653dd37d4d74e6ebc5f0badadcc7a7f7ad6ad8da4d28ea0a5d4f8c59`  
		Last Modified: Thu, 26 Oct 2017 00:05:06 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9ea9a9cff5c749a1c2ca8125a9844e02c577421e912ce118b1660c33e335bc`  
		Last Modified: Thu, 26 Oct 2017 00:05:06 GMT  
		Size: 701.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:2a3e346b3412d21895e5df73d1959455b63ece24491d981f7aba16f3274533c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:8a6d58f159051474f9df95dcfc5c4fe611cc3fb3ae5eaee19fa11fa37aa221c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fbfd768cb43023e3d42c9031edd96fb52d441f88be4ade6700c078a0b88104`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:01:46 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 26 Oct 2017 00:01:46 GMT
RUN adduser -S eggdrop
# Thu, 26 Oct 2017 00:01:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 00:01:58 GMT
RUN apk add --no-cache tcl bash openssl
# Thu, 26 Oct 2017 00:03:29 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 26 Oct 2017 00:03:29 GMT
ENV NICK=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV SERVER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV LISTEN=3333
# Thu, 26 Oct 2017 00:03:30 GMT
ENV OWNER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV USERFILE=eggdrop.user
# Thu, 26 Oct 2017 00:03:30 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 26 Oct 2017 00:03:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 26 Oct 2017 00:03:31 GMT
EXPOSE 3333/tcp
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 26 Oct 2017 00:03:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 26 Oct 2017 00:03:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468533f6948e168df28d7d8c73f087b55f639bd5b65314d0eb5a38ae86bc9fa`  
		Last Modified: Thu, 26 Oct 2017 00:05:25 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628abe8acdff55a3ccde1d3f445747eae9155f8ac7395f39db5aeda403d56899`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7717a62d77f39a641afa4897499d15f043fcf23704083d29cc13c827718f2c0`  
		Last Modified: Thu, 26 Oct 2017 00:05:23 GMT  
		Size: 2.9 MB (2938344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6271445c007698a1dcd1c6e1ee9bc39de460a693205af69369e9372cb669ea29`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 2.1 MB (2147640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a3fcf2031112c48b2837679158da7eea6dc869581e27bed545ee011fbe695`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665f03535abd3b952b54befa252c7f59bb7c511ac75cbdefa77fed581f1589cb`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:2a3e346b3412d21895e5df73d1959455b63ece24491d981f7aba16f3274533c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:8a6d58f159051474f9df95dcfc5c4fe611cc3fb3ae5eaee19fa11fa37aa221c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fbfd768cb43023e3d42c9031edd96fb52d441f88be4ade6700c078a0b88104`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:01:46 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 26 Oct 2017 00:01:46 GMT
RUN adduser -S eggdrop
# Thu, 26 Oct 2017 00:01:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 00:01:58 GMT
RUN apk add --no-cache tcl bash openssl
# Thu, 26 Oct 2017 00:03:29 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 26 Oct 2017 00:03:29 GMT
ENV NICK=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV SERVER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV LISTEN=3333
# Thu, 26 Oct 2017 00:03:30 GMT
ENV OWNER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV USERFILE=eggdrop.user
# Thu, 26 Oct 2017 00:03:30 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 26 Oct 2017 00:03:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 26 Oct 2017 00:03:31 GMT
EXPOSE 3333/tcp
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 26 Oct 2017 00:03:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 26 Oct 2017 00:03:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468533f6948e168df28d7d8c73f087b55f639bd5b65314d0eb5a38ae86bc9fa`  
		Last Modified: Thu, 26 Oct 2017 00:05:25 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628abe8acdff55a3ccde1d3f445747eae9155f8ac7395f39db5aeda403d56899`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7717a62d77f39a641afa4897499d15f043fcf23704083d29cc13c827718f2c0`  
		Last Modified: Thu, 26 Oct 2017 00:05:23 GMT  
		Size: 2.9 MB (2938344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6271445c007698a1dcd1c6e1ee9bc39de460a693205af69369e9372cb669ea29`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 2.1 MB (2147640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a3fcf2031112c48b2837679158da7eea6dc869581e27bed545ee011fbe695`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665f03535abd3b952b54befa252c7f59bb7c511ac75cbdefa77fed581f1589cb`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
