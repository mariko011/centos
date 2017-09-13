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
$ docker pull eggdrop@sha256:bdc07ed637d03a11aacf313d9775f1d91009e1a14c68a824fa2f7dc66c44f8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

```console
$ docker pull eggdrop@sha256:7e212964a46b3e40d14d85bec0cfd75005de5fe996f256ec7b19174466a0559f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d535fdf6a085bb8cbe098c79a19d9373c9ebc5831cb4978189c34674137a4b4`
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
# Wed, 13 Sep 2017 18:06:18 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Wed, 13 Sep 2017 18:06:18 GMT
ENV NICK=
# Wed, 13 Sep 2017 18:06:18 GMT
ENV SERVER=
# Wed, 13 Sep 2017 18:06:18 GMT
ENV LISTEN=3333
# Wed, 13 Sep 2017 18:06:18 GMT
ENV OWNER=
# Wed, 13 Sep 2017 18:06:18 GMT
ENV USERFILE=eggdrop.user
# Wed, 13 Sep 2017 18:06:19 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 13 Sep 2017 18:06:19 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 13 Sep 2017 18:06:19 GMT
EXPOSE 3333/tcp
# Wed, 13 Sep 2017 18:06:19 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Wed, 13 Sep 2017 18:06:19 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 13 Sep 2017 18:06:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 13 Sep 2017 18:06:20 GMT
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
	-	`sha256:dd10c672d85476e7b7359b1b3c5dc8b9f38fbd699aef423a52287acf8fce68a3`  
		Last Modified: Wed, 13 Sep 2017 18:06:59 GMT  
		Size: 3.6 MB (3607268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075643615740f26464580b58d4c05f47366ce2b31f8db67aedf8abedca3aeebc`  
		Last Modified: Wed, 13 Sep 2017 18:06:58 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844ddfdfef316ce7f33cefb7b9f64905e00a329c818c00763f9f77717c8b8292`  
		Last Modified: Wed, 13 Sep 2017 18:06:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:bdc07ed637d03a11aacf313d9775f1d91009e1a14c68a824fa2f7dc66c44f8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

```console
$ docker pull eggdrop@sha256:7e212964a46b3e40d14d85bec0cfd75005de5fe996f256ec7b19174466a0559f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d535fdf6a085bb8cbe098c79a19d9373c9ebc5831cb4978189c34674137a4b4`
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
# Wed, 13 Sep 2017 18:06:18 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Wed, 13 Sep 2017 18:06:18 GMT
ENV NICK=
# Wed, 13 Sep 2017 18:06:18 GMT
ENV SERVER=
# Wed, 13 Sep 2017 18:06:18 GMT
ENV LISTEN=3333
# Wed, 13 Sep 2017 18:06:18 GMT
ENV OWNER=
# Wed, 13 Sep 2017 18:06:18 GMT
ENV USERFILE=eggdrop.user
# Wed, 13 Sep 2017 18:06:19 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 13 Sep 2017 18:06:19 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 13 Sep 2017 18:06:19 GMT
EXPOSE 3333/tcp
# Wed, 13 Sep 2017 18:06:19 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Wed, 13 Sep 2017 18:06:19 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 13 Sep 2017 18:06:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 13 Sep 2017 18:06:20 GMT
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
	-	`sha256:dd10c672d85476e7b7359b1b3c5dc8b9f38fbd699aef423a52287acf8fce68a3`  
		Last Modified: Wed, 13 Sep 2017 18:06:59 GMT  
		Size: 3.6 MB (3607268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075643615740f26464580b58d4c05f47366ce2b31f8db67aedf8abedca3aeebc`  
		Last Modified: Wed, 13 Sep 2017 18:06:58 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844ddfdfef316ce7f33cefb7b9f64905e00a329c818c00763f9f77717c8b8292`  
		Last Modified: Wed, 13 Sep 2017 18:06:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:c1093c90e39b4db9f3d1af5cffdac5655894aa31cb292102540a22c8eb6cc722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:381b6faa8e258d364d235eecdb192cd01fe8f32bc2d95896fc46470a9119f743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7380260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92f8223969d3ce5c1976c69e259abfb380acc58bbc2e8b472050697745092cc`
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
# Wed, 13 Sep 2017 18:05:32 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 13 Sep 2017 18:05:32 GMT
ENV NICK=
# Wed, 13 Sep 2017 18:05:32 GMT
ENV SERVER=
# Wed, 13 Sep 2017 18:05:33 GMT
ENV LISTEN=3333
# Wed, 13 Sep 2017 18:05:33 GMT
ENV OWNER=
# Wed, 13 Sep 2017 18:05:33 GMT
ENV USERFILE=eggdrop.user
# Wed, 13 Sep 2017 18:05:33 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 13 Sep 2017 18:05:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 13 Sep 2017 18:05:33 GMT
EXPOSE 3333/tcp
# Wed, 13 Sep 2017 18:05:34 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 13 Sep 2017 18:05:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 13 Sep 2017 18:05:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 13 Sep 2017 18:05:34 GMT
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
	-	`sha256:86d1afb1db8afdcb64a7a2174aad55a81f85cb0bf0bad637d894e793dd1fe729`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 5.0 MB (4983339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926021c66d2ca83531d0e4f8242a7c7394cbdd38fa61d339dc0a0963c59203f3`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70b7be8bb4466a7398ff96cb6587735510c5fed0c7d5deed47d552ef15dcad6`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.2`

```console
$ docker pull eggdrop@sha256:c1093c90e39b4db9f3d1af5cffdac5655894aa31cb292102540a22c8eb6cc722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.2` - linux; amd64

```console
$ docker pull eggdrop@sha256:381b6faa8e258d364d235eecdb192cd01fe8f32bc2d95896fc46470a9119f743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7380260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92f8223969d3ce5c1976c69e259abfb380acc58bbc2e8b472050697745092cc`
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
# Wed, 13 Sep 2017 18:05:32 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 13 Sep 2017 18:05:32 GMT
ENV NICK=
# Wed, 13 Sep 2017 18:05:32 GMT
ENV SERVER=
# Wed, 13 Sep 2017 18:05:33 GMT
ENV LISTEN=3333
# Wed, 13 Sep 2017 18:05:33 GMT
ENV OWNER=
# Wed, 13 Sep 2017 18:05:33 GMT
ENV USERFILE=eggdrop.user
# Wed, 13 Sep 2017 18:05:33 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 13 Sep 2017 18:05:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 13 Sep 2017 18:05:33 GMT
EXPOSE 3333/tcp
# Wed, 13 Sep 2017 18:05:34 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 13 Sep 2017 18:05:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 13 Sep 2017 18:05:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 13 Sep 2017 18:05:34 GMT
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
	-	`sha256:86d1afb1db8afdcb64a7a2174aad55a81f85cb0bf0bad637d894e793dd1fe729`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 5.0 MB (4983339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926021c66d2ca83531d0e4f8242a7c7394cbdd38fa61d339dc0a0963c59203f3`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70b7be8bb4466a7398ff96cb6587735510c5fed0c7d5deed47d552ef15dcad6`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:0d9ae1d788cdc73bd76403a21ab61a09b6037b3d801e44b2bde9abe9a49d4d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:0d62641cca48f3a7e93145de1fdf3071926572facbb1d4eceedc1881c7baa7f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13388797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df71508f5fa54d4bd13ad9398536bb4f638aa752d5841e5d9867d286d42af1d3`
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
# Wed, 13 Sep 2017 18:03:38 GMT
ENV EGGDROP_SHA256=528faa09f8bb10d358b7a0c0d953846cbadd10c73fd8dc75475d1dc3679d7674
# Wed, 13 Sep 2017 18:03:38 GMT
ENV EGGDROP_COMMIT=0d6d8d5c792ebc1f2700ee7ee1209feb7741973b
# Wed, 13 Sep 2017 18:04:26 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 13 Sep 2017 18:04:26 GMT
ENV NICK=
# Wed, 13 Sep 2017 18:04:26 GMT
ENV SERVER=
# Wed, 13 Sep 2017 18:04:26 GMT
ENV LISTEN=3333
# Wed, 13 Sep 2017 18:04:26 GMT
ENV OWNER=
# Wed, 13 Sep 2017 18:04:26 GMT
ENV USERFILE=eggdrop.user
# Wed, 13 Sep 2017 18:04:27 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 13 Sep 2017 18:04:27 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 13 Sep 2017 18:04:27 GMT
EXPOSE 3333/tcp
# Wed, 13 Sep 2017 18:04:27 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 13 Sep 2017 18:04:27 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 13 Sep 2017 18:04:28 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 13 Sep 2017 18:04:28 GMT
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
	-	`sha256:b3558287c64d8298d664758832f5b675fb40335650126b4e034c227cb47cda86`  
		Last Modified: Wed, 13 Sep 2017 18:06:31 GMT  
		Size: 11.4 MB (11406875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59798c472b729f193e91d878371779fa737907d8a8f2621610ad71acdfd216f3`  
		Last Modified: Wed, 13 Sep 2017 18:06:29 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9510f8911d42b872d1ba13805b13f95494b769f6cce5ba7fcf5d97e18c298117`  
		Last Modified: Wed, 13 Sep 2017 18:06:28 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:c1093c90e39b4db9f3d1af5cffdac5655894aa31cb292102540a22c8eb6cc722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:381b6faa8e258d364d235eecdb192cd01fe8f32bc2d95896fc46470a9119f743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7380260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92f8223969d3ce5c1976c69e259abfb380acc58bbc2e8b472050697745092cc`
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
# Wed, 13 Sep 2017 18:05:32 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 13 Sep 2017 18:05:32 GMT
ENV NICK=
# Wed, 13 Sep 2017 18:05:32 GMT
ENV SERVER=
# Wed, 13 Sep 2017 18:05:33 GMT
ENV LISTEN=3333
# Wed, 13 Sep 2017 18:05:33 GMT
ENV OWNER=
# Wed, 13 Sep 2017 18:05:33 GMT
ENV USERFILE=eggdrop.user
# Wed, 13 Sep 2017 18:05:33 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 13 Sep 2017 18:05:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 13 Sep 2017 18:05:33 GMT
EXPOSE 3333/tcp
# Wed, 13 Sep 2017 18:05:34 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 13 Sep 2017 18:05:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 13 Sep 2017 18:05:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 13 Sep 2017 18:05:34 GMT
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
	-	`sha256:86d1afb1db8afdcb64a7a2174aad55a81f85cb0bf0bad637d894e793dd1fe729`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 5.0 MB (4983339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926021c66d2ca83531d0e4f8242a7c7394cbdd38fa61d339dc0a0963c59203f3`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70b7be8bb4466a7398ff96cb6587735510c5fed0c7d5deed47d552ef15dcad6`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:c1093c90e39b4db9f3d1af5cffdac5655894aa31cb292102540a22c8eb6cc722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:381b6faa8e258d364d235eecdb192cd01fe8f32bc2d95896fc46470a9119f743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7380260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92f8223969d3ce5c1976c69e259abfb380acc58bbc2e8b472050697745092cc`
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
# Wed, 13 Sep 2017 18:05:32 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 13 Sep 2017 18:05:32 GMT
ENV NICK=
# Wed, 13 Sep 2017 18:05:32 GMT
ENV SERVER=
# Wed, 13 Sep 2017 18:05:33 GMT
ENV LISTEN=3333
# Wed, 13 Sep 2017 18:05:33 GMT
ENV OWNER=
# Wed, 13 Sep 2017 18:05:33 GMT
ENV USERFILE=eggdrop.user
# Wed, 13 Sep 2017 18:05:33 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 13 Sep 2017 18:05:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 13 Sep 2017 18:05:33 GMT
EXPOSE 3333/tcp
# Wed, 13 Sep 2017 18:05:34 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 13 Sep 2017 18:05:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 13 Sep 2017 18:05:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 13 Sep 2017 18:05:34 GMT
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
	-	`sha256:86d1afb1db8afdcb64a7a2174aad55a81f85cb0bf0bad637d894e793dd1fe729`  
		Last Modified: Wed, 13 Sep 2017 18:06:40 GMT  
		Size: 5.0 MB (4983339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926021c66d2ca83531d0e4f8242a7c7394cbdd38fa61d339dc0a0963c59203f3`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70b7be8bb4466a7398ff96cb6587735510c5fed0c7d5deed47d552ef15dcad6`  
		Last Modified: Wed, 13 Sep 2017 18:06:39 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
