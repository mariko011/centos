## `memcached:alpine`

```console
$ docker pull memcached@sha256:b127d253bfc3cc935e8b6df13abfd0765daaf0f7fae1a5927b8f8c41a640e0aa
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0525495f0cef0d383fe896720f29145429964c821d3432fcc7f3bdd970406dc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 18 Jul 2017 23:06:28 GMT
RUN adduser -D memcache
# Fri, 25 Aug 2017 20:55:22 GMT
ENV MEMCACHED_VERSION=1.5.1
# Fri, 25 Aug 2017 20:55:23 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Fri, 25 Aug 2017 20:58:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 25 Aug 2017 20:58:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 25 Aug 2017 20:58:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Aug 2017 20:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 20:58:37 GMT
USER [memcache]
# Fri, 25 Aug 2017 20:58:37 GMT
EXPOSE 11211/tcp
# Fri, 25 Aug 2017 20:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc4fb72c09d89c9a60427a94b2851bce7248601825a9201763f80698a31f587`  
		Last Modified: Tue, 18 Jul 2017 23:11:08 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb0a75ca746e5956b437e70b812f8e12f0b67c96ab5766588f0a404201ab757`  
		Last Modified: Fri, 25 Aug 2017 20:59:14 GMT  
		Size: 1.7 MB (1732660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e91ddfe3013db656be2c7b3aa3bcf631f00dee5720f7573059403619ff2a5b`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e874995c6525a7555340ae553f855aa965cc847002e215df5b213516499260`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
