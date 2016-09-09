## `haproxy:latest`

```console
$ docker pull haproxy@sha256:a25d7907e176e58f0dc7241e6ffd0a5dbc4946e680a5c6f1fa4b71b631534a69
```

-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57402620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65599e2ea3f2172b601863aa0ff18047515b29c506a4817ac2c29548babdbabf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:43:01 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:43:45 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_VERSION=1.6.9
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Wed, 31 Aug 2016 17:07:01 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 17:07:02 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 31 Aug 2016 17:07:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:07:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1707a087439221a1cddafeef27eb15cb84b371c94667d046cab26ee3a09c73`  
		Last Modified: Wed, 31 Aug 2016 17:08:36 GMT  
		Size: 1.7 MB (1689979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856796a2282e062a27a3543c1791433c770b23bb9c18eb9b3037ece97744232`  
		Last Modified: Wed, 31 Aug 2016 17:09:22 GMT  
		Size: 4.3 MB (4345029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3064379351b9741fc8e754fcf8d39977046a805bab9ef8db35b3da4076f1848`  
		Last Modified: Wed, 31 Aug 2016 17:09:20 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
