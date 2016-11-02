## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:715d22ff6ff55412d0327147b1b6df7c3c8aadfd6eb3d8c6018aea22a19efb48
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3144641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d11822044cb4a1b3d871fe3fc26a3ceb564e650e832f3c6b6945f42849bc22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:40:04 GMT
RUN adduser -D memcache
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 01 Nov 2016 23:28:31 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 01 Nov 2016 23:28:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:28:34 GMT
USER [memcache]
# Tue, 01 Nov 2016 23:28:34 GMT
EXPOSE 11211/tcp
# Tue, 01 Nov 2016 23:28:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d26aef1141b9e4fe2b84250163510b81fd1c927fe18de872ecbe4cba158b8b1`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a688e2c13cf14f5dd42e6f477d59c43956f5f5c0f281e31aae3301ccc8d53bec`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 830.0 KB (830021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84e0477b7057906c5f8bb6201b20d56f24d77565d5aaa573f1f7e74b8d6191`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70caa559e9c96a3c9a0d9aee5c3a0da9a792a1e7b4101bb0b7ac3e09ac783354`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
