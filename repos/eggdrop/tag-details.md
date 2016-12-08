<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.0`](#eggdrop180)
-	[`eggdrop:stable`](#eggdropstable)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:99ad8e66a23cd2c4e36f9cad73e8faf897ac71388e9e2c2d11040eada5a68657
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11806495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2492fa1033f6f22d838e5c9f71bf138834919f9246184e706926178d2d494b`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Dec 2016 18:19:27 GMT
ENV EGGDROP_SHA256=89bd9380b7d6b0bfd93921845d83e32b2258155b961a16b30469ca8f638d2a03
# Tue, 06 Dec 2016 18:19:27 GMT
ENV EGGDROP_COMMIT=241e5692f9df2497860c9df037c60fb4c0689874
# Tue, 06 Dec 2016 18:20:12 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 06 Dec 2016 18:20:13 GMT
ENV NICK=
# Tue, 06 Dec 2016 18:20:13 GMT
ENV SERVER=
# Tue, 06 Dec 2016 18:20:13 GMT
ENV LISTEN=3333
# Tue, 06 Dec 2016 18:20:14 GMT
ENV OWNER=
# Tue, 06 Dec 2016 18:20:14 GMT
ENV USERFILE=eggdrop.user
# Tue, 06 Dec 2016 18:20:14 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 06 Dec 2016 18:20:15 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 06 Dec 2016 18:20:15 GMT
EXPOSE 3333/tcp
# Tue, 06 Dec 2016 18:20:15 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 06 Dec 2016 18:20:16 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 06 Dec 2016 18:20:16 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 06 Dec 2016 18:20:16 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd7aeb53198ab91fa26abe63a01f992b77b59b0abcbfd4b26de2c1e20edd892`  
		Last Modified: Tue, 06 Dec 2016 18:21:19 GMT  
		Size: 9.5 MB (9482084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0c2a66b463c0ac207502b9ceae7768aa4493f6e0e3ac980486038d9148e463`  
		Last Modified: Tue, 06 Dec 2016 18:21:15 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568cc0d5cf4ab1ce56e3e64053ce85356c4436e9d8278c50f8f09c88f7ef01a7`  
		Last Modified: Tue, 06 Dec 2016 18:21:15 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:f1037412ec257d99135f03d1107671cb7d62afda55acfcc173dfcb70448ac947
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7745512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b3488deade21b828a76b3bf4b9fc056542515dd3073dfa6b12f0f3b797f5ae`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 08 Dec 2016 18:41:20 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.0.tar.gz.asc eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz.asc   && tar -zxvf eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz   && ( cd eggdrop-1.8.0     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.0   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Thu, 08 Dec 2016 18:41:21 GMT
ENV NICK=
# Thu, 08 Dec 2016 18:41:21 GMT
ENV SERVER=
# Thu, 08 Dec 2016 18:41:22 GMT
ENV LISTEN=3333
# Thu, 08 Dec 2016 18:41:22 GMT
ENV OWNER=
# Thu, 08 Dec 2016 18:41:22 GMT
ENV USERFILE=eggdrop.user
# Thu, 08 Dec 2016 18:41:23 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 08 Dec 2016 18:41:23 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 08 Dec 2016 18:41:24 GMT
EXPOSE 3333/tcp
# Thu, 08 Dec 2016 18:41:24 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Thu, 08 Dec 2016 18:41:25 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 08 Dec 2016 18:41:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 08 Dec 2016 18:41:26 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3575fbe2a867ba3e618ad899dacb75a478b88e3292b783adeb0e8e3598373ec0`  
		Last Modified: Thu, 08 Dec 2016 18:41:58 GMT  
		Size: 5.4 MB (5421101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc19f1563277360d1b1a8e784e00c6b80d00e1c2f1fc3ce1bb7972cdbbab4164`  
		Last Modified: Thu, 08 Dec 2016 18:41:56 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934670898cc9663c969fc82ce204e473d34b4f70326aaa287f8d2d20762d5b47`  
		Last Modified: Thu, 08 Dec 2016 18:41:56 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.0`

```console
$ docker pull eggdrop@sha256:f1037412ec257d99135f03d1107671cb7d62afda55acfcc173dfcb70448ac947
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7745512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b3488deade21b828a76b3bf4b9fc056542515dd3073dfa6b12f0f3b797f5ae`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 08 Dec 2016 18:41:20 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.0.tar.gz.asc eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz.asc   && tar -zxvf eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz   && ( cd eggdrop-1.8.0     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.0   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Thu, 08 Dec 2016 18:41:21 GMT
ENV NICK=
# Thu, 08 Dec 2016 18:41:21 GMT
ENV SERVER=
# Thu, 08 Dec 2016 18:41:22 GMT
ENV LISTEN=3333
# Thu, 08 Dec 2016 18:41:22 GMT
ENV OWNER=
# Thu, 08 Dec 2016 18:41:22 GMT
ENV USERFILE=eggdrop.user
# Thu, 08 Dec 2016 18:41:23 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 08 Dec 2016 18:41:23 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 08 Dec 2016 18:41:24 GMT
EXPOSE 3333/tcp
# Thu, 08 Dec 2016 18:41:24 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Thu, 08 Dec 2016 18:41:25 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 08 Dec 2016 18:41:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 08 Dec 2016 18:41:26 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3575fbe2a867ba3e618ad899dacb75a478b88e3292b783adeb0e8e3598373ec0`  
		Last Modified: Thu, 08 Dec 2016 18:41:58 GMT  
		Size: 5.4 MB (5421101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc19f1563277360d1b1a8e784e00c6b80d00e1c2f1fc3ce1bb7972cdbbab4164`  
		Last Modified: Thu, 08 Dec 2016 18:41:56 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934670898cc9663c969fc82ce204e473d34b4f70326aaa287f8d2d20762d5b47`  
		Last Modified: Thu, 08 Dec 2016 18:41:56 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:f1037412ec257d99135f03d1107671cb7d62afda55acfcc173dfcb70448ac947
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7745512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b3488deade21b828a76b3bf4b9fc056542515dd3073dfa6b12f0f3b797f5ae`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 08 Dec 2016 18:41:20 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.0.tar.gz.asc eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz.asc   && tar -zxvf eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz   && ( cd eggdrop-1.8.0     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.0   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Thu, 08 Dec 2016 18:41:21 GMT
ENV NICK=
# Thu, 08 Dec 2016 18:41:21 GMT
ENV SERVER=
# Thu, 08 Dec 2016 18:41:22 GMT
ENV LISTEN=3333
# Thu, 08 Dec 2016 18:41:22 GMT
ENV OWNER=
# Thu, 08 Dec 2016 18:41:22 GMT
ENV USERFILE=eggdrop.user
# Thu, 08 Dec 2016 18:41:23 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 08 Dec 2016 18:41:23 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 08 Dec 2016 18:41:24 GMT
EXPOSE 3333/tcp
# Thu, 08 Dec 2016 18:41:24 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Thu, 08 Dec 2016 18:41:25 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 08 Dec 2016 18:41:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 08 Dec 2016 18:41:26 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3575fbe2a867ba3e618ad899dacb75a478b88e3292b783adeb0e8e3598373ec0`  
		Last Modified: Thu, 08 Dec 2016 18:41:58 GMT  
		Size: 5.4 MB (5421101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc19f1563277360d1b1a8e784e00c6b80d00e1c2f1fc3ce1bb7972cdbbab4164`  
		Last Modified: Thu, 08 Dec 2016 18:41:56 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934670898cc9663c969fc82ce204e473d34b4f70326aaa287f8d2d20762d5b47`  
		Last Modified: Thu, 08 Dec 2016 18:41:56 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:f1037412ec257d99135f03d1107671cb7d62afda55acfcc173dfcb70448ac947
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7745512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b3488deade21b828a76b3bf4b9fc056542515dd3073dfa6b12f0f3b797f5ae`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 08 Dec 2016 18:41:20 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop-1.8.0.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.0.tar.gz.asc eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz.asc   && tar -zxvf eggdrop-1.8.0.tar.gz   && rm eggdrop-1.8.0.tar.gz   && ( cd eggdrop-1.8.0     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.0   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Thu, 08 Dec 2016 18:41:21 GMT
ENV NICK=
# Thu, 08 Dec 2016 18:41:21 GMT
ENV SERVER=
# Thu, 08 Dec 2016 18:41:22 GMT
ENV LISTEN=3333
# Thu, 08 Dec 2016 18:41:22 GMT
ENV OWNER=
# Thu, 08 Dec 2016 18:41:22 GMT
ENV USERFILE=eggdrop.user
# Thu, 08 Dec 2016 18:41:23 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 08 Dec 2016 18:41:23 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 08 Dec 2016 18:41:24 GMT
EXPOSE 3333/tcp
# Thu, 08 Dec 2016 18:41:24 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Thu, 08 Dec 2016 18:41:25 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 08 Dec 2016 18:41:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 08 Dec 2016 18:41:26 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3575fbe2a867ba3e618ad899dacb75a478b88e3292b783adeb0e8e3598373ec0`  
		Last Modified: Thu, 08 Dec 2016 18:41:58 GMT  
		Size: 5.4 MB (5421101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc19f1563277360d1b1a8e784e00c6b80d00e1c2f1fc3ce1bb7972cdbbab4164`  
		Last Modified: Thu, 08 Dec 2016 18:41:56 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934670898cc9663c969fc82ce204e473d34b4f70326aaa287f8d2d20762d5b47`  
		Last Modified: Thu, 08 Dec 2016 18:41:56 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:9c652fb65e6cb9583058c4b0166460960c8b573bc510426b9b61ab00abe4ea27
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b534ea25fa14a8c8f2c5611ba41e0f14c375adeacdf78c9fc7041eb1bf134624`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:13:10 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 18 Oct 2016 23:13:10 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:13:11 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:13:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:13:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:13:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:13:13 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:13:13 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:13:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:13:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:13:15 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a57a3ec65c4f428394aad0a4312cd2dc0198beae4dd8a50e39576d6e4e4d07`  
		Last Modified: Tue, 18 Oct 2016 23:13:25 GMT  
		Size: 3.6 MB (3586865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8dff6fb983afa3853237d254dda9a97f55ac74806c2dab385c310ef9539da`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c87e3290f26f24556b19dc8113cd0899a7e67498e43fc288c364ddf66bcd0`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:9c652fb65e6cb9583058c4b0166460960c8b573bc510426b9b61ab00abe4ea27
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b534ea25fa14a8c8f2c5611ba41e0f14c375adeacdf78c9fc7041eb1bf134624`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 18 Oct 2016 23:13:10 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 18 Oct 2016 23:13:10 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:13:11 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:13:11 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:13:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:13:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:13:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:13:13 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:13:13 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:13:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:13:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:13:15 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a57a3ec65c4f428394aad0a4312cd2dc0198beae4dd8a50e39576d6e4e4d07`  
		Last Modified: Tue, 18 Oct 2016 23:13:25 GMT  
		Size: 3.6 MB (3586865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8dff6fb983afa3853237d254dda9a97f55ac74806c2dab385c310ef9539da`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c87e3290f26f24556b19dc8113cd0899a7e67498e43fc288c364ddf66bcd0`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
