## `memcached:latest`

```console
$ docker pull memcached@sha256:2b55126acc6b055c9349b01b701db6770dbeb0ad7f6d590fa7b1be2bbe3fe1a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:3e8897875f704f9ba8f25ae40c9c939efc7aff9af8967c6d4e35a3204b1bd250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23463846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdb3385afc92cec327e0d59a31f569e24ba56ecf3b67e6d732570b474fc8e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 21:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 21 Dec 2017 21:35:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 21:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:35:38 GMT
USER [memcache]
# Thu, 21 Dec 2017 21:35:38 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 21:35:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb3f8fce829024a761313c0897c1d2da32a6800c0fb63a5d714d77357f1bac2`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d88b232c2fb5bc315a22ef8eae787c007d7f20cd68d6476f736678e5a0e17`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 976.0 KB (975967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3999c826aa07d247c10eefdf2cea83068a44d2f82c978b43e5eac7258aa0b8`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d32ac2247f396fbe2f4e3bd58c592e43298a23b5ded6b811c29e53796db9e9`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
