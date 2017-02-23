## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:0055e6e13415f893838f8f541c1e1b990743444d5eb26deb8a7aa214fa4cc050
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7beae7ae5896c5b25e5ef5d878ec77f70ec9950a90220c16dd3116e0544d63fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Fri, 13 Jan 2017 18:10:54 GMT
ENV MEMCACHED_VERSION=1.4.34
# Fri, 13 Jan 2017 18:10:55 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Thu, 23 Feb 2017 19:35:33 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Feb 2017 19:35:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:35:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Feb 2017 19:35:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:35:36 GMT
USER [memcache]
# Thu, 23 Feb 2017 19:35:36 GMT
EXPOSE 11211/tcp
# Thu, 23 Feb 2017 19:35:37 GMT
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
	-	`sha256:ddf5decfae7f95546c92b4a8a392fa1b42b3f40a7a6c2ee8912867e743f1d353`  
		Last Modified: Thu, 23 Feb 2017 19:37:06 GMT  
		Size: 853.1 KB (853098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec05f6395d7e223a643cb8c1f10828d22495b6c1fc035fb509a9c8b74a58ecf`  
		Last Modified: Thu, 23 Feb 2017 19:37:06 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e583fdf3a707b952cd6806ad7293178145a30a4821f15ae01f83fd34e75328ee`  
		Last Modified: Thu, 23 Feb 2017 19:37:06 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
