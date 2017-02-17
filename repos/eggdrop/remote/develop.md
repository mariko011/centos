## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:abf2037f42373d2dda7846ce1caef01503a6e70086f880c503419ae6730cf3de
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13513987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eed5ec70296fb4cc008e5eca492f04aae0bf08b1dbbab887f0aeb8342f8f987`
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
# Fri, 17 Feb 2017 18:44:17 GMT
ENV EGGDROP_SHA256=28e2b7032769f293d1ca3373a9c6db819d5fdbf9695cc1cc1a174943209ab798
# Fri, 17 Feb 2017 18:44:17 GMT
ENV EGGDROP_COMMIT=b8c1e42d7875ef6ae9d88e95e3a678ea76461ce4
# Fri, 17 Feb 2017 18:45:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 17 Feb 2017 18:45:05 GMT
ENV NICK=
# Fri, 17 Feb 2017 18:45:05 GMT
ENV SERVER=
# Fri, 17 Feb 2017 18:45:05 GMT
ENV LISTEN=3333
# Fri, 17 Feb 2017 18:45:05 GMT
ENV OWNER=
# Fri, 17 Feb 2017 18:45:06 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Feb 2017 18:45:06 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Feb 2017 18:45:06 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Feb 2017 18:45:07 GMT
EXPOSE 3333/tcp
# Fri, 17 Feb 2017 18:45:07 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Fri, 17 Feb 2017 18:45:08 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 17 Feb 2017 18:45:08 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Feb 2017 18:45:08 GMT
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
	-	`sha256:135527d9c4c15d3ffa4325bfcbb15f24369d27a668c1b2455807a9d7ea57fc48`  
		Last Modified: Fri, 17 Feb 2017 18:45:32 GMT  
		Size: 11.6 MB (11600561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa825d480d3dfd3f90f72bcc7aaf63c3fb8ed2685945f65d83a8bc7ab3112e9`  
		Last Modified: Fri, 17 Feb 2017 18:45:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e18b77c10ddd86a9446de7cae89911408c261a6ba8a3ae30bc42d042375cbd`  
		Last Modified: Fri, 17 Feb 2017 18:45:28 GMT  
		Size: 698.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
