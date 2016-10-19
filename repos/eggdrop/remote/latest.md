## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:9c652fb65e6cb9583058c4b0166460960c8b573bc510426b9b61ab00abe4ea27
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

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
