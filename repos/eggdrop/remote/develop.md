## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:eed19908d9a44762c877547a07da673a86d33cd672147dfe3c0826b203d4ff91
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7900398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b863b9883401f400369fb5a2980714d69716ba96b75e7cac8f63cce7c6d644b6`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:43:33 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 23 Sep 2016 16:43:34 GMT
RUN adduser -S eggdrop
# Fri, 23 Sep 2016 16:43:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 26 Sep 2016 20:02:13 GMT
ENV EGGDROP_COMMIT=bd1ee04c55c6bbee1d8f6db71b377d61143cc4f3
# Mon, 26 Sep 2016 20:02:13 GMT
ENV EGGDROP_SHA256=38c5e30c9ca83f02505600d8cbcf01cfd6162d15b0f2fd01d72ff1fe27e5f305
# Mon, 26 Sep 2016 20:02:50 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Mon, 26 Sep 2016 20:02:51 GMT
ENV NICK=
# Mon, 26 Sep 2016 20:02:51 GMT
ENV SERVER=
# Mon, 26 Sep 2016 20:02:51 GMT
ENV LISTEN=3333
# Mon, 26 Sep 2016 20:02:51 GMT
ENV OWNER=
# Mon, 26 Sep 2016 20:02:52 GMT
ENV USERFILE=eggdrop.user
# Mon, 26 Sep 2016 20:02:52 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 26 Sep 2016 20:02:52 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 26 Sep 2016 20:02:53 GMT
EXPOSE 3333/tcp
# Mon, 26 Sep 2016 20:02:53 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 26 Sep 2016 20:02:54 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 26 Sep 2016 20:02:54 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 26 Sep 2016 20:02:54 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fce46b3e4ac4adeb2bc0c47748fabc6a63379f573c104d410da2f5c94cd04b`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fc389670947f64dbcc7493d755290d57126fe23abf317a4374b5f97c193c91`  
		Last Modified: Fri, 23 Sep 2016 16:44:09 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9b3943029571508cc33e014f3fa1bf283e12bbf938b804ac12e938b318bf8e9`  
		Last Modified: Mon, 26 Sep 2016 20:03:05 GMT  
		Size: 5.6 MB (5576029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5135fa5f0383720581ed3f51f0502d22b7b53422c6bb30678ebdc4106b3996`  
		Last Modified: Mon, 26 Sep 2016 20:03:03 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33599c685b73abb18e005d82cd3a4bd47461e8578f71e48e728c3dd5cd5855d2`  
		Last Modified: Mon, 26 Sep 2016 20:03:03 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
