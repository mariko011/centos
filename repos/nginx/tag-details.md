<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nginx`

-	[`nginx:1.11.10`](#nginx11110)
-	[`nginx:mainline`](#nginxmainline)
-	[`nginx:1`](#nginx1)
-	[`nginx:1.11`](#nginx111)
-	[`nginx:latest`](#nginxlatest)
-	[`nginx:1.11.10-alpine`](#nginx11110-alpine)
-	[`nginx:mainline-alpine`](#nginxmainline-alpine)
-	[`nginx:1-alpine`](#nginx1-alpine)
-	[`nginx:1.11-alpine`](#nginx111-alpine)
-	[`nginx:alpine`](#nginxalpine)
-	[`nginx:1.10.3`](#nginx1103)
-	[`nginx:stable`](#nginxstable)
-	[`nginx:1.10`](#nginx110)
-	[`nginx:1.10.3-alpine`](#nginx1103-alpine)
-	[`nginx:stable-alpine`](#nginxstable-alpine)
-	[`nginx:1.10-alpine`](#nginx110-alpine)

## `nginx:1.11.10`

```console
$ docker pull nginx@sha256:52a189e49c0c797cfc5cbfe578c68c225d160fb13a42954144b29af3fe4fe335
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71605546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b914bbcb89e49851990e064568dceee4d53a462f316ec36207599c12ae9ba65`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 28 Feb 2017 15:14:51 GMT
ENV NGINX_VERSION=1.11.10-1~jessie
# Tue, 28 Feb 2017 15:15:06 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:07 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 28 Feb 2017 15:15:08 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 28 Feb 2017 15:15:08 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6decb850d2bc195e977880bcec1d4466ceb6ca0c48d1fa7a2efc7dd43595a44f`  
		Last Modified: Thu, 02 Mar 2017 02:17:55 GMT  
		Size: 20.2 MB (20241978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e19f087ed6e9f950779e85e7ee0198b25eb8063a98df13ad2a951f83ccdc3b`  
		Last Modified: Thu, 02 Mar 2017 02:17:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline`

```console
$ docker pull nginx@sha256:52a189e49c0c797cfc5cbfe578c68c225d160fb13a42954144b29af3fe4fe335
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71605546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b914bbcb89e49851990e064568dceee4d53a462f316ec36207599c12ae9ba65`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 28 Feb 2017 15:14:51 GMT
ENV NGINX_VERSION=1.11.10-1~jessie
# Tue, 28 Feb 2017 15:15:06 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:07 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 28 Feb 2017 15:15:08 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 28 Feb 2017 15:15:08 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6decb850d2bc195e977880bcec1d4466ceb6ca0c48d1fa7a2efc7dd43595a44f`  
		Last Modified: Thu, 02 Mar 2017 02:17:55 GMT  
		Size: 20.2 MB (20241978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e19f087ed6e9f950779e85e7ee0198b25eb8063a98df13ad2a951f83ccdc3b`  
		Last Modified: Thu, 02 Mar 2017 02:17:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1`

```console
$ docker pull nginx@sha256:52a189e49c0c797cfc5cbfe578c68c225d160fb13a42954144b29af3fe4fe335
```

-	Platforms:
	-	linux; amd64

### `nginx:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71605546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b914bbcb89e49851990e064568dceee4d53a462f316ec36207599c12ae9ba65`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 28 Feb 2017 15:14:51 GMT
ENV NGINX_VERSION=1.11.10-1~jessie
# Tue, 28 Feb 2017 15:15:06 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:07 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 28 Feb 2017 15:15:08 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 28 Feb 2017 15:15:08 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6decb850d2bc195e977880bcec1d4466ceb6ca0c48d1fa7a2efc7dd43595a44f`  
		Last Modified: Thu, 02 Mar 2017 02:17:55 GMT  
		Size: 20.2 MB (20241978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e19f087ed6e9f950779e85e7ee0198b25eb8063a98df13ad2a951f83ccdc3b`  
		Last Modified: Thu, 02 Mar 2017 02:17:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.11`

```console
$ docker pull nginx@sha256:52a189e49c0c797cfc5cbfe578c68c225d160fb13a42954144b29af3fe4fe335
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71605546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b914bbcb89e49851990e064568dceee4d53a462f316ec36207599c12ae9ba65`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 28 Feb 2017 15:14:51 GMT
ENV NGINX_VERSION=1.11.10-1~jessie
# Tue, 28 Feb 2017 15:15:06 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:07 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 28 Feb 2017 15:15:08 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 28 Feb 2017 15:15:08 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6decb850d2bc195e977880bcec1d4466ceb6ca0c48d1fa7a2efc7dd43595a44f`  
		Last Modified: Thu, 02 Mar 2017 02:17:55 GMT  
		Size: 20.2 MB (20241978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e19f087ed6e9f950779e85e7ee0198b25eb8063a98df13ad2a951f83ccdc3b`  
		Last Modified: Thu, 02 Mar 2017 02:17:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:latest`

```console
$ docker pull nginx@sha256:52a189e49c0c797cfc5cbfe578c68c225d160fb13a42954144b29af3fe4fe335
```

-	Platforms:
	-	linux; amd64

### `nginx:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71605546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b914bbcb89e49851990e064568dceee4d53a462f316ec36207599c12ae9ba65`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 28 Feb 2017 15:14:51 GMT
ENV NGINX_VERSION=1.11.10-1~jessie
# Tue, 28 Feb 2017 15:15:06 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:07 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 28 Feb 2017 15:15:08 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 28 Feb 2017 15:15:08 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6decb850d2bc195e977880bcec1d4466ceb6ca0c48d1fa7a2efc7dd43595a44f`  
		Last Modified: Thu, 02 Mar 2017 02:17:55 GMT  
		Size: 20.2 MB (20241978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e19f087ed6e9f950779e85e7ee0198b25eb8063a98df13ad2a951f83ccdc3b`  
		Last Modified: Thu, 02 Mar 2017 02:17:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.11.10-alpine`

```console
$ docker pull nginx@sha256:43dde42aacf6a42505a54b2097a933af0e8d54852a32e87aa80303237540424e
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11.10-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18028836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35b49deb2349424e52b3a71ccae12ec6690c1f464fa061aaf63f76900d515a8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:17:38 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Thu, 16 Feb 2017 00:54:58 GMT
ENV NGINX_VERSION=1.11.10
# Thu, 16 Feb 2017 00:55:54 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 16 Feb 2017 00:55:55 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
EXPOSE 443/tcp 80/tcp
# Thu, 16 Feb 2017 00:55:57 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9b58fd6dd47e2c36e9db4e513ee45f9a4b77c440b936d0cd7bc9fabfe9cd03`  
		Last Modified: Thu, 16 Feb 2017 00:57:55 GMT  
		Size: 15.7 MB (15714629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adeef8edfca7585c7043e36b8240e54950ab2e216fe7ad82bbafa84d2e781c0`  
		Last Modified: Thu, 16 Feb 2017 00:57:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8a2986b12419ab642d157e4332cb7ae01c3c3f58d2e7bc185ab717c6d95acd`  
		Last Modified: Thu, 16 Feb 2017 00:57:49 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline-alpine`

```console
$ docker pull nginx@sha256:43dde42aacf6a42505a54b2097a933af0e8d54852a32e87aa80303237540424e
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18028836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35b49deb2349424e52b3a71ccae12ec6690c1f464fa061aaf63f76900d515a8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:17:38 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Thu, 16 Feb 2017 00:54:58 GMT
ENV NGINX_VERSION=1.11.10
# Thu, 16 Feb 2017 00:55:54 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 16 Feb 2017 00:55:55 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
EXPOSE 443/tcp 80/tcp
# Thu, 16 Feb 2017 00:55:57 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9b58fd6dd47e2c36e9db4e513ee45f9a4b77c440b936d0cd7bc9fabfe9cd03`  
		Last Modified: Thu, 16 Feb 2017 00:57:55 GMT  
		Size: 15.7 MB (15714629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adeef8edfca7585c7043e36b8240e54950ab2e216fe7ad82bbafa84d2e781c0`  
		Last Modified: Thu, 16 Feb 2017 00:57:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8a2986b12419ab642d157e4332cb7ae01c3c3f58d2e7bc185ab717c6d95acd`  
		Last Modified: Thu, 16 Feb 2017 00:57:49 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1-alpine`

```console
$ docker pull nginx@sha256:43dde42aacf6a42505a54b2097a933af0e8d54852a32e87aa80303237540424e
```

-	Platforms:
	-	linux; amd64

### `nginx:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18028836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35b49deb2349424e52b3a71ccae12ec6690c1f464fa061aaf63f76900d515a8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:17:38 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Thu, 16 Feb 2017 00:54:58 GMT
ENV NGINX_VERSION=1.11.10
# Thu, 16 Feb 2017 00:55:54 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 16 Feb 2017 00:55:55 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
EXPOSE 443/tcp 80/tcp
# Thu, 16 Feb 2017 00:55:57 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9b58fd6dd47e2c36e9db4e513ee45f9a4b77c440b936d0cd7bc9fabfe9cd03`  
		Last Modified: Thu, 16 Feb 2017 00:57:55 GMT  
		Size: 15.7 MB (15714629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adeef8edfca7585c7043e36b8240e54950ab2e216fe7ad82bbafa84d2e781c0`  
		Last Modified: Thu, 16 Feb 2017 00:57:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8a2986b12419ab642d157e4332cb7ae01c3c3f58d2e7bc185ab717c6d95acd`  
		Last Modified: Thu, 16 Feb 2017 00:57:49 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.11-alpine`

```console
$ docker pull nginx@sha256:43dde42aacf6a42505a54b2097a933af0e8d54852a32e87aa80303237540424e
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18028836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35b49deb2349424e52b3a71ccae12ec6690c1f464fa061aaf63f76900d515a8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:17:38 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Thu, 16 Feb 2017 00:54:58 GMT
ENV NGINX_VERSION=1.11.10
# Thu, 16 Feb 2017 00:55:54 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 16 Feb 2017 00:55:55 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
EXPOSE 443/tcp 80/tcp
# Thu, 16 Feb 2017 00:55:57 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9b58fd6dd47e2c36e9db4e513ee45f9a4b77c440b936d0cd7bc9fabfe9cd03`  
		Last Modified: Thu, 16 Feb 2017 00:57:55 GMT  
		Size: 15.7 MB (15714629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adeef8edfca7585c7043e36b8240e54950ab2e216fe7ad82bbafa84d2e781c0`  
		Last Modified: Thu, 16 Feb 2017 00:57:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8a2986b12419ab642d157e4332cb7ae01c3c3f58d2e7bc185ab717c6d95acd`  
		Last Modified: Thu, 16 Feb 2017 00:57:49 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:alpine`

```console
$ docker pull nginx@sha256:43dde42aacf6a42505a54b2097a933af0e8d54852a32e87aa80303237540424e
```

-	Platforms:
	-	linux; amd64

### `nginx:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18028836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35b49deb2349424e52b3a71ccae12ec6690c1f464fa061aaf63f76900d515a8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:17:38 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Thu, 16 Feb 2017 00:54:58 GMT
ENV NGINX_VERSION=1.11.10
# Thu, 16 Feb 2017 00:55:54 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 16 Feb 2017 00:55:55 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Thu, 16 Feb 2017 00:55:56 GMT
EXPOSE 443/tcp 80/tcp
# Thu, 16 Feb 2017 00:55:57 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9b58fd6dd47e2c36e9db4e513ee45f9a4b77c440b936d0cd7bc9fabfe9cd03`  
		Last Modified: Thu, 16 Feb 2017 00:57:55 GMT  
		Size: 15.7 MB (15714629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adeef8edfca7585c7043e36b8240e54950ab2e216fe7ad82bbafa84d2e781c0`  
		Last Modified: Thu, 16 Feb 2017 00:57:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8a2986b12419ab642d157e4332cb7ae01c3c3f58d2e7bc185ab717c6d95acd`  
		Last Modified: Thu, 16 Feb 2017 00:57:49 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10.3`

```console
$ docker pull nginx@sha256:f829870f13c0b5471083fb59375fd914cf2597d814175bf1b7e868e191be210b
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71251609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e526633b91df1ab8e27adce4649ca9c372e9ac638940c62c9989fe94c56cb102`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 28 Feb 2017 15:15:09 GMT
ENV NGINX_VERSION=1.10.3-1~jessie
# Tue, 28 Feb 2017 15:15:23 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:24 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 28 Feb 2017 15:15:25 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 28 Feb 2017 15:15:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18835c46beab9523ccbcf9a76ea4ff55c0de57a5da5e125ee02d8d43c0a9840f`  
		Last Modified: Thu, 02 Mar 2017 02:16:52 GMT  
		Size: 19.9 MB (19888041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a05fdea1a61dac5729417a71edf7238176fd4966a5a9d3256c82b905db71cd`  
		Last Modified: Thu, 02 Mar 2017 02:16:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable`

```console
$ docker pull nginx@sha256:f829870f13c0b5471083fb59375fd914cf2597d814175bf1b7e868e191be210b
```

-	Platforms:
	-	linux; amd64

### `nginx:stable` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71251609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e526633b91df1ab8e27adce4649ca9c372e9ac638940c62c9989fe94c56cb102`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 28 Feb 2017 15:15:09 GMT
ENV NGINX_VERSION=1.10.3-1~jessie
# Tue, 28 Feb 2017 15:15:23 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:24 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 28 Feb 2017 15:15:25 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 28 Feb 2017 15:15:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18835c46beab9523ccbcf9a76ea4ff55c0de57a5da5e125ee02d8d43c0a9840f`  
		Last Modified: Thu, 02 Mar 2017 02:16:52 GMT  
		Size: 19.9 MB (19888041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a05fdea1a61dac5729417a71edf7238176fd4966a5a9d3256c82b905db71cd`  
		Last Modified: Thu, 02 Mar 2017 02:16:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10`

```console
$ docker pull nginx@sha256:f829870f13c0b5471083fb59375fd914cf2597d814175bf1b7e868e191be210b
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71251609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e526633b91df1ab8e27adce4649ca9c372e9ac638940c62c9989fe94c56cb102`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 28 Feb 2017 15:15:09 GMT
ENV NGINX_VERSION=1.10.3-1~jessie
# Tue, 28 Feb 2017 15:15:23 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:24 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 28 Feb 2017 15:15:25 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 28 Feb 2017 15:15:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18835c46beab9523ccbcf9a76ea4ff55c0de57a5da5e125ee02d8d43c0a9840f`  
		Last Modified: Thu, 02 Mar 2017 02:16:52 GMT  
		Size: 19.9 MB (19888041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a05fdea1a61dac5729417a71edf7238176fd4966a5a9d3256c82b905db71cd`  
		Last Modified: Thu, 02 Mar 2017 02:16:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10.3-alpine`

```console
$ docker pull nginx@sha256:f5903273584555a30ebcfbe063ab7773b0b3667b6753df0d9680505cdfbaaa49
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17953500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f481234b230c3edfda8b56993857daa5b37c0ba229b2090e496cbd0a888c8b0`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:17:38 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 31 Jan 2017 17:39:20 GMT
ENV NGINX_VERSION=1.10.3
# Tue, 31 Jan 2017 17:40:09 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 31 Jan 2017 17:40:10 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 31 Jan 2017 17:40:10 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Tue, 31 Jan 2017 17:40:11 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 31 Jan 2017 17:40:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5d4ba733e908c71bed7a1d96ec3f44037f5867bb325e5d2da54a4a2c52789`  
		Last Modified: Tue, 31 Jan 2017 17:45:17 GMT  
		Size: 15.6 MB (15639296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a68a7c476e0d1ce302db758f83e2d783c025821ec5f691a050903bda7e3155b`  
		Last Modified: Tue, 31 Jan 2017 17:45:13 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049f7dc70f68b4c52eb4d7a206a82925665b124aa7f4838ce8d1524d1370e9b`  
		Last Modified: Tue, 31 Jan 2017 17:45:11 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable-alpine`

```console
$ docker pull nginx@sha256:f5903273584555a30ebcfbe063ab7773b0b3667b6753df0d9680505cdfbaaa49
```

-	Platforms:
	-	linux; amd64

### `nginx:stable-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17953500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f481234b230c3edfda8b56993857daa5b37c0ba229b2090e496cbd0a888c8b0`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:17:38 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 31 Jan 2017 17:39:20 GMT
ENV NGINX_VERSION=1.10.3
# Tue, 31 Jan 2017 17:40:09 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 31 Jan 2017 17:40:10 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 31 Jan 2017 17:40:10 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Tue, 31 Jan 2017 17:40:11 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 31 Jan 2017 17:40:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5d4ba733e908c71bed7a1d96ec3f44037f5867bb325e5d2da54a4a2c52789`  
		Last Modified: Tue, 31 Jan 2017 17:45:17 GMT  
		Size: 15.6 MB (15639296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a68a7c476e0d1ce302db758f83e2d783c025821ec5f691a050903bda7e3155b`  
		Last Modified: Tue, 31 Jan 2017 17:45:13 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049f7dc70f68b4c52eb4d7a206a82925665b124aa7f4838ce8d1524d1370e9b`  
		Last Modified: Tue, 31 Jan 2017 17:45:11 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10-alpine`

```console
$ docker pull nginx@sha256:f5903273584555a30ebcfbe063ab7773b0b3667b6753df0d9680505cdfbaaa49
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17953500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f481234b230c3edfda8b56993857daa5b37c0ba229b2090e496cbd0a888c8b0`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:17:38 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 31 Jan 2017 17:39:20 GMT
ENV NGINX_VERSION=1.10.3
# Tue, 31 Jan 2017 17:40:09 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 31 Jan 2017 17:40:10 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 31 Jan 2017 17:40:10 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Tue, 31 Jan 2017 17:40:11 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 31 Jan 2017 17:40:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5d4ba733e908c71bed7a1d96ec3f44037f5867bb325e5d2da54a4a2c52789`  
		Last Modified: Tue, 31 Jan 2017 17:45:17 GMT  
		Size: 15.6 MB (15639296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a68a7c476e0d1ce302db758f83e2d783c025821ec5f691a050903bda7e3155b`  
		Last Modified: Tue, 31 Jan 2017 17:45:13 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049f7dc70f68b4c52eb4d7a206a82925665b124aa7f4838ce8d1524d1370e9b`  
		Last Modified: Tue, 31 Jan 2017 17:45:11 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
