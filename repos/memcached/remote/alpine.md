## `memcached:alpine`

```console
$ docker pull memcached@sha256:806b26142ebaf2198b21669d5875e11a850f7b611ba7c9ffbfe3650b331370ad
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca8c243d99ccad3b99dad20d7560b931284eb9bd2433a17ad1bc0cb66b44636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Mon, 27 Feb 2017 17:56:16 GMT
ENV MEMCACHED_VERSION=1.4.35
# Mon, 27 Feb 2017 17:56:17 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Mon, 27 Feb 2017 17:56:28 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Mon, 27 Feb 2017 17:56:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 27 Feb 2017 17:56:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 27 Feb 2017 17:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:56:30 GMT
USER [memcache]
# Mon, 27 Feb 2017 17:56:30 GMT
EXPOSE 11211/tcp
# Mon, 27 Feb 2017 17:56:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57076bf87737c2f448e75324ceba121b3b90372ab913f604f928a40da4ebddc7`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1cfcfdcd7ba037a15c01b339f112025c01078cc0ed0ec8fca6accf1883372d`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 863.8 KB (863814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dceb66a4433680bf96409773028790faafbca5454a1a76bab1408f1be90a671`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd069cc2830cd64e08ef145ccc96197deb363dda50c0d01c4b2f1e8c6107f3e`  
		Last Modified: Mon, 27 Feb 2017 17:57:59 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
