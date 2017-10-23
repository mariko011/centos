## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:9df1be81032091fa7e31fdc8c92ff0e8b0e552af23e795153219963e400ab3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:5bb8fe2fd63e3124af76f5a09c631d2317da026740c982f143c3cabf31c2e932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19152838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6154727fccc31a8be802fb08cdf7ef3d8da76a45ba20e3ee6cab4d672026033`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 10:51:00 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 19 Sep 2017 10:51:00 GMT
ENV HOME=/home/user
# Tue, 19 Sep 2017 10:51:01 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 19 Sep 2017 10:51:01 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 19:48:50 GMT
ENV IRSSI_VERSION=1.0.5
# Mon, 23 Oct 2017 19:49:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 23 Oct 2017 19:49:46 GMT
WORKDIR /home/user
# Mon, 23 Oct 2017 19:49:46 GMT
USER [user]
# Mon, 23 Oct 2017 19:49:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f90494e7f1e5e8418d5dac1d0ae46b42c9a5d3d5b27f847316cee913f11d841`  
		Last Modified: Tue, 19 Sep 2017 10:51:53 GMT  
		Size: 351.4 KB (351406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae9bfcf8e8cd85ec3175b39c59b6c117c86ce0c0855283fb7755d174b4b9355`  
		Last Modified: Tue, 19 Sep 2017 10:51:52 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9cdefceeaf60de4535461cb1b341579dd9c20aead31e6136afe0fbf7c7eeaa`  
		Last Modified: Mon, 23 Oct 2017 19:50:47 GMT  
		Size: 16.8 MB (16809767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
