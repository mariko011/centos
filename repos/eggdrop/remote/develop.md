## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:0a89b89601705d4895e33f138e09e8b5af74586919621828085848d484a4b9c2
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7901769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cf52e2376e970886b2bc30b3eb4328e8147d0eb81a97f437aa1d899ca1e200`
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
# Tue, 18 Oct 2016 23:15:27 GMT
ENV EGGDROP_COMMIT=a059d848e24372d00b8383fb6d3a755c0fe00e70
# Tue, 18 Oct 2016 23:15:27 GMT
ENV EGGDROP_SHA256=ccff608aae904756a9f3eaad24642167c269126e3af73ab8a6ec2ee24e70886a
# Tue, 18 Oct 2016 23:16:21 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Tue, 18 Oct 2016 23:16:22 GMT
ENV NICK=
# Tue, 18 Oct 2016 23:16:22 GMT
ENV SERVER=
# Tue, 18 Oct 2016 23:16:22 GMT
ENV LISTEN=3333
# Tue, 18 Oct 2016 23:16:23 GMT
ENV OWNER=
# Tue, 18 Oct 2016 23:16:23 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Oct 2016 23:16:23 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Oct 2016 23:16:24 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Oct 2016 23:16:24 GMT
EXPOSE 3333/tcp
# Tue, 18 Oct 2016 23:16:25 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 18 Oct 2016 23:16:25 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Oct 2016 23:16:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Oct 2016 23:16:26 GMT
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
	-	`sha256:656225102979363f1e265ca87147ef5de7a55b9c4026d6cc7bc9b0407568729e`  
		Last Modified: Tue, 18 Oct 2016 23:16:38 GMT  
		Size: 5.6 MB (5577357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8202ef17a5efeaa6ffc57842d2b1b2de5dfa272347bb3862e328e0b57a3d8d57`  
		Last Modified: Tue, 18 Oct 2016 23:16:36 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26642fd56b5d539ebb28a6d95306b884a694f8eb276b0d74beca6e48ad7261f`  
		Last Modified: Tue, 18 Oct 2016 23:16:35 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
