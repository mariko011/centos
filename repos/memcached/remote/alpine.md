## `memcached:alpine`

```console
$ docker pull memcached@sha256:a3ba0e45d31ce60450a7579e914bf900e6ff65baa5c200e5c52fbc9c3078e587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:e9e671f5411bc07354fe6e1806c5686527a743ca97ddc4e42877027ca71ebbcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3725518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfb8def40f93f4a05a53be25cb633d4c1cd206d51478880509f2b2868960fdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:41:38 GMT
RUN adduser -D memcache
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 02 Oct 2017 23:41:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Oct 2017 23:41:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Oct 2017 23:41:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Oct 2017 23:41:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Oct 2017 23:41:11 GMT
USER [memcache]
# Mon, 02 Oct 2017 23:41:11 GMT
EXPOSE 11211/tcp
# Mon, 02 Oct 2017 23:41:11 GMT
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
	-	`sha256:df2e26817956fadfaea406fe860115c6de076483607c8799fab2077e5f1e0916`  
		Last Modified: Mon, 02 Oct 2017 23:41:56 GMT  
		Size: 1.7 MB (1733467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa96d76da4bfd4db47a5d2a04e6e87f5f5ec9111b0cb2b0099422f4f21f77e10`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d641f7cd319b96a7e84fea23fbdc38e2a964f1f17a6b81c3bbfba286e7cd90c9`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
