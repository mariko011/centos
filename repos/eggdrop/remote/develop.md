## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:31f1fd5ea7b17c9e5aef541bf274abe61cbc75ce2ed61ea3e54cf711e3fe87b6
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13134133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd25808dea78cbbe590bed939633deae30a505e2c535064801bdf3a3e6f61d1`
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
# Fri, 03 Mar 2017 21:50:51 GMT
ENV EGGDROP_SHA256=17ce77233894c8f2bb26a1c9a7b054e86d57475fcfbcd90b0d200d2a52b9c5eb
# Fri, 03 Mar 2017 21:50:52 GMT
ENV EGGDROP_COMMIT=f0863681d5e9cb900d1ee4bb1ea7a6bbb36c3b4c
# Fri, 03 Mar 2017 21:51:38 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 21:51:38 GMT
ENV NICK=
# Fri, 03 Mar 2017 21:51:38 GMT
ENV SERVER=
# Fri, 03 Mar 2017 21:51:38 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 21:51:39 GMT
ENV OWNER=
# Fri, 03 Mar 2017 21:51:39 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 21:51:39 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 21:51:40 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 21:51:40 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 21:51:40 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 21:51:41 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 21:51:41 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 21:51:41 GMT
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
	-	`sha256:509f695d400184597ab07642041d08b4626eefb837cc770e0a7297f2c82025a9`  
		Last Modified: Sat, 04 Mar 2017 04:53:53 GMT  
		Size: 11.2 MB (11217493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c37d389955aa289433e9b00e1061f37eafb4ff5abaf95120d62bc5b9abb982`  
		Last Modified: Sat, 04 Mar 2017 04:53:46 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993f68e2a96404df85b91a106e66a9e9e8025d33ba950a591249f2d064bd6aff`  
		Last Modified: Sat, 04 Mar 2017 04:53:46 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
