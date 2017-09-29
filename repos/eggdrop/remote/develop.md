## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:4d40a8df427d275894985f4bc473d628d9e226b858eca952a6b6aa1f1f241e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:37cb335479813b7dede444e75079a52f8ed5b3db1c0843b7873807484129dd39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8432751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53ac2807dfde9a79f800fe8d947126f2950141c16f5357f5bb0c6c4834d4637`
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
# Fri, 29 Sep 2017 18:05:16 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base
# Fri, 29 Sep 2017 18:05:16 GMT
ENV NICK=
# Fri, 29 Sep 2017 18:05:16 GMT
ENV SERVER=
# Fri, 29 Sep 2017 18:05:16 GMT
ENV LISTEN=3333
# Fri, 29 Sep 2017 18:05:20 GMT
ENV OWNER=
# Fri, 29 Sep 2017 18:05:20 GMT
ENV USERFILE=eggdrop.user
# Fri, 29 Sep 2017 18:05:21 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 29 Sep 2017 18:05:21 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 29 Sep 2017 18:05:21 GMT
EXPOSE 3333/tcp
# Fri, 29 Sep 2017 18:05:21 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 29 Sep 2017 18:05:25 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 29 Sep 2017 18:05:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 29 Sep 2017 18:05:26 GMT
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
	-	`sha256:ecf35c5449479737e89e976458db07223853088bc9f83452cecd3a560a0b0e76`  
		Last Modified: Fri, 29 Sep 2017 18:05:38 GMT  
		Size: 6.5 MB (6450810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd4fb62d9ed5327ebb57afa5da3c7b94d77f51f6b4340545d3e1d8a88aa342c`  
		Last Modified: Fri, 29 Sep 2017 18:05:36 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a8468f10e900c420b77227e48001c7f3e04d0ee768627ae7a83156ab67ff7a`  
		Last Modified: Fri, 29 Sep 2017 18:05:37 GMT  
		Size: 709.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
