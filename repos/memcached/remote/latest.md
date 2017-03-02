## `memcached:latest`

```console
$ docker pull memcached@sha256:5f6efd79264cd5ed52bd86657625ee6314213803928c75a326d2e0c6b69ab028
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30419640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83bc4297d84d9699d084370ac61ca93ee5520477ac5aa65989dc84f7f7628c3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 28 Feb 2017 06:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:00:41 GMT
ENV MEMCACHED_VERSION=1.4.35
# Tue, 28 Feb 2017 06:00:42 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Tue, 28 Feb 2017 06:01:57 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 06:01:57 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:01:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:02:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:02:24 GMT
USER [memcache]
# Tue, 28 Feb 2017 06:02:25 GMT
EXPOSE 11211/tcp
# Tue, 28 Feb 2017 06:02:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d86382e144cf6b23e809bde7c48a8ed371dde924b2a9ece4d2579c24d65c8`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eea8994563043c90a68e7317b20d934bd90565c29534691319126c06c63a3f`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 199.1 KB (199092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd86a4ca6e4e6fd7a9128c8a86204a8a1b71bc0ae2368bedd57946c82ab5cb1`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 692.8 KB (692757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b4852da6cae43c2b47f2ada138f84395b78a2002db345250de18a9ef6abc3e`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381b018000b3518658cab7a1d5f0418e32079b36c42b5d5714b28d2dad85fc88`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
