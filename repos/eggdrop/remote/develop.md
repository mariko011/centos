## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:84bf8ac89b67660841f7653381ad27738a63f5c996f46bed18448e062c90238f
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13387337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848851634d3747efa80e9ddfab9e995164ebdbbd28420d51991720a4623221d6`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:22:43 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 May 2017 21:22:45 GMT
RUN adduser -S eggdrop
# Wed, 10 May 2017 21:22:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 12 May 2017 14:59:05 GMT
ENV EGGDROP_SHA256=f962b07612a681c0bce62391e2a5180b94ee5ee9aeb3ac16b4a20d9ef6d2201a
# Fri, 12 May 2017 14:59:05 GMT
ENV EGGDROP_COMMIT=5d6a1f54d94819f41a0da7dced1167832ad3b094
# Fri, 12 May 2017 14:59:55 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 12 May 2017 14:59:56 GMT
ENV NICK=
# Fri, 12 May 2017 14:59:56 GMT
ENV SERVER=
# Fri, 12 May 2017 14:59:57 GMT
ENV LISTEN=3333
# Fri, 12 May 2017 14:59:58 GMT
ENV OWNER=
# Fri, 12 May 2017 14:59:59 GMT
ENV USERFILE=eggdrop.user
# Fri, 12 May 2017 14:59:59 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 12 May 2017 15:00:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 12 May 2017 15:00:01 GMT
EXPOSE 3333/tcp
# Fri, 12 May 2017 15:00:02 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 12 May 2017 15:00:03 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 12 May 2017 15:00:03 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 12 May 2017 15:00:04 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6571b6efbe0fd52dc15f46b8f71fab8ca38146025bf7cda67b5644642f7ecf`  
		Last Modified: Thu, 11 May 2017 15:34:44 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39755bdb43a56022f0086d5221c0899ed016fe2b423b7481a686cd1bdac2ffe0`  
		Last Modified: Thu, 11 May 2017 15:34:44 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b63e18ee46789c823e36d7633ef6e203d2dd315a8014f7b059f20d98f5d416`  
		Last Modified: Fri, 12 May 2017 15:00:30 GMT  
		Size: 11.4 MB (11407975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d87fea96a14d5ae867ec30929136de7e56e6a4e575c8fdb0b7d7f9b1b286d9`  
		Last Modified: Fri, 12 May 2017 15:00:28 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8daf3688cba405bb90ddab499b010119a364d8f37fd8c0ad20990817af64cbce`  
		Last Modified: Fri, 12 May 2017 15:00:28 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
