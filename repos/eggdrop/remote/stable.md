## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:bcf307523e85a3a4bdcb3725aa9be75a431dab2b642873389d1685d90a37c2ed
```

-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7373377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3f4fee3263e8de88feb2ab67b3a937bcdf78e5d5eb76ec7b5231ac2cbeb81d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:20:37 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 May 2017 21:20:39 GMT
RUN adduser -S eggdrop
# Wed, 10 May 2017 21:20:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 21:22:14 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.1.tar.gz.asc eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz.asc   && tar -zxvf eggdrop-1.8.1.tar.gz   && rm eggdrop-1.8.1.tar.gz   && ( cd eggdrop-1.8.1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 10 May 2017 21:22:14 GMT
ENV NICK=
# Wed, 10 May 2017 21:22:15 GMT
ENV SERVER=
# Wed, 10 May 2017 21:22:16 GMT
ENV LISTEN=3333
# Wed, 10 May 2017 21:22:17 GMT
ENV OWNER=
# Wed, 10 May 2017 21:22:17 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 May 2017 21:22:18 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 May 2017 21:22:19 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 May 2017 21:22:20 GMT
EXPOSE 3333/tcp
# Wed, 10 May 2017 21:22:21 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Wed, 10 May 2017 21:22:22 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 May 2017 21:22:22 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 May 2017 21:22:23 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89b485e334dd30b7bc1e3a5405d669519652e242c545df55b27b3a7ad4416ea`  
		Last Modified: Thu, 11 May 2017 15:32:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c3aff26fe70bd408c30ebaa59b796eea9e4cbbd5a89e9c5f3c339abedfeb1c`  
		Last Modified: Thu, 11 May 2017 15:32:22 GMT  
		Size: 8.0 KB (8008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0502e00937cd05451a43262c2caec65431a8ef6521d995a7bd3dd38f9fabf7`  
		Last Modified: Thu, 11 May 2017 15:33:15 GMT  
		Size: 5.0 MB (4978621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8662d38f6220441fafc73fccc6ba9efd4bf9197af4337c9ac55796768471c3`  
		Last Modified: Thu, 11 May 2017 15:33:12 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e505f9d2fd54da89b6a49e919d85d7b82fe1cbc580f47bf207e9f215378fd2ee`  
		Last Modified: Thu, 11 May 2017 15:33:12 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
