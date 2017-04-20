## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:9283c73eca0c34588731cb084077a7b906d6256a5a2a2164025aa3687178da5e
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13317311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da15c295c53cdc7934fb56e3131be7877dcf83c6a5433735487c5136db78da3`
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
# Thu, 20 Apr 2017 14:25:31 GMT
ENV EGGDROP_SHA256=520ad1fd4b8589bae33ff8cda7d5f0d2d4d22391d99a47dbd9bc677275d3494a
# Thu, 20 Apr 2017 14:25:32 GMT
ENV EGGDROP_COMMIT=aa8ef9ccb52826f3a1cf626cc25309af08acfa20
# Thu, 20 Apr 2017 14:26:18 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Thu, 20 Apr 2017 14:26:18 GMT
ENV NICK=
# Thu, 20 Apr 2017 14:26:19 GMT
ENV SERVER=
# Thu, 20 Apr 2017 14:26:19 GMT
ENV LISTEN=3333
# Thu, 20 Apr 2017 14:26:20 GMT
ENV OWNER=
# Thu, 20 Apr 2017 14:26:20 GMT
ENV USERFILE=eggdrop.user
# Thu, 20 Apr 2017 14:26:21 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 20 Apr 2017 14:26:21 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 20 Apr 2017 14:26:22 GMT
EXPOSE 3333/tcp
# Thu, 20 Apr 2017 14:26:22 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Thu, 20 Apr 2017 14:26:23 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 20 Apr 2017 14:26:24 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 20 Apr 2017 14:26:24 GMT
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
	-	`sha256:aeac19b62ea7b1eb500844f72c5dac5e9a3bcb70dcef966708cf8066f8bc13f4`  
		Last Modified: Thu, 20 Apr 2017 14:26:46 GMT  
		Size: 11.4 MB (11400666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a6866af2f616daefd532fc27d6cab1c6cd8da44f8b08120641fc79c77e8d6b`  
		Last Modified: Thu, 20 Apr 2017 14:26:46 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20135e5e16564175bd1da15892fea2e47318339dd07c9277b4d2b6b7bff030de`  
		Last Modified: Thu, 20 Apr 2017 14:26:44 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
