## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:cfffc10123e74e7d1159341bdd061741b5563af07bba36d0339f61a4bc854c1c
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4d86582316c9ca3af9c59317a03ac9205089faf45f5476721c3b3f4457b263`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:11 GMT
ADD file:38d7394b7e1446856c1f378920107516931ca6f4099489ba9d7138432b8c3ecb in / 
# Tue, 18 Oct 2016 23:30:34 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 18 Oct 2016 23:30:35 GMT
ENV HOME=/home/user
# Tue, 18 Oct 2016 23:30:36 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 18 Oct 2016 23:30:36 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 23:30:37 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 18 Oct 2016 23:31:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:31:40 GMT
WORKDIR /home/user
# Tue, 18 Oct 2016 23:31:46 GMT
VOLUME [/home/user/.irssi]
# Tue, 18 Oct 2016 23:31:51 GMT
USER [user]
# Tue, 18 Oct 2016 23:31:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:985c5f84712be156e14b68341b3f7aa6025dd27d104d215739312ee18fff5ac0`  
		Last Modified: Tue, 18 Oct 2016 20:32:19 GMT  
		Size: 2.3 MB (2323454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650ae3ea7325bcd5c99a74756631569078d27201e373ce027878b8e09b816513`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 567.1 KB (567068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91888f315b0cec39591f73265c0b7e9855f1318a02265e44857796a7d06ef26`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26389f2ce3e84603a821af45c8ebf74eea0b2a3e98310abf898f183fa5abc678`  
		Last Modified: Tue, 18 Oct 2016 23:32:18 GMT  
		Size: 16.6 MB (16601235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
