<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.1`](#eggdrop181)
-	[`eggdrop:stable`](#eggdropstable)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:0ec55b022c97a5c008798fae1fbc5fede4bee091a7d540c68bed8063e00d9285
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13389055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd00de683d6a53a4ffda475753a80a5b78b15f6088aa93e3d973c414f440ef4`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:22:43 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 May 2017 21:22:45 GMT
RUN adduser -S eggdrop
# Wed, 10 May 2017 21:22:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 22 May 2017 16:22:20 GMT
ENV EGGDROP_SHA256=5a9d2376812b0197ed5631968ae6dd552c644b0db25e3672bb8fe64a495f3b14
# Mon, 22 May 2017 16:22:21 GMT
ENV EGGDROP_COMMIT=7806f41d67a883497c37033486b18f1cd8418b57
# Mon, 22 May 2017 16:23:15 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Mon, 22 May 2017 16:23:30 GMT
ENV NICK=
# Mon, 22 May 2017 16:23:31 GMT
ENV SERVER=
# Mon, 22 May 2017 16:23:32 GMT
ENV LISTEN=3333
# Mon, 22 May 2017 16:23:33 GMT
ENV OWNER=
# Mon, 22 May 2017 16:23:33 GMT
ENV USERFILE=eggdrop.user
# Mon, 22 May 2017 16:23:54 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 22 May 2017 16:23:55 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 22 May 2017 16:23:56 GMT
EXPOSE 3333/tcp
# Mon, 22 May 2017 16:23:57 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Mon, 22 May 2017 16:24:18 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 22 May 2017 16:24:19 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 22 May 2017 16:24:19 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6571b6efbe0fd52dc15f46b8f71fab8ca38146025bf7cda67b5644642f7ecf`  
		Last Modified: Thu, 11 May 2017 15:34:44 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39755bdb43a56022f0086d5221c0899ed016fe2b423b7481a686cd1bdac2ffe0`  
		Last Modified: Thu, 11 May 2017 15:34:44 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4c2db6644d3e3047a8649a4e640cfc9efcbac4cbd84a0f13e3d7664c66b0ce`  
		Last Modified: Mon, 22 May 2017 16:25:07 GMT  
		Size: 11.4 MB (11409694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7060baa6256cb80450747f2f012314a68f7db9fbb8580a5f2405bdd2c809e0ca`  
		Last Modified: Mon, 22 May 2017 16:25:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67af99f31504055b43c1b9b4c9821e59bcd685ac3cb95e926bc9c3559363b6`  
		Last Modified: Mon, 22 May 2017 16:25:05 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:bcf307523e85a3a4bdcb3725aa9be75a431dab2b642873389d1685d90a37c2ed
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

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

## `eggdrop:1.8.1`

```console
$ docker pull eggdrop@sha256:bcf307523e85a3a4bdcb3725aa9be75a431dab2b642873389d1685d90a37c2ed
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.1` - linux; amd64

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

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:bcf307523e85a3a4bdcb3725aa9be75a431dab2b642873389d1685d90a37c2ed
```

-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

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

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:16c4f2ded3adeecb12d95acae7c8374994743fa718855e3946ea847521679778
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6007340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44e673b3eb3906a544a82878d352659214a5932c3ecf34e6dd1b452906153fd`
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
# Wed, 10 May 2017 21:21:02 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Wed, 10 May 2017 21:21:03 GMT
ENV NICK=
# Wed, 10 May 2017 21:21:03 GMT
ENV SERVER=
# Wed, 10 May 2017 21:21:04 GMT
ENV LISTEN=3333
# Wed, 10 May 2017 21:21:05 GMT
ENV OWNER=
# Wed, 10 May 2017 21:21:06 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 May 2017 21:21:07 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 May 2017 21:21:07 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 May 2017 21:21:08 GMT
EXPOSE 3333/tcp
# Wed, 10 May 2017 21:21:09 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Wed, 10 May 2017 21:21:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 May 2017 21:21:11 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 May 2017 21:21:12 GMT
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
	-	`sha256:0e2d21dc9649be702da65d9a5c7b9d98bea037566feff81889f0f58ab0997d52`  
		Last Modified: Thu, 11 May 2017 15:32:25 GMT  
		Size: 3.6 MB (3612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c50d6e12efe37a92bbce9f54ca5e219835b9ec6dd900641c62de25aaa4834c`  
		Last Modified: Thu, 11 May 2017 15:32:23 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7c6b9278863f7723fada4be9410e4c81d5a1811264f730ef0ee9596d1b0e8e`  
		Last Modified: Thu, 11 May 2017 15:32:22 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:16c4f2ded3adeecb12d95acae7c8374994743fa718855e3946ea847521679778
```

-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6007340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44e673b3eb3906a544a82878d352659214a5932c3ecf34e6dd1b452906153fd`
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
# Wed, 10 May 2017 21:21:02 GMT
RUN apk add --no-cache tcl tcl-dev wget make tar gpgme bash build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget make tar gpgme build-base
# Wed, 10 May 2017 21:21:03 GMT
ENV NICK=
# Wed, 10 May 2017 21:21:03 GMT
ENV SERVER=
# Wed, 10 May 2017 21:21:04 GMT
ENV LISTEN=3333
# Wed, 10 May 2017 21:21:05 GMT
ENV OWNER=
# Wed, 10 May 2017 21:21:06 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 May 2017 21:21:07 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 May 2017 21:21:07 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 May 2017 21:21:08 GMT
EXPOSE 3333/tcp
# Wed, 10 May 2017 21:21:09 GMT
COPY file:655c2fd77a7cf08b712ee33a15d7dbd177b8489a67560628236c68c2cc66aa58 in /home/eggdrop/eggdrop 
# Wed, 10 May 2017 21:21:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 May 2017 21:21:11 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 May 2017 21:21:12 GMT
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
	-	`sha256:0e2d21dc9649be702da65d9a5c7b9d98bea037566feff81889f0f58ab0997d52`  
		Last Modified: Thu, 11 May 2017 15:32:25 GMT  
		Size: 3.6 MB (3612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c50d6e12efe37a92bbce9f54ca5e219835b9ec6dd900641c62de25aaa4834c`  
		Last Modified: Thu, 11 May 2017 15:32:23 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7c6b9278863f7723fada4be9410e4c81d5a1811264f730ef0ee9596d1b0e8e`  
		Last Modified: Thu, 11 May 2017 15:32:22 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
