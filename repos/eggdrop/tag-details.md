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
$ docker pull eggdrop@sha256:2f420c1522bcc1064e47e9f19d8aae2746552803e9019b3f61c352a9b90269bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

```console
$ docker pull eggdrop@sha256:ce17a0fa773cb2c727cf29ed1874c53c7ad3df3a0b84a1358573a5571bd23f9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6107367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce7a4fb679a1c42c065b895b836a4ee4fc1c394bb92c6bfa518f80ea3617d6e`
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
# Thu, 26 Oct 2017 00:04:08 GMT
RUN apk add --no-cache tcl bash
# Thu, 26 Oct 2017 15:16:19 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 26 Oct 2017 15:16:19 GMT
ENV NICK=
# Thu, 26 Oct 2017 15:16:19 GMT
ENV SERVER=
# Thu, 26 Oct 2017 15:16:20 GMT
ENV LISTEN=3333
# Thu, 26 Oct 2017 15:16:20 GMT
ENV OWNER=
# Thu, 26 Oct 2017 15:16:20 GMT
ENV USERFILE=eggdrop.user
# Thu, 26 Oct 2017 15:16:20 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 26 Oct 2017 15:16:20 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 26 Oct 2017 15:16:20 GMT
EXPOSE 3333/tcp
# Thu, 26 Oct 2017 15:16:21 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Thu, 26 Oct 2017 15:16:21 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 26 Oct 2017 15:16:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 26 Oct 2017 15:16:22 GMT
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
	-	`sha256:7f41bdcdcd6dd0025d27d032ded143a9dab57ad0e8f067980cf3e4ae3ad453e5`  
		Last Modified: Thu, 26 Oct 2017 15:16:38 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689bd5e88b83954d62926413d30943775278b53745ba0490ed8880c2742ec157`  
		Last Modified: Thu, 26 Oct 2017 15:16:36 GMT  
		Size: 992.2 KB (992163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996c2a87396ba336008b48a56598187c3460085795d1293d2f108b6243b3b177`  
		Last Modified: Thu, 26 Oct 2017 15:16:36 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116145730f5d15123cb5563eaf34d5fcfb8378d7a2261b85930fe78c6cca851b`  
		Last Modified: Thu, 26 Oct 2017 15:16:36 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:2f420c1522bcc1064e47e9f19d8aae2746552803e9019b3f61c352a9b90269bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

```console
$ docker pull eggdrop@sha256:ce17a0fa773cb2c727cf29ed1874c53c7ad3df3a0b84a1358573a5571bd23f9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6107367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce7a4fb679a1c42c065b895b836a4ee4fc1c394bb92c6bfa518f80ea3617d6e`
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
# Thu, 26 Oct 2017 00:04:08 GMT
RUN apk add --no-cache tcl bash
# Thu, 26 Oct 2017 15:16:19 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 26 Oct 2017 15:16:19 GMT
ENV NICK=
# Thu, 26 Oct 2017 15:16:19 GMT
ENV SERVER=
# Thu, 26 Oct 2017 15:16:20 GMT
ENV LISTEN=3333
# Thu, 26 Oct 2017 15:16:20 GMT
ENV OWNER=
# Thu, 26 Oct 2017 15:16:20 GMT
ENV USERFILE=eggdrop.user
# Thu, 26 Oct 2017 15:16:20 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 26 Oct 2017 15:16:20 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 26 Oct 2017 15:16:20 GMT
EXPOSE 3333/tcp
# Thu, 26 Oct 2017 15:16:21 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Thu, 26 Oct 2017 15:16:21 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 26 Oct 2017 15:16:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 26 Oct 2017 15:16:22 GMT
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
	-	`sha256:7f41bdcdcd6dd0025d27d032ded143a9dab57ad0e8f067980cf3e4ae3ad453e5`  
		Last Modified: Thu, 26 Oct 2017 15:16:38 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689bd5e88b83954d62926413d30943775278b53745ba0490ed8880c2742ec157`  
		Last Modified: Thu, 26 Oct 2017 15:16:36 GMT  
		Size: 992.2 KB (992163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996c2a87396ba336008b48a56598187c3460085795d1293d2f108b6243b3b177`  
		Last Modified: Thu, 26 Oct 2017 15:16:36 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116145730f5d15123cb5563eaf34d5fcfb8378d7a2261b85930fe78c6cca851b`  
		Last Modified: Thu, 26 Oct 2017 15:16:36 GMT  
		Size: 703.0 B  
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
