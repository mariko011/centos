## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:23d07a07be77f2550357204f144e94a671ed3c94cf946287e631a9c7d9971478
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7375514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f4df4c38d0f32153594ffafc62f59d27c6fdd12935c51da67fb4fbe649dec2`
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
# Tue, 27 Jun 2017 21:07:49 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 27 Jun 2017 21:08:12 GMT
ENV NICK=
# Tue, 27 Jun 2017 21:08:13 GMT
ENV SERVER=
# Tue, 27 Jun 2017 21:08:14 GMT
ENV LISTEN=3333
# Tue, 27 Jun 2017 21:08:15 GMT
ENV OWNER=
# Tue, 27 Jun 2017 21:08:16 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Jun 2017 21:08:41 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Jun 2017 21:08:42 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Jun 2017 21:08:43 GMT
EXPOSE 3333/tcp
# Tue, 11 Jul 2017 19:07:49 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 11 Jul 2017 19:07:50 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 11 Jul 2017 19:07:50 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 11 Jul 2017 19:07:51 GMT
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
	-	`sha256:3533e40611ab15e65336505f58dff0b1f94707948fb0b425c302bc367c50965f`  
		Last Modified: Thu, 29 Jun 2017 20:36:24 GMT  
		Size: 5.0 MB (4978655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39334fdcfae52d80d02e86fcb277176dd91c00982d1e009787f089cd419db85`  
		Last Modified: Tue, 11 Jul 2017 19:08:50 GMT  
		Size: 1.9 KB (1872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7266baec0f84c0bf991b1a9f71267693dfbbffd41990b829bb816d7a4ea9e1b6`  
		Last Modified: Tue, 11 Jul 2017 19:08:50 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
