## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:99ad8e66a23cd2c4e36f9cad73e8faf897ac71388e9e2c2d11040eada5a68657
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11806495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2492fa1033f6f22d838e5c9f71bf138834919f9246184e706926178d2d494b`
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
# Tue, 06 Dec 2016 18:19:27 GMT
ENV EGGDROP_SHA256=89bd9380b7d6b0bfd93921845d83e32b2258155b961a16b30469ca8f638d2a03
# Tue, 06 Dec 2016 18:19:27 GMT
ENV EGGDROP_COMMIT=241e5692f9df2497860c9df037c60fb4c0689874
# Tue, 06 Dec 2016 18:20:12 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 06 Dec 2016 18:20:13 GMT
ENV NICK=
# Tue, 06 Dec 2016 18:20:13 GMT
ENV SERVER=
# Tue, 06 Dec 2016 18:20:13 GMT
ENV LISTEN=3333
# Tue, 06 Dec 2016 18:20:14 GMT
ENV OWNER=
# Tue, 06 Dec 2016 18:20:14 GMT
ENV USERFILE=eggdrop.user
# Tue, 06 Dec 2016 18:20:14 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 06 Dec 2016 18:20:15 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 06 Dec 2016 18:20:15 GMT
EXPOSE 3333/tcp
# Tue, 06 Dec 2016 18:20:15 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Tue, 06 Dec 2016 18:20:16 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 06 Dec 2016 18:20:16 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 06 Dec 2016 18:20:16 GMT
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
	-	`sha256:ffd7aeb53198ab91fa26abe63a01f992b77b59b0abcbfd4b26de2c1e20edd892`  
		Last Modified: Tue, 06 Dec 2016 18:21:19 GMT  
		Size: 9.5 MB (9482084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0c2a66b463c0ac207502b9ceae7768aa4493f6e0e3ac980486038d9148e463`  
		Last Modified: Tue, 06 Dec 2016 18:21:15 GMT  
		Size: 1.6 KB (1558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568cc0d5cf4ab1ce56e3e64053ce85356c4436e9d8278c50f8f09c88f7ef01a7`  
		Last Modified: Tue, 06 Dec 2016 18:21:15 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
