## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:50c93e22e449c02f973ad74381940b73ded965d20086ded6b9b716daaba17b39
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13321638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9eb03d7d58bb7303ea463fa5813738f317ea17551b360368fe1bfdc8284cf8`
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
# Fri, 28 Apr 2017 21:48:57 GMT
ENV EGGDROP_SHA256=d059a654e47157f7e9ed975f70a648622bf38d18368d179c704a0c988b6ece3d
# Fri, 28 Apr 2017 21:48:58 GMT
ENV EGGDROP_COMMIT=e34c874e622f82ae12c3f3ceeaf0fec24871b6fc
# Fri, 28 Apr 2017 21:49:44 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 28 Apr 2017 21:49:45 GMT
ENV NICK=
# Fri, 28 Apr 2017 21:49:46 GMT
ENV SERVER=
# Fri, 28 Apr 2017 21:49:46 GMT
ENV LISTEN=3333
# Fri, 28 Apr 2017 21:49:47 GMT
ENV OWNER=
# Fri, 28 Apr 2017 21:49:47 GMT
ENV USERFILE=eggdrop.user
# Fri, 28 Apr 2017 21:49:48 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 28 Apr 2017 21:49:49 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 28 Apr 2017 21:49:49 GMT
EXPOSE 3333/tcp
# Fri, 28 Apr 2017 21:49:50 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 28 Apr 2017 21:49:51 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 28 Apr 2017 21:49:52 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 28 Apr 2017 21:49:52 GMT
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
	-	`sha256:d98e58a540d2567e09e67fe22667e3494bfcede6d80e15a109e5998505186c4d`  
		Last Modified: Fri, 28 Apr 2017 21:50:16 GMT  
		Size: 11.4 MB (11404999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38beb847d0485b6a931b01b641316f9146e1ef1234b7dd8f7e26514fb38592bb`  
		Last Modified: Fri, 28 Apr 2017 21:50:14 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6b377875cf0153c8686912da4c974a3d2044b82ecb7d5b5229c46a02594d70`  
		Last Modified: Fri, 28 Apr 2017 21:50:15 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
