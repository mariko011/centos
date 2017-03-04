## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:67304cf96ba05e1680967349a447a5ef5ae40b4217f2d9017218a21bdd24cd24
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3726d1d96099949b7b9f2d57934256e0522330e5d012a23ba6c8bf40cccf325`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:54 GMT
RUN adduser -D memcache
# Fri, 03 Mar 2017 22:01:54 GMT
ENV MEMCACHED_VERSION=1.4.35
# Fri, 03 Mar 2017 22:01:55 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Fri, 03 Mar 2017 22:02:06 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 03 Mar 2017 22:02:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:02:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Mar 2017 22:02:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 22:02:08 GMT
USER [memcache]
# Fri, 03 Mar 2017 22:02:08 GMT
EXPOSE 11211/tcp
# Fri, 03 Mar 2017 22:02:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efdf8df4f503c8265247ce8cff0332d7f2994174fa464f3df4004d71d0b1c05`  
		Last Modified: Sat, 04 Mar 2017 05:12:42 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00705e2866fb44cdca2b8eb08e1deec978b729b7c46fce396783b8a15dfbb1e9`  
		Last Modified: Sat, 04 Mar 2017 05:12:43 GMT  
		Size: 481.1 KB (481139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e59fbd5eace7b4eddaa7fe190cda787c749dcc12d2312d803c13aa9337603`  
		Last Modified: Sat, 04 Mar 2017 05:12:41 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b5c651eef490cd9941a659a469f36d72881dfec1cf70ae047b74303cfe1661`  
		Last Modified: Sat, 04 Mar 2017 05:12:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
