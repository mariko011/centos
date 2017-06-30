## `memcached:alpine`

```console
$ docker pull memcached@sha256:acf5cfae75498336bae59337c4c5f9ecf7efcfad5b7f2616c75c9b348b51f329
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc55b8eae1ac0fbc63ffed29768462b57feb33e15bf1b2ee1c8a2116cbb85738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Fri, 30 Jun 2017 16:55:23 GMT
ENV MEMCACHED_VERSION=1.4.38
# Fri, 30 Jun 2017 16:55:24 GMT
ENV MEMCACHED_SHA1=68f8df44f2a215d9f9767e76bf8ef03d9134ffb4
# Fri, 30 Jun 2017 16:55:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Fri, 30 Jun 2017 16:55:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 30 Jun 2017 16:55:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 30 Jun 2017 16:56:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Jun 2017 16:56:23 GMT
USER [memcache]
# Fri, 30 Jun 2017 16:56:24 GMT
EXPOSE 11211/tcp
# Fri, 30 Jun 2017 16:56:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d36b64b634cad262a0f488b3b63c44b860da8482605b7d17ca656f421c32ec`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e08b3debad0b5abd1e48c680845a52d9523d3b81d2f20f171fd13062a9eae9e`  
		Last Modified: Fri, 30 Jun 2017 17:01:05 GMT  
		Size: 1.3 MB (1299403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf4516664318239ece9efb75976a6304a2d26283ab6cd756a3c80146ace5701`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32ade7515f7f293cb289bf57fc42d5450a9df195d52adb4d3285f1805afa28`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
