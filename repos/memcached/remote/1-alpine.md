## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:c9cb61b47c69c1251b44ea48c51c81fa5a2ed1926e8582486ab38bb6c7f31756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:500d62588d7c7ec70d5c7f240faf19db60a895fbaf7238824222f891dc4e1571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7934b99fd0185dbfa4b386ae46a11739112df4c280c5f836a2ffae248c79e9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:37:44 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:38:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 05:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:38:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:38:30 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:38:30 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:38:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18cef3dd486b3b3b30bae73f7596d0a4892089180fb63e0b5bb4d9107ad2a3c`  
		Last Modified: Sat, 04 Nov 2017 01:41:24 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca60f2d156cb0c5a5926bef56f5d9a839e50eaba0bd59ad099544b7bd6885775`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 1.3 MB (1343116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7232d601ba00570a64456832a07d30422be9bf427bada1f28e9d138d96e96a`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8cfaea557fb2c462c6bce5305e74bf60a696064c741f51834186e2676cd27`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:e6925b85a95b3732a068dc260925d92974e096fdcd807bce07cb80029f7aabcc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3893369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd386d4963696b585225eb0919d18b4529f3ed46f81287f1185a40059cbe8e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:33:38 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 18:40:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 18:40:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 18:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:40:46 GMT
USER [memcache]
# Wed, 08 Nov 2017 18:40:46 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 18:40:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b2cd4d6636c544f88e65b18afb3ffb6ba20453da91f9ee2294e40d808f11b0`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142dcb4e8f9072e4dcc6a6e04a6dda64c11915feae4c147987f6a541f88db705`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 1.8 MB (1826081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62048913d85a9c7c6449a6b68dcae5d29d617f8695a66bf5b00b6a45be43e2`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0060e2e14e849ff326e400ca1258da34ad7bd067d2d74d3f3d7ccdf76f3e1dc0`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
