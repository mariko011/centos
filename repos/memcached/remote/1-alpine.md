## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:2f001c890bd4d2ce0db970d2a190e2ab1f861cd58f28119fb9021bf1d91f2d0c
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2763158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8bd5efeffc66f5128693fc8f2a6fbcc37aff6023bd3a0325f903f67039a6363`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:28:43 GMT
RUN adduser -D memcache
# Tue, 20 Sep 2016 00:28:44 GMT
ENV MEMCACHED_VERSION=1.4.31
# Tue, 20 Sep 2016 00:28:44 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Tue, 20 Sep 2016 00:29:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:29:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:29:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 20 Sep 2016 00:29:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 00:29:07 GMT
USER [memcache]
# Tue, 20 Sep 2016 00:29:08 GMT
EXPOSE 11211/tcp
# Tue, 20 Sep 2016 00:29:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce8a48da16042cf26916f3885e561ced44206b522312cb826eda0088db1e750`  
		Last Modified: Tue, 20 Sep 2016 00:29:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc492b56908477e471bf35d46bb35509ca6e2aa3c1600a7897af2ce822ebbb7`  
		Last Modified: Tue, 20 Sep 2016 00:29:16 GMT  
		Size: 450.4 KB (450446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f847d8c09e48e6bd31bd723610768104cdca5695186a0719ea2c7437bda3ea`  
		Last Modified: Tue, 20 Sep 2016 00:29:16 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710c62f1b1705df1a899f9cc56b22b6410939b88dc7198073a68073c42fa3e79`  
		Last Modified: Tue, 20 Sep 2016 00:29:17 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
