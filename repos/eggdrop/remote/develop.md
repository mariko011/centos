## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:0d9ae1d788cdc73bd76403a21ab61a09b6037b3d801e44b2bde9abe9a49d4d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:0d62641cca48f3a7e93145de1fdf3071926572facbb1d4eceedc1881c7baa7f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13388797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df71508f5fa54d4bd13ad9398536bb4f638aa752d5841e5d9867d286d42af1d3`
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
# Wed, 13 Sep 2017 18:03:38 GMT
ENV EGGDROP_SHA256=528faa09f8bb10d358b7a0c0d953846cbadd10c73fd8dc75475d1dc3679d7674
# Wed, 13 Sep 2017 18:03:38 GMT
ENV EGGDROP_COMMIT=0d6d8d5c792ebc1f2700ee7ee1209feb7741973b
# Wed, 13 Sep 2017 18:04:26 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 13 Sep 2017 18:04:26 GMT
ENV NICK=
# Wed, 13 Sep 2017 18:04:26 GMT
ENV SERVER=
# Wed, 13 Sep 2017 18:04:26 GMT
ENV LISTEN=3333
# Wed, 13 Sep 2017 18:04:26 GMT
ENV OWNER=
# Wed, 13 Sep 2017 18:04:26 GMT
ENV USERFILE=eggdrop.user
# Wed, 13 Sep 2017 18:04:27 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 13 Sep 2017 18:04:27 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 13 Sep 2017 18:04:27 GMT
EXPOSE 3333/tcp
# Wed, 13 Sep 2017 18:04:27 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 13 Sep 2017 18:04:27 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 13 Sep 2017 18:04:28 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 13 Sep 2017 18:04:28 GMT
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
	-	`sha256:b3558287c64d8298d664758832f5b675fb40335650126b4e034c227cb47cda86`  
		Last Modified: Wed, 13 Sep 2017 18:06:31 GMT  
		Size: 11.4 MB (11406875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59798c472b729f193e91d878371779fa737907d8a8f2621610ad71acdfd216f3`  
		Last Modified: Wed, 13 Sep 2017 18:06:29 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9510f8911d42b872d1ba13805b13f95494b769f6cce5ba7fcf5d97e18c298117`  
		Last Modified: Wed, 13 Sep 2017 18:06:28 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
