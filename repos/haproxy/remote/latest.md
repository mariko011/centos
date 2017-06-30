## `haproxy:latest`

```console
$ docker pull haproxy@sha256:22ce3818febfffbdd2e1b61ae30b29bc0650be79c0326cd3a69d900c41cce953
```

-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57602922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2deb2e11e095b3b0f0808cc4c6a5ef62f5cf8d3259f5f3ae6d542ba75e9cedd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 22 Jun 2017 23:08:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 23:11:35 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 30 Jun 2017 00:51:22 GMT
ENV HAPROXY_VERSION=1.7.7
# Fri, 30 Jun 2017 00:51:23 GMT
ENV HAPROXY_MD5=a58a1a30dbd4682e660ddd9d70860a53
# Fri, 30 Jun 2017 00:52:11 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 30 Jun 2017 00:52:28 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 30 Jun 2017 00:52:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Jun 2017 00:52:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dda6777ca216c3cb05d94557d0907552ff23003781df3968f5fedd6646b7993`  
		Last Modified: Sat, 24 Jun 2017 10:19:03 GMT  
		Size: 2.0 MB (2019965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb78adf007956104f626464d35957acc88e073126834a5fa037f85c7ae8b384`  
		Last Modified: Fri, 30 Jun 2017 01:06:44 GMT  
		Size: 3.0 MB (2967589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3a2515b9911d0ceb664fd57737820c3e9564280767c70f48611b38ed54035f`  
		Last Modified: Fri, 30 Jun 2017 01:06:43 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
