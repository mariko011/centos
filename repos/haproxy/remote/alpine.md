## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:94b918b5b2c15715441685204524e6c6d4d12ee21856897db61085c472f8f3b9
```

-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11689e6f9be20bdcde04275e1f935cbdac2b6d244ee10f4ae2547aea583ea145`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_VERSION=1.7.2
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_MD5=7330b36f3764ebe409e9305803dc30e2
# Fri, 20 Jan 2017 22:00:48 GMT
ENV LUA_VERSION=5.3.3 LUA_SHA1=a0341bc3d1415b814cc738b2ec01ae56045d64ef
# Fri, 20 Jan 2017 22:01:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Jan 2017 22:01:19 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 22:01:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:01:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e47250884af7e6b7c31375c67577531dcdb097e44d5f37483289383c20acb7e`  
		Last Modified: Fri, 20 Jan 2017 22:05:47 GMT  
		Size: 4.7 MB (4678752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a733aaa15c101837af023a9e962c029f68dcb4427301ffd3176f70cb456bbf`  
		Last Modified: Fri, 20 Jan 2017 22:05:44 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
