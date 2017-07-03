## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:c6cd29b4f345353c84782c31e203f293739898af289a694cd90e486e35be9882
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13390063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21fb9983df49e9a65a3e6f29a71253ff75e336cf919d4e8a3ff0b7edb9a043a6`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:10:07 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Jun 2017 21:10:09 GMT
RUN adduser -S eggdrop
# Tue, 27 Jun 2017 21:10:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Jun 2017 21:11:02 GMT
ENV EGGDROP_SHA256=fa120ed6739b9e63290e3f95392210f8bcfd0f7e514b07a05b559063a3e8f89f
# Tue, 27 Jun 2017 21:11:03 GMT
ENV EGGDROP_COMMIT=ec5aca979d6b7f3d4582640aa5fc175b2f7869bb
# Tue, 27 Jun 2017 21:11:58 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 27 Jun 2017 21:11:59 GMT
ENV NICK=
# Tue, 27 Jun 2017 21:12:00 GMT
ENV SERVER=
# Tue, 27 Jun 2017 21:12:01 GMT
ENV LISTEN=3333
# Tue, 27 Jun 2017 21:12:02 GMT
ENV OWNER=
# Tue, 27 Jun 2017 21:12:03 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Jun 2017 21:12:04 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Jun 2017 21:12:05 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Jun 2017 21:12:06 GMT
EXPOSE 3333/tcp
# Mon, 03 Jul 2017 17:50:28 GMT
COPY file:1e50d67589676deeb29d62e25f50ac21d73da698052abd391de01f06e27c5964 in /home/eggdrop/eggdrop 
# Mon, 03 Jul 2017 17:50:30 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 03 Jul 2017 17:50:30 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 03 Jul 2017 17:50:31 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32e4a65f3ffa8b2f64ffdb82491dd10a9acd7aac1960956a74bad2483953a6c`  
		Last Modified: Thu, 29 Jun 2017 20:38:15 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93eac8f9ae6f107f767faac9ed278a248b45d29dcd82c4960fd6e3a1b64adf19`  
		Last Modified: Thu, 29 Jun 2017 20:38:16 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2506ff8f99238641d4af817414c9ca42378040f6ca6aac9ed064afb45d839dc3`  
		Last Modified: Thu, 29 Jun 2017 20:38:20 GMT  
		Size: 11.4 MB (11408253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f200f549369e86bb6f3280e3f9f2d0538e1d313229db296a806172a0a217b12`  
		Last Modified: Mon, 03 Jul 2017 17:52:02 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9747e037c85cc447b1804759a354d4a98907fa5d369523f07a502602c69abd8`  
		Last Modified: Mon, 03 Jul 2017 17:52:02 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
