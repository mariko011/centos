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
