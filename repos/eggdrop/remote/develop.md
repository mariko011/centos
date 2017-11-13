## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:1418903931349d1b086c2246caa53437e81a6ac9912a4d0084640e5a9157fa81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:a0338355a08d61d90691a723493e7fa81c964ff2a2c277fb30313257b1fe9b66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14531510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c271cd77db50d1333a34ea9c23ebfe48a11966e7ab9e4b2c3b61ecc5e9ecbfb`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:51:21 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Sat, 04 Nov 2017 10:51:21 GMT
RUN adduser -S eggdrop
# Sat, 04 Nov 2017 10:51:25 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 13 Nov 2017 17:11:31 GMT
ENV EGGDROP_SHA256=880aef0a11442a8f972f7267079abcceff4ce37a0ce3054141359470c0585228
# Mon, 13 Nov 2017 17:11:31 GMT
ENV EGGDROP_COMMIT=5d9da79dd6b8b9a8f392701dbdd343e8dae73644
# Mon, 13 Nov 2017 17:11:36 GMT
RUN apk --update add --no-cache tcl bash openssl
# Mon, 13 Nov 2017 17:12:29 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Mon, 13 Nov 2017 17:12:30 GMT
ENV NICK=
# Mon, 13 Nov 2017 17:12:30 GMT
ENV SERVER=
# Mon, 13 Nov 2017 17:12:30 GMT
ENV LISTEN=3333
# Mon, 13 Nov 2017 17:12:30 GMT
ENV OWNER=
# Mon, 13 Nov 2017 17:12:30 GMT
ENV USERFILE=eggdrop.user
# Mon, 13 Nov 2017 17:12:30 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 13 Nov 2017 17:12:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 13 Nov 2017 17:12:31 GMT
EXPOSE 3333/tcp
# Mon, 13 Nov 2017 17:12:32 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Mon, 13 Nov 2017 17:12:32 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 13 Nov 2017 17:12:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 13 Nov 2017 17:12:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814e05d70eb3d37c00649a6e4ba13c2c86f1e6cb9185284aceb76e8aa39f695b`  
		Last Modified: Sat, 04 Nov 2017 10:55:15 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aba588b42ac868ff6ebae12ee0e941256bced60042f33de92dad22226e05057`  
		Last Modified: Sat, 04 Nov 2017 10:55:13 GMT  
		Size: 7.8 KB (7818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f79760b9f12536dcf00e12b9880e107a52ffd627f688794495bcf8c39c7527`  
		Last Modified: Mon, 13 Nov 2017 17:12:56 GMT  
		Size: 5.2 MB (5249198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b340f41fdd16d95fb920c906030b75ee55b4b190b534d259926ae606ff22d1`  
		Last Modified: Mon, 13 Nov 2017 17:12:56 GMT  
		Size: 7.3 MB (7300414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc886d5a1c61ad5ef837e7a2b4d4639ac562b788f830890f7ecf97b5336c5dec`  
		Last Modified: Mon, 13 Nov 2017 17:12:53 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d14519236cfec1c3a2c091dbbfe0bddc0467b26befa28bc291d7cd561f32597`  
		Last Modified: Mon, 13 Nov 2017 17:12:53 GMT  
		Size: 705.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
