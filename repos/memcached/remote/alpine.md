## `memcached:alpine`

```console
$ docker pull memcached@sha256:9282e7ebe76a5567a1bb89653f42f69b2129ca90f03196628aa872222540618e
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d4b9d95193c35f7ec0a65ea536491f9e770ad8de382613ed133db655b16a45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:09:30 GMT
RUN adduser -D memcache
# Fri, 23 Sep 2016 17:09:30 GMT
ENV MEMCACHED_VERSION=1.4.31
# Fri, 23 Sep 2016 17:09:31 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Fri, 23 Sep 2016 17:09:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:09:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 23 Sep 2016 17:09:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 17:09:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 17:09:43 GMT
USER [memcache]
# Fri, 23 Sep 2016 17:09:43 GMT
EXPOSE 11211/tcp
# Fri, 23 Sep 2016 17:09:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc19c20c5d371cac706b9c526fa24dcfc1ba5608c675b6fe65576369909307`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3597d618e938ea29691dda5b4c0e8951fde995e41374483137f23405bd631003`  
		Last Modified: Fri, 23 Sep 2016 17:09:51 GMT  
		Size: 450.4 KB (450444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66908bc406707ba51f70a1538dbac9bb7982bdcc8598466b09f7f5a91ca0c130`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4494be60f9016410d844f8857d15194df4dd1434e41a5a2f073a2d31c7be0eb`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
