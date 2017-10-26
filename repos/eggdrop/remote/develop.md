## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:95428a8a8ac089b875151a88215c9cfec0ccca495b4e3eb744ca886a0f6370a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:a803b3cac8f60bd88c5922c6b0ef972cf20a10edae3a234a8ee054d956fab9c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14523333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcacaf77a2c028d49b5d5b3c86d3099d5c37b5e077ffd7b2931379de0b1917c6`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:00:02 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 26 Oct 2017 00:00:03 GMT
RUN adduser -S eggdrop
# Thu, 26 Oct 2017 00:00:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 00:00:10 GMT
ENV EGGDROP_SHA256=6a9b16413a9afa4e7f79b2c26a7ad03d181dc9cdb096e9e321725f1ae3abc5a6
# Thu, 26 Oct 2017 00:00:10 GMT
ENV EGGDROP_COMMIT=6306685b1e6f67211f6106e9c5706063ce5433d6
# Thu, 26 Oct 2017 00:00:16 GMT
RUN apk --update add --no-cache tcl bash openssl
# Thu, 26 Oct 2017 00:01:08 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 26 Oct 2017 00:01:10 GMT
ENV NICK=
# Thu, 26 Oct 2017 00:01:10 GMT
ENV SERVER=
# Thu, 26 Oct 2017 00:01:10 GMT
ENV LISTEN=3333
# Thu, 26 Oct 2017 00:01:11 GMT
ENV OWNER=
# Thu, 26 Oct 2017 00:01:11 GMT
ENV USERFILE=eggdrop.user
# Thu, 26 Oct 2017 00:01:11 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 26 Oct 2017 00:01:11 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 26 Oct 2017 00:01:11 GMT
EXPOSE 3333/tcp
# Thu, 26 Oct 2017 00:01:12 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 26 Oct 2017 00:01:12 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 26 Oct 2017 00:01:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 26 Oct 2017 00:01:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043c88d3645132bef3a3aab723f4c440ec6b820ec9622a2964f7466b21ae79c2`  
		Last Modified: Thu, 26 Oct 2017 00:05:08 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbfd7ca6389ab6655f5b76b93801e457c350128b835c2b89b098647e0e57a77`  
		Last Modified: Thu, 26 Oct 2017 00:05:05 GMT  
		Size: 7.8 KB (7820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ba11c56d3f3c3c1de2b81384ed683b07b3fbb89345ade683a1a925624b7b2c`  
		Last Modified: Thu, 26 Oct 2017 00:05:09 GMT  
		Size: 5.2 MB (5246691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d875b24f3c84bf29596a5a48b93fc4cdc24fe92e3e3ad3a07192583689944dd`  
		Last Modified: Thu, 26 Oct 2017 00:05:07 GMT  
		Size: 7.3 MB (7294751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8cf931d653dd37d4d74e6ebc5f0badadcc7a7f7ad6ad8da4d28ea0a5d4f8c59`  
		Last Modified: Thu, 26 Oct 2017 00:05:06 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9ea9a9cff5c749a1c2ca8125a9844e02c577421e912ce118b1660c33e335bc`  
		Last Modified: Thu, 26 Oct 2017 00:05:06 GMT  
		Size: 701.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
