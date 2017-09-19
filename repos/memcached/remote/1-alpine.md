## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:8044235feb71d6f97a3862d6f835cbc4170191a6e284ee3d113c2cf800d3875b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:ee261c03435a8fc46c5b73a0708120771daa192f6ef07686b122d6738ec80cdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ffce7443371a5296210ca858fd51a89e0c4fe51ed3c184d0780e6e14856c15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:41:38 GMT
RUN adduser -D memcache
# Tue, 19 Sep 2017 01:41:38 GMT
ENV MEMCACHED_VERSION=1.5.1
# Tue, 19 Sep 2017 01:41:38 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Tue, 19 Sep 2017 01:44:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 19 Sep 2017 01:44:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 19 Sep 2017 01:44:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 01:44:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 01:44:52 GMT
USER [memcache]
# Tue, 19 Sep 2017 01:44:52 GMT
EXPOSE 11211/tcp
# Tue, 19 Sep 2017 01:44:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5342366c11be2dc0ad25a1e84eedb96da23a1d63c55378df80d256b737b91664`  
		Last Modified: Tue, 19 Sep 2017 01:45:30 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7ddd0f05511033899b1e8bb8c1bf2b47df18c12656f2edd48fe1a1a091973`  
		Last Modified: Tue, 19 Sep 2017 01:45:30 GMT  
		Size: 1.7 MB (1732692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08417cc8b275960e13969e72d7e989d0fd0c17330c532edd95682210119da1`  
		Last Modified: Tue, 19 Sep 2017 01:45:30 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f234e19f240fc42c0b730c581ced5d8acf5596280ef438a04d43ad65084263`  
		Last Modified: Tue, 19 Sep 2017 01:45:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
