## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:013878e159c2f478af82aaa0122376987854e5f8cb89cddc21cd44e925d563a9
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13389992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063a041e2b2cb36d94d68d6c5057aee0a882a4f296b3a6133082b4baa10aac6d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 19:34:27 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Mon, 19 Jun 2017 19:34:30 GMT
RUN adduser -S eggdrop
# Mon, 19 Jun 2017 19:34:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 19:34:58 GMT
ENV EGGDROP_SHA256=fa120ed6739b9e63290e3f95392210f8bcfd0f7e514b07a05b559063a3e8f89f
# Mon, 19 Jun 2017 19:34:59 GMT
ENV EGGDROP_COMMIT=ec5aca979d6b7f3d4582640aa5fc175b2f7869bb
# Mon, 19 Jun 2017 19:35:56 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 19 Jun 2017 19:38:05 GMT
ENV NICK=
# Mon, 19 Jun 2017 19:38:06 GMT
ENV SERVER=
# Mon, 19 Jun 2017 19:38:07 GMT
ENV LISTEN=3333
# Mon, 19 Jun 2017 19:38:08 GMT
ENV OWNER=
# Mon, 19 Jun 2017 19:38:09 GMT
ENV USERFILE=eggdrop.user
# Mon, 19 Jun 2017 19:38:10 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 19 Jun 2017 19:38:11 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 19 Jun 2017 19:38:11 GMT
EXPOSE 3333/tcp
# Mon, 19 Jun 2017 19:38:13 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Mon, 19 Jun 2017 19:38:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 19 Jun 2017 19:38:15 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 19 Jun 2017 19:38:17 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428856c08444a18d9f31f8e48e75d917d7cb6488a8c419380674b962ca752736`  
		Last Modified: Sat, 24 Jun 2017 08:24:18 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5767f7042d945b0a4da1ec1a27ce7bb8c90548e6ac54dae9304464093ff04e2`  
		Last Modified: Sat, 24 Jun 2017 08:24:18 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98950979d718172c441bd637ab1d572aa38d9c7793a68eaa40449a793818b3d7`  
		Last Modified: Sat, 24 Jun 2017 08:24:22 GMT  
		Size: 11.4 MB (11408224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f647be9049346385be77ba5d559a704846df469d2c88c5bf0e149ee9ed9ddf3`  
		Last Modified: Sat, 24 Jun 2017 08:24:19 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702335c38b6fc99a51551cea59b9fb28362036c6bce61a3c4c61919f770d2b03`  
		Last Modified: Sat, 24 Jun 2017 08:24:18 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
