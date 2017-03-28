## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:386841dbfdfe81bbae668814cb547733f9946946c02231f12cdcbd06c45cb63d
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13132497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bdd72ef608b1679cc40eb3a0c5dc675b82d1b33522f1341228e9a4fd4903c1d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:50:49 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 03 Mar 2017 21:50:50 GMT
RUN adduser -S eggdrop
# Fri, 03 Mar 2017 21:50:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 28 Mar 2017 17:07:25 GMT
ENV EGGDROP_SHA256=c0383e682c3480b21778a5f5d42830e9425b51fa0cd373065963c3826b2f9ce6
# Tue, 28 Mar 2017 17:07:25 GMT
ENV EGGDROP_COMMIT=ad4e5e6b5df96cb32dfb9500dc674de79c4b625b
# Tue, 28 Mar 2017 17:08:14 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 28 Mar 2017 17:08:14 GMT
ENV NICK=
# Tue, 28 Mar 2017 17:08:15 GMT
ENV SERVER=
# Tue, 28 Mar 2017 17:08:16 GMT
ENV LISTEN=3333
# Tue, 28 Mar 2017 17:08:16 GMT
ENV OWNER=
# Tue, 28 Mar 2017 17:08:17 GMT
ENV USERFILE=eggdrop.user
# Tue, 28 Mar 2017 17:08:17 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 28 Mar 2017 17:08:18 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 28 Mar 2017 17:08:18 GMT
EXPOSE 3333/tcp
# Tue, 28 Mar 2017 17:08:19 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Tue, 28 Mar 2017 17:08:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 28 Mar 2017 17:08:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 28 Mar 2017 17:08:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f49539d2c6b5a8947c0ce6924db95000c8d2618f91ba8a810d22bf173b17886`  
		Last Modified: Sat, 04 Mar 2017 04:53:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5bddc9b39869bdd59bf1731c24678df216bcab730623dbe2888e71803f82f9`  
		Last Modified: Sat, 04 Mar 2017 04:53:46 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa03ade7dcbd3309e247a247335e1a66ad14536c953488a329b648b5e7defd5`  
		Last Modified: Tue, 28 Mar 2017 17:10:06 GMT  
		Size: 11.2 MB (11215863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfb35d69c098f4cd1711b514e08d5e0698cc78640152eb327cfd0cfae7840fc`  
		Last Modified: Tue, 28 Mar 2017 17:10:03 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d933c0ea83e29d89cb677a1fcedfef1fbf67b15fe40fd4493c59edb6ace0a`  
		Last Modified: Tue, 28 Mar 2017 17:10:06 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
