## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:1b4e62ddc77e77f4384bd89c3b05634eea6562df73df3fa0b5f7a6f66a5ccfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:52747188d0fa7d52e9e85091f7d42f9f8b173dadad3902cde0e4e485d3e12bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19140409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805a985cf5a1a9631e3c38bc7156a8387dd7f7cc5c670f1a6e0c99ee90b24e3c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 10:49:03 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 13 Sep 2017 10:49:03 GMT
ENV HOME=/home/user
# Wed, 13 Sep 2017 10:49:03 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 13 Sep 2017 10:49:04 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 10:49:04 GMT
ENV IRSSI_VERSION=1.0.4
# Wed, 13 Sep 2017 10:49:49 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Sep 2017 10:49:50 GMT
WORKDIR /home/user
# Wed, 13 Sep 2017 10:49:50 GMT
USER [user]
# Wed, 13 Sep 2017 10:49:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcb161abf7afb112d65a712b97dad3c340cffa73a3deecddbbfa128e3fd62be`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a361e2dd2a88ac14876ff8751a8c879b967a251c7ee72f268f590a5177bfc02`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad2cdab6b251fbabf5e14a57d66909332be7f93c4214653400eb31abe4b2e75`  
		Last Modified: Wed, 13 Sep 2017 10:50:32 GMT  
		Size: 16.8 MB (16797390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
