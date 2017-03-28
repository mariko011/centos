## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:4d8de65809617f289f8269b028673dbe73c63842ca1adbdadc6097b3e9ea3151
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7254423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c83f9449fa02943a16c17b5e9dde9ddd9bcebf0c3740c27e07f8914d15ef98f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:48:50 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 03 Mar 2017 21:48:51 GMT
RUN adduser -S eggdrop
# Fri, 03 Mar 2017 21:48:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 28 Mar 2017 17:09:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 28 Mar 2017 17:09:04 GMT
ENV NICK=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV SERVER=
# Tue, 28 Mar 2017 17:09:05 GMT
ENV LISTEN=3333
# Tue, 28 Mar 2017 17:09:06 GMT
ENV OWNER=
# Tue, 28 Mar 2017 17:09:07 GMT
ENV USERFILE=eggdrop.user
# Tue, 28 Mar 2017 17:09:07 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 28 Mar 2017 17:09:08 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 28 Mar 2017 17:09:08 GMT
EXPOSE 3333/tcp
# Tue, 28 Mar 2017 17:09:09 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 28 Mar 2017 17:09:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 28 Mar 2017 17:09:11 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 28 Mar 2017 17:09:11 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5c47fff02df2b35ae358a2202af4e17996168dc37b707a35cf0dd467f3734`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e3857bd72846a4c81f7ed61db77dc8cc8462fa581cd45ab69ec251efd85cc`  
		Last Modified: Sat, 04 Mar 2017 04:51:19 GMT  
		Size: 7.9 KB (7920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afe2aa0c0a4cb598dc337c1e1f677503cba1cb1d687aa04f7a44deb47e03636`  
		Last Modified: Tue, 28 Mar 2017 17:10:33 GMT  
		Size: 4.9 MB (4929421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110185c7ab5e7c686e49a988cf756bf32437668d96cc0c4550786f401418c6f1`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4c088c4a843f703b613ebb1bb362be608a9fee63cd408bf48c1257950bb9af`  
		Last Modified: Tue, 28 Mar 2017 17:10:30 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
