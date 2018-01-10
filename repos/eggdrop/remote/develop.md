## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:da45e1ee517f8afb748edb7ab13890a6e293ec45cc2386c43558d862abf6df2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:e5cc2ec8bfa767bf5155552c915071caf36634f1b1d50dd0c831cfc77cfc17cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14532680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75beea8aed62b168a67af197c0cf002531128a364c20f4107e757b9f77a89024`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:26:34 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:26:35 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:26:39 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:26:39 GMT
ENV EGGDROP_SHA256=880aef0a11442a8f972f7267079abcceff4ce37a0ce3054141359470c0585228
# Wed, 10 Jan 2018 03:26:39 GMT
ENV EGGDROP_COMMIT=5d9da79dd6b8b9a8f392701dbdd343e8dae73644
# Wed, 10 Jan 2018 03:26:44 GMT
RUN apk --update add --no-cache tcl bash openssl
# Wed, 10 Jan 2018 03:27:54 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 10 Jan 2018 03:27:54 GMT
ENV NICK=
# Wed, 10 Jan 2018 03:27:55 GMT
ENV SERVER=
# Wed, 10 Jan 2018 03:27:55 GMT
ENV LISTEN=3333
# Wed, 10 Jan 2018 03:27:55 GMT
ENV OWNER=
# Wed, 10 Jan 2018 03:27:56 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 Jan 2018 03:27:56 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 Jan 2018 03:27:57 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 Jan 2018 03:27:57 GMT
EXPOSE 3333/tcp
# Wed, 10 Jan 2018 03:27:58 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 10 Jan 2018 03:27:58 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 Jan 2018 03:27:59 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 Jan 2018 03:27:59 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ba123cfc282ff211883dd02fe606444e93fad920f584fa61b071f6faa51ac0`  
		Last Modified: Wed, 10 Jan 2018 03:41:22 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffe5c09fddba32b1b324542a826e6d66423e52402f1ac779f81ee08bc3c3e56`  
		Last Modified: Wed, 10 Jan 2018 03:41:19 GMT  
		Size: 7.8 KB (7826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd6f23dcc7c36347479b66f6692086c0dc05d78bba182cf0e9a3cf3703b961`  
		Last Modified: Wed, 10 Jan 2018 03:41:21 GMT  
		Size: 5.3 MB (5250386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa6d050b40415768bb4e69d6dd9684f6fe4555d4e12c9190882689bb7b04f44`  
		Last Modified: Wed, 10 Jan 2018 03:41:23 GMT  
		Size: 7.3 MB (7300489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b36d79bfcdbc5a5bfa89ae71cbca63ec36f48fcb495f63513c7f7e8b4cbc49`  
		Last Modified: Wed, 10 Jan 2018 03:41:20 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67679a72036203b39527039a348010724866e521fb063e2292b7f883d6f73f30`  
		Last Modified: Wed, 10 Jan 2018 03:41:20 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
