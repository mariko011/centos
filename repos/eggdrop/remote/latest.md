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
