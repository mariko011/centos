## `irssi:alpine`

```console
$ docker pull irssi@sha256:eeac4a949725eddf778a8e38e961ae4ac4e7596f1f3fe55afdc5b51116601bbe
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21441932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca896dd3a7c423d2a3e3d9043e3fa6e601fb706fcbc656e267564a7e228863b1`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:44:38 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 10 May 2017 21:44:39 GMT
ENV HOME=/home/user
# Wed, 10 May 2017 21:44:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 10 May 2017 21:44:41 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:44:42 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 15 May 2017 20:34:20 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 15 May 2017 20:34:21 GMT
WORKDIR /home/user
# Mon, 15 May 2017 20:34:21 GMT
USER [user]
# Mon, 15 May 2017 20:34:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2445bee90a70665cdab21d33fe724916dac30e23d09177a8c83455688dc7b128`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84fde9e3fd530bf08e74700ae62174b29e45720ceb9dee8c2a0cf3e6a174b37`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8a02bb351f0f3914f0378db5e07520d16682744d563d9dcd914e81b368a79f`  
		Last Modified: Mon, 15 May 2017 20:36:38 GMT  
		Size: 19.1 MB (19122140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
