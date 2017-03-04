## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:667a906284b9eedc9f3e82a1f3a9136233b18b8d59e2d93a3eaa8fd2a494859d
```

-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21185438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b07ddd1dc827cf9d2e780754c19ac1866b143b21253b88865761bb3a4a8b194`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:00:11 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 03 Mar 2017 22:00:11 GMT
ENV HOME=/home/user
# Fri, 03 Mar 2017 22:00:12 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 03 Mar 2017 22:00:12 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:12 GMT
ENV IRSSI_VERSION=1.0.1
# Fri, 03 Mar 2017 22:00:55 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 03 Mar 2017 22:00:56 GMT
WORKDIR /home/user
# Fri, 03 Mar 2017 22:00:56 GMT
USER [user]
# Fri, 03 Mar 2017 22:00:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395db7b6173c1b6b5042a18d2a634110eece90896af566af8b8e46d307485d2`  
		Last Modified: Sat, 04 Mar 2017 05:09:11 GMT  
		Size: 352.8 KB (352751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779046b90289050919f47aa121a711eafb513443e34d69a18dbc4b9cfe6cb8b`  
		Last Modified: Sat, 04 Mar 2017 05:09:09 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcb94576d2605b031b923e4a9e182f0ddeb77f352f9236a9cfdda37801d771a`  
		Last Modified: Sat, 04 Mar 2017 05:09:21 GMT  
		Size: 18.9 MB (18926163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
