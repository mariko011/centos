## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:27705f13d7489328f769f0a02f7627c6ae3353568d36691065fd32af998698cd
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11806476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e19b2cb5cb7ebf0aee46082049e2167d9e5fa6b668f6d4e3ece015818e8d7a`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:12:44 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 18 Oct 2016 23:12:45 GMT
RUN adduser -S eggdrop
# Tue, 18 Oct 2016 23:12:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 22 Nov 2016 17:22:24 GMT
ENV EGGDROP_SHA256=e1476fba407fd730d36336b873b310e69331f5962e7332045099867d100aaee5
# Tue, 22 Nov 2016 17:22:24 GMT
ENV EGGDROP_COMMIT=283e166af739ec6f03073159f9d0b9ef4a87dfe7
# Mon, 28 Nov 2016 18:09:04 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 28 Nov 2016 18:09:05 GMT
ENV NICK=
# Mon, 28 Nov 2016 18:09:05 GMT
ENV SERVER=
# Mon, 28 Nov 2016 18:09:05 GMT
ENV LISTEN=3333
# Mon, 28 Nov 2016 18:09:06 GMT
ENV OWNER=
# Mon, 28 Nov 2016 18:09:06 GMT
ENV USERFILE=eggdrop.user
# Mon, 28 Nov 2016 18:09:06 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 28 Nov 2016 18:09:06 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 28 Nov 2016 18:09:07 GMT
EXPOSE 3333/tcp
# Mon, 28 Nov 2016 18:09:07 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Mon, 28 Nov 2016 18:09:08 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 28 Nov 2016 18:09:08 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 28 Nov 2016 18:09:08 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b861641dff653ecbefedada65f0bf6cf61d9d50bf22961fb8c9f5109e75ac1d`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da32df17b38a3fe46cfcb562e71a4d0d76ceb7e9da17199a80e3111ed2b7e28`  
		Last Modified: Tue, 18 Oct 2016 23:13:24 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7430150bb6ff91ed89417ded84d7886af70d8ef6a474bf2bc20eea80341dfa38`  
		Last Modified: Mon, 28 Nov 2016 18:10:10 GMT  
		Size: 9.5 MB (9482072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20f1f3949924cb4bd51c4d4823a95fdf2d4910b8f4219a247729dc89b0579e4`  
		Last Modified: Mon, 28 Nov 2016 18:10:07 GMT  
		Size: 1.6 KB (1553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335fb6b5e997279b79f9e308003f2aeafb1a0296bda186f24e58bb45a7c8e409`  
		Last Modified: Mon, 28 Nov 2016 18:10:08 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
