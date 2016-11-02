## `memcached:latest`

```console
$ docker pull memcached@sha256:9cfbcc6988622e75827d8dc8a1826aa8b088ca5f3f94ae60074149cf6bea3679
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52226121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdd5c36cc9a5b9cc962dc091d0c4b20f729ba2f1e654fa477ec3e2fe4ff30c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:39:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Oct 2016 20:39:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 23:27:44 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 01 Nov 2016 23:27:44 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 01 Nov 2016 23:28:12 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 23:28:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:28:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:28:14 GMT
USER [memcache]
# Tue, 01 Nov 2016 23:28:15 GMT
EXPOSE 11211/tcp
# Tue, 01 Nov 2016 23:28:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b25e9455e95f58fccd1d83a551892751c947971463c861740fb66283a26005`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2ca9ff2c6144b4c19f9dd559987e81669305e5a9a93df3585f203ce296a79`  
		Last Modified: Fri, 21 Oct 2016 20:40:35 GMT  
		Size: 237.6 KB (237574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a4a67353df7a851eb8c9ee71c92ab8082ee179d4cfd9c56aee083fec9f36c`  
		Last Modified: Tue, 01 Nov 2016 23:28:46 GMT  
		Size: 633.0 KB (632964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2519305ba509b864f32a548dd496108a6734e3c0b1a6e92fd17c71fd61306e5b`  
		Last Modified: Tue, 01 Nov 2016 23:28:45 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a26be6b8ee80d83b1538d88e5a491fd4e7f2e50795aba1c41469867196d3a0`  
		Last Modified: Tue, 01 Nov 2016 23:28:46 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
