## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:62b96a9880a52986ce3655ad5a97db6e7d504ca21b3d8407b260f1173f4076e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:e0ea630ee8641bd660747ebbd21ea6060ac5d4991fe6154becd55812f132e155
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14505251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09c5515c9305924b90ba2b64ade30ce6f74a4e59cfdac07902b45dec199209a`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 18:03:32 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 13 Sep 2017 18:03:33 GMT
RUN adduser -S eggdrop
# Wed, 13 Sep 2017 18:03:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 29 Sep 2017 18:04:34 GMT
ENV EGGDROP_SHA256=6a9b16413a9afa4e7f79b2c26a7ad03d181dc9cdb096e9e321725f1ae3abc5a6
# Fri, 29 Sep 2017 18:04:34 GMT
ENV EGGDROP_COMMIT=6306685b1e6f67211f6106e9c5706063ce5433d6
# Tue, 03 Oct 2017 00:03:18 GMT
RUN apk --update add --no-cache tcl bash openssl
# Tue, 03 Oct 2017 00:04:07 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 03 Oct 2017 00:04:10 GMT
ENV NICK=
# Tue, 03 Oct 2017 00:04:10 GMT
ENV SERVER=
# Tue, 03 Oct 2017 00:04:10 GMT
ENV LISTEN=3333
# Tue, 03 Oct 2017 00:04:10 GMT
ENV OWNER=
# Tue, 03 Oct 2017 00:04:11 GMT
ENV USERFILE=eggdrop.user
# Tue, 03 Oct 2017 00:04:11 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 03 Oct 2017 00:04:15 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 03 Oct 2017 00:04:15 GMT
EXPOSE 3333/tcp
# Tue, 03 Oct 2017 00:04:15 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 03 Oct 2017 00:04:16 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 03 Oct 2017 00:04:16 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 03 Oct 2017 00:04:16 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8cfddfc8981b97cfb80611dff028672ff268afdf649a09cde754e817d1314c`  
		Last Modified: Wed, 13 Sep 2017 18:06:30 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffd8cd20db60b836bc706d0d77ed92ff42f60af63d563c2a72802b3caf2148c`  
		Last Modified: Wed, 13 Sep 2017 18:06:30 GMT  
		Size: 7.8 KB (7819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4684b053eb66273d4d4fe1ba6d913a1484bf9a78ec821d426d8b7c58d5ce756`  
		Last Modified: Tue, 03 Oct 2017 00:06:42 GMT  
		Size: 5.2 MB (5229501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44b596b22674983da0c2fde463959bcf05d32f9b1672ff3d03816eded444745`  
		Last Modified: Tue, 03 Oct 2017 00:06:42 GMT  
		Size: 7.3 MB (7293808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0d463db7efb81dab8fd2899db2862eff6a0606b2e02aab2af72b727fbfb2b8`  
		Last Modified: Tue, 03 Oct 2017 00:06:40 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f2403c6107385b7f7e030adefed8ac4b438adae13fce04d30a3f3afa0822a5`  
		Last Modified: Tue, 03 Oct 2017 00:06:40 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
