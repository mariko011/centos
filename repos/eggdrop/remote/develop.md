## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:bc444104f6dd32253ee9386af34d45d182d36d913c7e07ed67ef3146a3b30021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:d13f65cf4fb7af57718540d76394a9b2064ac896a0980e95d2c3bac8075881b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14522999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:262a152195fe388ddc3f9c1664f57452c29ed61ba2ed679227f15753cfa93d29`
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
# Sat, 04 Nov 2017 10:51:25 GMT
ENV EGGDROP_SHA256=6a9b16413a9afa4e7f79b2c26a7ad03d181dc9cdb096e9e321725f1ae3abc5a6
# Sat, 04 Nov 2017 10:51:25 GMT
ENV EGGDROP_COMMIT=6306685b1e6f67211f6106e9c5706063ce5433d6
# Sat, 04 Nov 2017 10:51:32 GMT
RUN apk --update add --no-cache tcl bash openssl
# Sat, 04 Nov 2017 10:52:36 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 04 Nov 2017 10:52:36 GMT
ENV NICK=
# Sat, 04 Nov 2017 10:52:36 GMT
ENV SERVER=
# Sat, 04 Nov 2017 10:52:36 GMT
ENV LISTEN=3333
# Sat, 04 Nov 2017 10:52:37 GMT
ENV OWNER=
# Sat, 04 Nov 2017 10:52:37 GMT
ENV USERFILE=eggdrop.user
# Sat, 04 Nov 2017 10:52:37 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 04 Nov 2017 10:52:37 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 04 Nov 2017 10:52:38 GMT
EXPOSE 3333/tcp
# Sat, 04 Nov 2017 10:52:38 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Sat, 04 Nov 2017 10:52:39 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 04 Nov 2017 10:52:39 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 04 Nov 2017 10:52:39 GMT
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
	-	`sha256:49f67a835541ee2aaa3481b4e2b243a6c8b78760c88f41beacd9ec000683bb75`  
		Last Modified: Sat, 04 Nov 2017 10:55:14 GMT  
		Size: 5.2 MB (5246373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b3b153cc5606a32ffbef81cb4cd1ed2587d94dbb22421eebf16eada047909a`  
		Last Modified: Sat, 04 Nov 2017 10:55:14 GMT  
		Size: 7.3 MB (7294735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d2be6529722b384bba5d4d3358d1f4e1f50468b61a8f86767bb9005a042ff6`  
		Last Modified: Sat, 04 Nov 2017 10:55:13 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631018cf20ba61d4ca084f95b9b7fb4019fb305d88fe8e8429ed5e08a163097`  
		Last Modified: Sat, 04 Nov 2017 10:55:18 GMT  
		Size: 701.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
