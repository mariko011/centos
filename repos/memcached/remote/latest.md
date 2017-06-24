## `memcached:latest`

```console
$ docker pull memcached@sha256:ba5e944da20c3be51cf2e9e4d9b791ef196e718cb4397f9a19040859f0fdc9c1
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31112881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48072b41b4d1d4c5d4275c0d945e7f428e46c5d6b0f23a2e5e1cab82600057d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:34:12 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 23 Jun 2017 00:34:13 GMT
ENV MEMCACHED_VERSION=1.4.37
# Fri, 23 Jun 2017 00:34:14 GMT
ENV MEMCACHED_SHA1=6a6c2ab70e9470fef939afff1cb58b7602077611
# Fri, 23 Jun 2017 00:34:53 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Fri, 23 Jun 2017 00:34:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:34:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:34:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:34:58 GMT
USER [memcache]
# Fri, 23 Jun 2017 00:34:59 GMT
EXPOSE 11211/tcp
# Fri, 23 Jun 2017 00:35:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7ee474d4e29f3f904bb5e806678aa444f4b4e6e6c0bbe3e8e2035887b6a6ac`  
		Last Modified: Sat, 24 Jun 2017 12:56:33 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f938a183184ce7d8cd2cbc479f8f3076401590cefbdacf16063e26e78ab43f13`  
		Last Modified: Sat, 24 Jun 2017 12:56:34 GMT  
		Size: 980.1 KB (980121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bd04f7ba2d10a5828a1d39d64d0e3aaa41ff6cfeebd0fdde5923cc875cc2cb`  
		Last Modified: Sat, 24 Jun 2017 12:56:33 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a5b30bc43fe3fed2b6dd00e97149f5a1c919190cc9732d0b1a52aae8fe80f9`  
		Last Modified: Sat, 24 Jun 2017 12:56:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
