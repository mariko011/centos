## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:3cbaed21c324cfefbc1aa4b49c7ae62acd7ac0627287ef73b1878484b76f856f
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d323542b78b336e1d7e20ee12ea0ec5a93e0de925ee23024b8a6532b6b8b3800`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Thu, 06 Jul 2017 21:46:55 GMT
ENV MEMCACHED_VERSION=1.4.39
# Thu, 06 Jul 2017 21:46:56 GMT
ENV MEMCACHED_SHA1=9d6f77f4f9f1b50289882fd88851dece7699c74b
# Thu, 06 Jul 2017 21:47:11 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 06 Jul 2017 21:47:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:47:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:47:16 GMT
USER [memcache]
# Thu, 06 Jul 2017 21:47:17 GMT
EXPOSE 11211/tcp
# Thu, 06 Jul 2017 21:47:18 GMT
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
	-	`sha256:5ec3a288424fe7afc62e8fc29c7803db136ae70de4157523daf39fa39df963b5`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 1.3 MB (1299725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303b8bd109551cc47771c20d205ec6da533fee529480c5a7c1cfd88c68ab7bbe`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de116c482fcf6fb1d25cf821824fe8bac3a1ade5f33b5fa146c23edf3d7c92c0`  
		Last Modified: Thu, 06 Jul 2017 21:49:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
