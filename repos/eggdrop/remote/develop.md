## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:bfbf6ed92e885730003aa0ecc69831da851ac1b91b3be37bfbb157c3ec617d76
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13385742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ab013d5cd60af13131c45d8689170021d2a808a16b8f025e882419bb586619`
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
# Tue, 11 Jul 2017 19:03:35 GMT
ENV EGGDROP_SHA256=770dbddb4f1d42ecd4f8de0f626f1c5da7f4fa82573d14d4b6fc5083e0b86ab2
# Tue, 11 Jul 2017 19:03:35 GMT
ENV EGGDROP_COMMIT=030cc50e684666da13ed6177d230903c79327a3f
# Tue, 11 Jul 2017 19:04:36 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Tue, 11 Jul 2017 19:04:44 GMT
ENV NICK=
# Tue, 11 Jul 2017 19:04:51 GMT
ENV SERVER=
# Tue, 11 Jul 2017 19:04:58 GMT
ENV LISTEN=3333
# Tue, 11 Jul 2017 19:05:05 GMT
ENV OWNER=
# Tue, 11 Jul 2017 19:05:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 11 Jul 2017 19:05:13 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 11 Jul 2017 19:05:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 11 Jul 2017 19:05:14 GMT
EXPOSE 3333/tcp
# Tue, 11 Jul 2017 19:05:14 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 11 Jul 2017 19:05:15 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 11 Jul 2017 19:05:15 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 11 Jul 2017 19:05:16 GMT
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
	-	`sha256:5a5f14fbcb6e354f21c09e8e8d89d663ebe0c4fb3750077affce46b9e367bcf5`  
		Last Modified: Tue, 11 Jul 2017 19:08:05 GMT  
		Size: 11.4 MB (11403880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3317c53ea60b4fb76ec7ed5e3bef90be2ac044124c1957816ddc14213f8885f6`  
		Last Modified: Tue, 11 Jul 2017 19:08:02 GMT  
		Size: 1.9 KB (1872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5e326b18e005b103474769cb9ec2bf52346f62128ecd120aa48baf339f66c3`  
		Last Modified: Tue, 11 Jul 2017 19:08:03 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
