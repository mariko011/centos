## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:45889d40817a51d89cb91913c3da65852dd64b31e85809e40f3bd241aa5ea098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:b1dfd0e214f96addaa91f9d12b678d30a63ab3e665acc8c2886fb589ac6506cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3335764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e929e7e4df70ac416f522bc0eaf744b1c0a505e3a9790f43d45871c578f8b76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:37:55 GMT
RUN adduser -D memcache
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 03:41:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 03:41:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:41:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 03:41:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:41:16 GMT
USER [memcache]
# Thu, 26 Oct 2017 03:41:16 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 03:41:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86021a5d11f3379f551fb398a70ef0db4da84599045985f3b33a401e567fcb9`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823765eaf74f6cfbc3b566d33190eb7d98b91f6135ab966b2bf3727cf401e3c1`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.3 MB (1342679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf15b479342076ece504db96e8e2fd9c9f25105f7d158b2e92db2de986c8dc0`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43ec34cd5fcefdf50da9df30cfad9fbd26c5fab676e02a883c0f6634fa5f99d`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
