## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:2da0a8170397ebb885d4db516981181f322dea6bc6a3e6b2fdad450dbf91c75e
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8398236caa19104ae3cadf3d27ce370627885b8eae58ca126245a4c4ddadf04b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:17:00 GMT
RUN adduser -D memcache
# Tue, 27 Dec 2016 19:17:01 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 27 Dec 2016 19:17:01 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 27 Dec 2016 19:17:12 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:17:24 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:17:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Dec 2016 19:17:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 19:17:26 GMT
USER [memcache]
# Tue, 27 Dec 2016 19:17:37 GMT
EXPOSE 11211/tcp
# Tue, 27 Dec 2016 19:17:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a6ca274ffea035c128d4ffc8bfb8dd583bd6847f9803e2446ac182ad575d84`  
		Last Modified: Tue, 27 Dec 2016 19:21:54 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9e244928e1c5cb182dfa6ae952275a21da9e628c899b165a47184308e18939`  
		Last Modified: Tue, 27 Dec 2016 19:21:55 GMT  
		Size: 450.6 KB (450642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475c931664b8207db3aa9fdac22ff6773583899d679728812aa84ac95051ed9d`  
		Last Modified: Tue, 27 Dec 2016 19:21:54 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db407e83e2d73f256aaf19e4f4d06e5a3f464d2f590f20a6ddd14ac1d77c4599`  
		Last Modified: Tue, 27 Dec 2016 19:21:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
