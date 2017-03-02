## `haproxy:latest`

```console
$ docker pull haproxy@sha256:a7e989bc67c89f109c646810b2ce6ca3a0cf45a1526bd74d950bd132d7ab229f
```

-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56205259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d36f981f3ced0b40ebc12f966092e444f01e3aedf36551b2856ca5d7f807e6c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 28 Feb 2017 03:21:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:21:39 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 02 Mar 2017 00:21:52 GMT
ENV HAPROXY_VERSION=1.7.3
# Thu, 02 Mar 2017 00:21:53 GMT
ENV HAPROXY_MD5=fe529c240c08e4004c6e9dcf3fd6b3ab
# Thu, 02 Mar 2017 00:22:39 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Mar 2017 00:22:40 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Thu, 02 Mar 2017 00:22:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:22:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d894b7b0bd03ca8cde122b6697a20dbba4c48982daab8411971e28a5a806ada7`  
		Last Modified: Thu, 02 Mar 2017 00:27:47 GMT  
		Size: 1.9 MB (1901745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445f935c4235ece03257f8600fb5beded819e088f1f1936386260d71bbf95f37`  
		Last Modified: Thu, 02 Mar 2017 00:29:41 GMT  
		Size: 2.9 MB (2939581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99b4a2bdb681ea473a7883266dcb189a3cbc75ec919d4a748852cd12fea662c`  
		Last Modified: Thu, 02 Mar 2017 00:29:41 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
