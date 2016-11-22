## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:f386309e8233385f486b5f6d5e8a0428457b95e52eb46efac473184c8ed764dd
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8280308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:433479cb7c4bc0b92ff063c2e14455accd37fce357b4e4eaa3300bd5184964db`
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
# Tue, 22 Nov 2016 17:23:01 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure --with-tclinc=/usr/include/tcl8.6/tcl.h --with-tcllib=/usr/lib/x86_64-linux-gnu/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Tue, 22 Nov 2016 17:23:02 GMT
ENV NICK=
# Tue, 22 Nov 2016 17:23:02 GMT
ENV SERVER=
# Tue, 22 Nov 2016 17:23:02 GMT
ENV LISTEN=3333
# Tue, 22 Nov 2016 17:23:03 GMT
ENV OWNER=
# Tue, 22 Nov 2016 17:23:03 GMT
ENV USERFILE=eggdrop.user
# Tue, 22 Nov 2016 17:23:03 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 22 Nov 2016 17:23:04 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 22 Nov 2016 17:23:04 GMT
EXPOSE 3333/tcp
# Tue, 22 Nov 2016 17:23:04 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 22 Nov 2016 17:23:05 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 22 Nov 2016 17:23:05 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 22 Nov 2016 17:23:05 GMT
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
	-	`sha256:53b93e05fb1bc18b3ed5446690bd28d91bc6b92ec1f75c495a5f56145d17af83`  
		Last Modified: Tue, 22 Nov 2016 17:24:02 GMT  
		Size: 6.0 MB (5955897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dbd7c1d48e3c5b281ea09a8e00fc19d2f7e07b2ca32fd659b67ee7c25287b4`  
		Last Modified: Tue, 22 Nov 2016 17:24:03 GMT  
		Size: 1.6 KB (1557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27be3b85b096c52fb8b9e578cb3436fb832cd7a8ce01068c50e97783ffa0b3c4`  
		Last Modified: Tue, 22 Nov 2016 17:24:00 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
