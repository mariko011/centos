## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:06cac964b93d7617a0fcbe339cb43f4718d900a4337f1a6778ca32c412169e4d
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6287503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccdaf2447f49dcc88b5c492770fa0f0cc655e565892d6f6fe63642f4890f8b21`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:25:04 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 30 Aug 2016 00:25:05 GMT
RUN adduser -S eggdrop
# Tue, 30 Aug 2016 00:25:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 Aug 2016 00:26:09 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Tue, 30 Aug 2016 00:26:09 GMT
ENV NICK=
# Tue, 30 Aug 2016 00:26:09 GMT
ENV SERVER=
# Tue, 30 Aug 2016 00:26:10 GMT
ENV LISTEN=3333
# Tue, 30 Aug 2016 00:26:10 GMT
ENV OWNER=
# Tue, 30 Aug 2016 00:26:10 GMT
ENV USERFILE=eggdrop.user
# Tue, 30 Aug 2016 00:26:10 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 30 Aug 2016 00:26:11 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 30 Aug 2016 00:26:11 GMT
EXPOSE 3333/tcp
# Tue, 30 Aug 2016 00:26:11 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 30 Aug 2016 00:26:12 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 30 Aug 2016 00:26:12 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 30 Aug 2016 00:26:12 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e774eb22893af3cb3df3cc57fd62fda219bb72a480ca9448ff46545ec20849`  
		Last Modified: Tue, 30 Aug 2016 21:07:32 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57df40530376f1bd1f04e0439e8e09f6d920071c537741a87faeaa6979bc73a2`  
		Last Modified: Tue, 30 Aug 2016 21:07:33 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a86cdf12325ea12744ed0f02f08ea821125a5eedad17afe1a707b88430333b8`  
		Last Modified: Tue, 30 Aug 2016 21:08:02 GMT  
		Size: 4.0 MB (3965770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3e37b904a1c00b7f3c4672f9080f179a43ea85ab91089fda4ff2af17a7e1f9`  
		Last Modified: Tue, 30 Aug 2016 21:07:59 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccd4af3f3e644fd57c89db08122b90cd3cc33cfde4d644bc275fa34f0e49f5b`  
		Last Modified: Tue, 30 Aug 2016 21:07:59 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
