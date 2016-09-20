## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:fcef8042a20827743a3b94ca19f0babbee000bb9393735de3d0b1598a872413b
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5909281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2401ba7743fe0cf39c40641473328314204f4f181e5bb3af4bb294660803617`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:55:29 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Sep 2016 23:55:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Sep 2016 23:55:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Sep 2016 23:57:27 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/stable/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Mon, 19 Sep 2016 23:57:28 GMT
ENV NICK=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV SERVER=
# Mon, 19 Sep 2016 23:57:28 GMT
ENV LISTEN=3333
# Mon, 19 Sep 2016 23:57:29 GMT
ENV OWNER=
# Mon, 19 Sep 2016 23:57:29 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Sep 2016 23:57:29 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Sep 2016 23:57:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Sep 2016 23:57:30 GMT
EXPOSE 3333/tcp
# Mon, 19 Sep 2016 23:57:30 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 19 Sep 2016 23:57:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Sep 2016 23:57:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Sep 2016 23:57:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a697ce307081b59e47761a359b7a58461b34aab6eef8e4eaa103311f8644862`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59729aa0198b0fa2ef40a4d4076f0983537fe886ba48b541ba9c98a9866092a4`  
		Last Modified: Mon, 19 Sep 2016 23:56:42 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb238d7a4b8f49308636f366a99f2dd0081f8f55a9e49d17e160787028eac5b`  
		Last Modified: Mon, 19 Sep 2016 23:57:41 GMT  
		Size: 3.6 MB (3586780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38a5ba8449ebd0d324640ee3ac1019826d3c17d83579b1f47c1667b7ae1bb06`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6a395a61eaafd7c0a570ac7026193834120e48e8c17ba0987b22e40d5b29d`  
		Last Modified: Mon, 19 Sep 2016 23:57:39 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
