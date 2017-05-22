## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:0ec55b022c97a5c008798fae1fbc5fede4bee091a7d540c68bed8063e00d9285
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13389055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd00de683d6a53a4ffda475753a80a5b78b15f6088aa93e3d973c414f440ef4`
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
# Mon, 22 May 2017 16:22:20 GMT
ENV EGGDROP_SHA256=5a9d2376812b0197ed5631968ae6dd552c644b0db25e3672bb8fe64a495f3b14
# Mon, 22 May 2017 16:22:21 GMT
ENV EGGDROP_COMMIT=7806f41d67a883497c37033486b18f1cd8418b57
# Mon, 22 May 2017 16:23:15 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 22 May 2017 16:23:30 GMT
ENV NICK=
# Mon, 22 May 2017 16:23:31 GMT
ENV SERVER=
# Mon, 22 May 2017 16:23:32 GMT
ENV LISTEN=3333
# Mon, 22 May 2017 16:23:33 GMT
ENV OWNER=
# Mon, 22 May 2017 16:23:33 GMT
ENV USERFILE=eggdrop.user
# Mon, 22 May 2017 16:23:54 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 22 May 2017 16:23:55 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 22 May 2017 16:23:56 GMT
EXPOSE 3333/tcp
# Mon, 22 May 2017 16:23:57 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Mon, 22 May 2017 16:24:18 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 22 May 2017 16:24:19 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 22 May 2017 16:24:19 GMT
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
	-	`sha256:ed4c2db6644d3e3047a8649a4e640cfc9efcbac4cbd84a0f13e3d7664c66b0ce`  
		Last Modified: Mon, 22 May 2017 16:25:07 GMT  
		Size: 11.4 MB (11409694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7060baa6256cb80450747f2f012314a68f7db9fbb8580a5f2405bdd2c809e0ca`  
		Last Modified: Mon, 22 May 2017 16:25:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67af99f31504055b43c1b9b4c9821e59bcd685ac3cb95e926bc9c3559363b6`  
		Last Modified: Mon, 22 May 2017 16:25:05 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
