## `memcached:latest`

```console
$ docker pull memcached@sha256:ee33b5c8173f9bd7aac2be5fe265b5f5a5c1bb79c724de1039989a20c6a43821
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30406954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c5b44cf66befaadd317d253955810b4c277713255efb9666bd666d9cf37e90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:33 GMT
ADD file:0eebaa293cb06f6246a998163e8a86f1100ab8666781ccac20234d5fe595a7ec in / 
# Mon, 16 Jan 2017 20:35:43 GMT
CMD ["/bin/bash"]
# Thu, 23 Feb 2017 19:34:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 23 Feb 2017 19:34:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Feb 2017 19:34:49 GMT
ENV MEMCACHED_VERSION=1.4.34
# Thu, 23 Feb 2017 19:34:49 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Thu, 23 Feb 2017 19:35:17 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Feb 2017 19:35:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:35:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Feb 2017 19:35:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:35:20 GMT
USER [memcache]
# Thu, 23 Feb 2017 19:35:21 GMT
EXPOSE 11211/tcp
# Thu, 23 Feb 2017 19:35:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b5161f7f177227044e4f8352bd9400b6b815538e594c2b1125405fa51016ca48`  
		Last Modified: Mon, 16 Jan 2017 20:45:08 GMT  
		Size: 29.5 MB (29523366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6485b2e50a2e0ef05dce1e59f041327327b42366f9572dc26352b610d16e91dd`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1285f50ca9cc65b8baf1eaae70ce56dfb12116987ef4001414f11541d2b9523f`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 198.9 KB (198888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d08df610194f7459aa13b3ea806714cf64df3dde67c4e4ce84a4d1bc27050ed`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 682.2 KB (682249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf99c79cea3df79f6822d56da128fcd2e4bb3b47621b56b62f93c9ce5c2c8e6`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe06f49979b206edddc879ea869b80e70a67652f844ccd3c5b7840e94f644e9`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
