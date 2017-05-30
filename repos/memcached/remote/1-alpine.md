## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:00b68b00139155817a8b1d69d74865563def06b3af1e6fc79ac541a1b2f6b961
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36e3b0dc88c4515a60083ab11e8d8520d68d59e50f5b628b427b6bb2d5405c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:41:31 GMT
RUN adduser -D memcache
# Tue, 30 May 2017 20:41:32 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 30 May 2017 20:41:33 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 30 May 2017 20:41:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Tue, 30 May 2017 20:41:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 May 2017 20:41:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 May 2017 20:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 20:41:51 GMT
USER [memcache]
# Tue, 30 May 2017 20:41:51 GMT
EXPOSE 11211/tcp
# Tue, 30 May 2017 20:41:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338fbb6cf27a58e389a21efe86a1e03a7254a6b4a42d94dfb473437532372d8f`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ae9370a6cbc0bb6e0c2edb06842444637e1d2a49560b453111fd1b9dbcc`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.3 MB (1292505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1e7538d8c83ec02697d27494d6b050dcfec81c116c5eda6fc83958f19ef106`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952bb42ade1c13e4f3afb4e1b1018a15dbba6dde4fdcc4feed3fde726cc46dc5`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
