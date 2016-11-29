## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:0b9a67fe2db5d2040ba9e723ed39b692d30d404075ceb538b8d3e5e7bf242758
```

-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5551921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e151cc910cbc19b4ad33eb6a2c742a3d4bd6717ce4f04403348f515f9b9fd9a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Mon, 28 Nov 2016 23:07:05 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 28 Nov 2016 23:07:05 GMT
ENV HAPROXY_VERSION=1.7.0
# Mon, 28 Nov 2016 23:07:05 GMT
ENV HAPROXY_MD5=ab6e169aeb1b53364aacda80c904398a
# Mon, 28 Nov 2016 23:07:47 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Mon, 28 Nov 2016 23:07:48 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 28 Nov 2016 23:07:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 28 Nov 2016 23:07:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb55ddf1c83fa2c4a495a1ba0da6b758dc49280a8896b9172d6126e98946785`  
		Last Modified: Mon, 28 Nov 2016 23:12:01 GMT  
		Size: 3.2 MB (3238618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0d86610f5507c571a5f66fddc38ca57ae881ed44802710dec989f0dd5eb7c8`  
		Last Modified: Mon, 28 Nov 2016 23:12:00 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
