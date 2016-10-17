## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:ff10a74e342db0e8bc4aa324bff612b251a9ce3d98c9425a0b0de7fb903cd74a
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7901666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11fbd07cc24f63953447b34b5526b6bcd88d2de351e25a48ef382d683c16e43b`
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
# Mon, 17 Oct 2016 18:31:43 GMT
ENV EGGDROP_COMMIT=a059d848e24372d00b8383fb6d3a755c0fe00e70
# Mon, 17 Oct 2016 18:31:43 GMT
ENV EGGDROP_SHA256=ccff608aae904756a9f3eaad24642167c269126e3af73ab8a6ec2ee24e70886a
# Mon, 17 Oct 2016 18:32:20 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Mon, 17 Oct 2016 18:32:20 GMT
ENV NICK=
# Mon, 17 Oct 2016 18:32:21 GMT
ENV SERVER=
# Mon, 17 Oct 2016 18:32:21 GMT
ENV LISTEN=3333
# Mon, 17 Oct 2016 18:32:21 GMT
ENV OWNER=
# Mon, 17 Oct 2016 18:32:22 GMT
ENV USERFILE=eggdrop.user
# Mon, 17 Oct 2016 18:32:22 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 17 Oct 2016 18:32:22 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 17 Oct 2016 18:32:23 GMT
EXPOSE 3333/tcp
# Mon, 17 Oct 2016 18:32:23 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 17 Oct 2016 18:32:24 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 17 Oct 2016 18:32:24 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 17 Oct 2016 18:32:25 GMT
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
	-	`sha256:3a7136fb95f5d1a323b040afa7eb942174085534974ea7ba319975346f6efa87`  
		Last Modified: Mon, 17 Oct 2016 18:32:36 GMT  
		Size: 5.6 MB (5577296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47c4821c721960090e80629724ee9d6d13f48694970adec8d69597e7e68be81`  
		Last Modified: Mon, 17 Oct 2016 18:32:34 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0962a976ed470d1d82795643a617f5e9cee94694e22d513914fde4ff8dcafd`  
		Last Modified: Mon, 17 Oct 2016 18:32:33 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
