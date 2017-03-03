## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:652665335f341faa1f749350188f57e7498d45a4eaacaa596504a82429975c26
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13513617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e836815305939d65a51e968306e3fdd232ed6d20f0459972bd4f871ce752b7f7`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 17 Feb 2017 18:44:14 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 17 Feb 2017 18:44:15 GMT
RUN adduser -S eggdrop
# Fri, 17 Feb 2017 18:44:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 19:49:06 GMT
ENV EGGDROP_SHA256=17ce77233894c8f2bb26a1c9a7b054e86d57475fcfbcd90b0d200d2a52b9c5eb
# Fri, 03 Mar 2017 19:49:06 GMT
ENV EGGDROP_COMMIT=f0863681d5e9cb900d1ee4bb1ea7a6bbb36c3b4c
# Fri, 03 Mar 2017 19:49:53 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 03 Mar 2017 19:49:53 GMT
ENV NICK=
# Fri, 03 Mar 2017 19:49:54 GMT
ENV SERVER=
# Fri, 03 Mar 2017 19:49:54 GMT
ENV LISTEN=3333
# Fri, 03 Mar 2017 19:49:54 GMT
ENV OWNER=
# Fri, 03 Mar 2017 19:49:55 GMT
ENV USERFILE=eggdrop.user
# Fri, 03 Mar 2017 19:49:55 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 03 Mar 2017 19:49:55 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 03 Mar 2017 19:49:56 GMT
EXPOSE 3333/tcp
# Fri, 03 Mar 2017 19:49:56 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 03 Mar 2017 19:49:56 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 03 Mar 2017 19:49:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 03 Mar 2017 19:49:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cc22de7b9b59b539d23b574e258ba51cfa52789443fbd32901ed1bb7da2204`  
		Last Modified: Fri, 17 Feb 2017 18:45:29 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9538c405b79ec4656fd06a9bd5d538e01336e112f0b2d6ea67a93e57299306`  
		Last Modified: Fri, 17 Feb 2017 18:45:28 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5038d4428abf492ccb26502300362b56991ddc4c67c505b041fd1ab632bb5e7`  
		Last Modified: Fri, 03 Mar 2017 19:51:07 GMT  
		Size: 11.6 MB (11600199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf3b7d30306faf83b2328520e6f16f8aae83bef41503f3962762bc1b58d48f5`  
		Last Modified: Fri, 03 Mar 2017 19:51:03 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fd98f5b0739128b941ee5c066bda201167111d20d738ad5e2860c5165ffa63`  
		Last Modified: Fri, 03 Mar 2017 19:51:03 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
