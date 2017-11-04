## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:1e1a91e8e26ec60e66b6cdc101fc53c6944a5cb7186ff10dcbd904e72747c21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:4972ad509908ff20f59b71cbb9fb09eb298c166a996d4950b202b99535d5ae53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd500952ac2249eeccf6f46969563aa1ee429a24bb6944bee19e496af827ff43`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 10:52:45 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Sat, 04 Nov 2017 10:52:46 GMT
RUN adduser -S eggdrop
# Sat, 04 Nov 2017 10:52:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 10:52:53 GMT
RUN apk add --no-cache tcl bash openssl
# Sat, 04 Nov 2017 10:54:15 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 04 Nov 2017 10:54:16 GMT
ENV NICK=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV SERVER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV LISTEN=3333
# Sat, 04 Nov 2017 10:54:16 GMT
ENV OWNER=
# Sat, 04 Nov 2017 10:54:16 GMT
ENV USERFILE=eggdrop.user
# Sat, 04 Nov 2017 10:54:17 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 04 Nov 2017 10:54:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 04 Nov 2017 10:54:17 GMT
EXPOSE 3333/tcp
# Sat, 04 Nov 2017 10:54:17 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Sat, 04 Nov 2017 10:54:18 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 04 Nov 2017 10:54:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 04 Nov 2017 10:54:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4603b86cc0c05a41a9a6ad3f65a5ce37b1c7513ce89c62a46d40910cccfad53b`  
		Last Modified: Sat, 04 Nov 2017 10:55:27 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811db42f15abfcb37d240b8bd22cf970db9a157f51d566d3d1a9135dbe4d6b5d`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 8.1 KB (8056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edec6a848949b5c9a1408c206ec0e930cdfb6077f327835a5a32dfea56d5e3a`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.9 MB (2938322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a12abf2195086f9a454f65a8c45b196b5610323c0a07561e599d4188feb28`  
		Last Modified: Sat, 04 Nov 2017 10:55:26 GMT  
		Size: 2.1 MB (2147602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a447569736dabac1a7ab53b48dc5b542604181c6284494805bd12c82f45df3`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270b6114886a6c354433e97620cfcfb4b7f1b87cdf4d042957c2b31d0616551`  
		Last Modified: Sat, 04 Nov 2017 10:55:25 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
