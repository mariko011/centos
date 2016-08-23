<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `nginx`

-	[`nginx:1.11.3`](#nginx1113)
-	[`nginx:mainline`](#nginxmainline)
-	[`nginx:1`](#nginx1)
-	[`nginx:1.11`](#nginx111)
-	[`nginx:latest`](#nginxlatest)
-	[`nginx:1.11.3-alpine`](#nginx1113-alpine)
-	[`nginx:mainline-alpine`](#nginxmainline-alpine)
-	[`nginx:1-alpine`](#nginx1-alpine)
-	[`nginx:1.11-alpine`](#nginx111-alpine)
-	[`nginx:alpine`](#nginxalpine)
-	[`nginx:1.10.1`](#nginx1101)
-	[`nginx:stable`](#nginxstable)
-	[`nginx:1.10`](#nginx110)
-	[`nginx:1.10.1-alpine`](#nginx1101-alpine)
-	[`nginx:stable-alpine`](#nginxstable-alpine)
-	[`nginx:1.10-alpine`](#nginx110-alpine)

## `nginx:1.11.3`

```console
$ docker pull nginx@sha256:d33834dd25d330da75dccd8add3ae2c9d7bb97f502b421b02cecb6cb7b34a1b6
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71413220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4efb2fcdb1ab05fb03c9435234343c1cc65289eeb016be86193e88d3a5d84f6b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:49:31 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:49:33 GMT
ENV NGINX_VERSION=1.11.3-1~jessie
# Tue, 23 Aug 2016 18:51:19 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:51:21 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:51:22 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:51:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc04568277e2ac7eeab8071421127677b1d912bec0ff7319cbfab5925c65179`  
		Last Modified: Tue, 23 Aug 2016 18:56:48 GMT  
		Size: 20.0 MB (20047416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bed9719ddcb355fb9220423d3dd9cd6c41d8e0be5f44580e3929da574db4530`  
		Last Modified: Tue, 23 Aug 2016 18:56:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline`

```console
$ docker pull nginx@sha256:d33834dd25d330da75dccd8add3ae2c9d7bb97f502b421b02cecb6cb7b34a1b6
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71413220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4efb2fcdb1ab05fb03c9435234343c1cc65289eeb016be86193e88d3a5d84f6b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:49:31 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:49:33 GMT
ENV NGINX_VERSION=1.11.3-1~jessie
# Tue, 23 Aug 2016 18:51:19 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:51:21 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:51:22 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:51:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc04568277e2ac7eeab8071421127677b1d912bec0ff7319cbfab5925c65179`  
		Last Modified: Tue, 23 Aug 2016 18:56:48 GMT  
		Size: 20.0 MB (20047416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bed9719ddcb355fb9220423d3dd9cd6c41d8e0be5f44580e3929da574db4530`  
		Last Modified: Tue, 23 Aug 2016 18:56:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1`

```console
$ docker pull nginx@sha256:d33834dd25d330da75dccd8add3ae2c9d7bb97f502b421b02cecb6cb7b34a1b6
```

-	Platforms:
	-	linux; amd64

### `nginx:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71413220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4efb2fcdb1ab05fb03c9435234343c1cc65289eeb016be86193e88d3a5d84f6b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:49:31 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:49:33 GMT
ENV NGINX_VERSION=1.11.3-1~jessie
# Tue, 23 Aug 2016 18:51:19 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:51:21 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:51:22 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:51:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc04568277e2ac7eeab8071421127677b1d912bec0ff7319cbfab5925c65179`  
		Last Modified: Tue, 23 Aug 2016 18:56:48 GMT  
		Size: 20.0 MB (20047416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bed9719ddcb355fb9220423d3dd9cd6c41d8e0be5f44580e3929da574db4530`  
		Last Modified: Tue, 23 Aug 2016 18:56:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.11`

```console
$ docker pull nginx@sha256:d33834dd25d330da75dccd8add3ae2c9d7bb97f502b421b02cecb6cb7b34a1b6
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71413220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4efb2fcdb1ab05fb03c9435234343c1cc65289eeb016be86193e88d3a5d84f6b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:49:31 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:49:33 GMT
ENV NGINX_VERSION=1.11.3-1~jessie
# Tue, 23 Aug 2016 18:51:19 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:51:21 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:51:22 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:51:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc04568277e2ac7eeab8071421127677b1d912bec0ff7319cbfab5925c65179`  
		Last Modified: Tue, 23 Aug 2016 18:56:48 GMT  
		Size: 20.0 MB (20047416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bed9719ddcb355fb9220423d3dd9cd6c41d8e0be5f44580e3929da574db4530`  
		Last Modified: Tue, 23 Aug 2016 18:56:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:latest`

```console
$ docker pull nginx@sha256:d33834dd25d330da75dccd8add3ae2c9d7bb97f502b421b02cecb6cb7b34a1b6
```

-	Platforms:
	-	linux; amd64

### `nginx:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71413220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4efb2fcdb1ab05fb03c9435234343c1cc65289eeb016be86193e88d3a5d84f6b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:49:31 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:49:33 GMT
ENV NGINX_VERSION=1.11.3-1~jessie
# Tue, 23 Aug 2016 18:51:19 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:51:21 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:51:22 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:51:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc04568277e2ac7eeab8071421127677b1d912bec0ff7319cbfab5925c65179`  
		Last Modified: Tue, 23 Aug 2016 18:56:48 GMT  
		Size: 20.0 MB (20047416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bed9719ddcb355fb9220423d3dd9cd6c41d8e0be5f44580e3929da574db4530`  
		Last Modified: Tue, 23 Aug 2016 18:56:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.11.3-alpine`

```console
$ docker pull nginx@sha256:01a97a837e2af35ae0e2bf0d5609af4b1e2f698f0856b36e3975c9d5eec3f836
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11.3-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17135921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935bd7bf8ea67cda09fd76cb2b3c8ac36e365fd68f30084da395fb0eb4e3200a`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Tue, 23 Aug 2016 18:51:25 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:51:26 GMT
ENV NGINX_VERSION=1.11.3
# Tue, 23 Aug 2016 18:52:57 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:52:59 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf
# Tue, 23 Aug 2016 18:53:01 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf
# Tue, 23 Aug 2016 18:53:02 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:53:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28cfd0488b6e8ffd963f171af7cecb333ed26628574ece26280e73e981e5cb8`  
		Last Modified: Tue, 23 Aug 2016 18:57:53 GMT  
		Size: 14.8 MB (14824520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ff5e5ae616efd4609b29491be65e85bf02c9932447506600c6f561310170d`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7648f5d8700617efeb6e590795fc907db5557355e96c708c5659d509bfa99cd6`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline-alpine`

```console
$ docker pull nginx@sha256:01a97a837e2af35ae0e2bf0d5609af4b1e2f698f0856b36e3975c9d5eec3f836
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17135921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935bd7bf8ea67cda09fd76cb2b3c8ac36e365fd68f30084da395fb0eb4e3200a`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Tue, 23 Aug 2016 18:51:25 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:51:26 GMT
ENV NGINX_VERSION=1.11.3
# Tue, 23 Aug 2016 18:52:57 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:52:59 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf
# Tue, 23 Aug 2016 18:53:01 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf
# Tue, 23 Aug 2016 18:53:02 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:53:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28cfd0488b6e8ffd963f171af7cecb333ed26628574ece26280e73e981e5cb8`  
		Last Modified: Tue, 23 Aug 2016 18:57:53 GMT  
		Size: 14.8 MB (14824520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ff5e5ae616efd4609b29491be65e85bf02c9932447506600c6f561310170d`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7648f5d8700617efeb6e590795fc907db5557355e96c708c5659d509bfa99cd6`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1-alpine`

```console
$ docker pull nginx@sha256:01a97a837e2af35ae0e2bf0d5609af4b1e2f698f0856b36e3975c9d5eec3f836
```

-	Platforms:
	-	linux; amd64

### `nginx:1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17135921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935bd7bf8ea67cda09fd76cb2b3c8ac36e365fd68f30084da395fb0eb4e3200a`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Tue, 23 Aug 2016 18:51:25 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:51:26 GMT
ENV NGINX_VERSION=1.11.3
# Tue, 23 Aug 2016 18:52:57 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:52:59 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf
# Tue, 23 Aug 2016 18:53:01 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf
# Tue, 23 Aug 2016 18:53:02 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:53:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28cfd0488b6e8ffd963f171af7cecb333ed26628574ece26280e73e981e5cb8`  
		Last Modified: Tue, 23 Aug 2016 18:57:53 GMT  
		Size: 14.8 MB (14824520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ff5e5ae616efd4609b29491be65e85bf02c9932447506600c6f561310170d`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7648f5d8700617efeb6e590795fc907db5557355e96c708c5659d509bfa99cd6`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.11-alpine`

```console
$ docker pull nginx@sha256:01a97a837e2af35ae0e2bf0d5609af4b1e2f698f0856b36e3975c9d5eec3f836
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17135921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935bd7bf8ea67cda09fd76cb2b3c8ac36e365fd68f30084da395fb0eb4e3200a`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Tue, 23 Aug 2016 18:51:25 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:51:26 GMT
ENV NGINX_VERSION=1.11.3
# Tue, 23 Aug 2016 18:52:57 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:52:59 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf
# Tue, 23 Aug 2016 18:53:01 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf
# Tue, 23 Aug 2016 18:53:02 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:53:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28cfd0488b6e8ffd963f171af7cecb333ed26628574ece26280e73e981e5cb8`  
		Last Modified: Tue, 23 Aug 2016 18:57:53 GMT  
		Size: 14.8 MB (14824520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ff5e5ae616efd4609b29491be65e85bf02c9932447506600c6f561310170d`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7648f5d8700617efeb6e590795fc907db5557355e96c708c5659d509bfa99cd6`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:alpine`

```console
$ docker pull nginx@sha256:01a97a837e2af35ae0e2bf0d5609af4b1e2f698f0856b36e3975c9d5eec3f836
```

-	Platforms:
	-	linux; amd64

### `nginx:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17135921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935bd7bf8ea67cda09fd76cb2b3c8ac36e365fd68f30084da395fb0eb4e3200a`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Tue, 23 Aug 2016 18:51:25 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:51:26 GMT
ENV NGINX_VERSION=1.11.3
# Tue, 23 Aug 2016 18:52:57 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:52:59 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf
# Tue, 23 Aug 2016 18:53:01 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf
# Tue, 23 Aug 2016 18:53:02 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:53:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28cfd0488b6e8ffd963f171af7cecb333ed26628574ece26280e73e981e5cb8`  
		Last Modified: Tue, 23 Aug 2016 18:57:53 GMT  
		Size: 14.8 MB (14824520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ff5e5ae616efd4609b29491be65e85bf02c9932447506600c6f561310170d`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7648f5d8700617efeb6e590795fc907db5557355e96c708c5659d509bfa99cd6`  
		Last Modified: Tue, 23 Aug 2016 18:57:45 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10.1`

```console
$ docker pull nginx@sha256:4c54f4d6e452a8d4f610c13f2b7d72e7870ac9fadfab17e09e729707280f6592
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71195391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d396eb911f4740dc9deb4025bdaf48230bd3721f8ca9b7dba959417926c587`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:49:31 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:53:05 GMT
ENV NGINX_VERSION=1.10.1-1~jessie
# Tue, 23 Aug 2016 18:54:42 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:54:47 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:54:48 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:54:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21af961bc3ea42f82ab64f411a39432937188d9ab7a210b4dfd179174790d44a`  
		Last Modified: Tue, 23 Aug 2016 18:58:59 GMT  
		Size: 19.8 MB (19829585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0790d050b1cc391f388d36a3311b3814f3f50a6a62a6f0ea7bc2068d3950079a`  
		Last Modified: Tue, 23 Aug 2016 18:58:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable`

```console
$ docker pull nginx@sha256:4c54f4d6e452a8d4f610c13f2b7d72e7870ac9fadfab17e09e729707280f6592
```

-	Platforms:
	-	linux; amd64

### `nginx:stable` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71195391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d396eb911f4740dc9deb4025bdaf48230bd3721f8ca9b7dba959417926c587`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:49:31 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:53:05 GMT
ENV NGINX_VERSION=1.10.1-1~jessie
# Tue, 23 Aug 2016 18:54:42 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:54:47 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:54:48 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:54:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21af961bc3ea42f82ab64f411a39432937188d9ab7a210b4dfd179174790d44a`  
		Last Modified: Tue, 23 Aug 2016 18:58:59 GMT  
		Size: 19.8 MB (19829585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0790d050b1cc391f388d36a3311b3814f3f50a6a62a6f0ea7bc2068d3950079a`  
		Last Modified: Tue, 23 Aug 2016 18:58:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10`

```console
$ docker pull nginx@sha256:4c54f4d6e452a8d4f610c13f2b7d72e7870ac9fadfab17e09e729707280f6592
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71195391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d396eb911f4740dc9deb4025bdaf48230bd3721f8ca9b7dba959417926c587`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 23 Aug 2016 18:49:31 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:53:05 GMT
ENV NGINX_VERSION=1.10.1-1~jessie
# Tue, 23 Aug 2016 18:54:42 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:54:47 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:54:48 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:54:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21af961bc3ea42f82ab64f411a39432937188d9ab7a210b4dfd179174790d44a`  
		Last Modified: Tue, 23 Aug 2016 18:58:59 GMT  
		Size: 19.8 MB (19829585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0790d050b1cc391f388d36a3311b3814f3f50a6a62a6f0ea7bc2068d3950079a`  
		Last Modified: Tue, 23 Aug 2016 18:58:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10.1-alpine`

```console
$ docker pull nginx@sha256:e7dc22ff9b409f0f9d7a9ee1377208a03a9e0abaf968efda3e2966d0e2ac1eb2
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10.1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17084758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07e2bb859e2a637dc380b69a192a680d5f2c5219939daf19c472a93af82c662`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Tue, 23 Aug 2016 18:51:25 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:54:50 GMT
ENV NGINX_VERSION=1.10.1
# Tue, 23 Aug 2016 18:56:21 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:56:23 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf
# Tue, 23 Aug 2016 18:56:25 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf
# Tue, 23 Aug 2016 18:56:25 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:56:27 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebad681078f85a5bc65bb312c7de641e64f771fdcc1f6ba4c1f4cd9e130e747`  
		Last Modified: Tue, 23 Aug 2016 18:59:42 GMT  
		Size: 14.8 MB (14773355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e4979f360e53eafbc96a430dd7554db66874db2d321632244a3d6350aeccdd`  
		Last Modified: Tue, 23 Aug 2016 18:59:35 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d47a317b969438a5e93f734797de52f8419eec77fa901fe6b3b898060576e`  
		Last Modified: Tue, 23 Aug 2016 18:59:36 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable-alpine`

```console
$ docker pull nginx@sha256:e7dc22ff9b409f0f9d7a9ee1377208a03a9e0abaf968efda3e2966d0e2ac1eb2
```

-	Platforms:
	-	linux; amd64

### `nginx:stable-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17084758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07e2bb859e2a637dc380b69a192a680d5f2c5219939daf19c472a93af82c662`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Tue, 23 Aug 2016 18:51:25 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:54:50 GMT
ENV NGINX_VERSION=1.10.1
# Tue, 23 Aug 2016 18:56:21 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:56:23 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf
# Tue, 23 Aug 2016 18:56:25 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf
# Tue, 23 Aug 2016 18:56:25 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:56:27 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebad681078f85a5bc65bb312c7de641e64f771fdcc1f6ba4c1f4cd9e130e747`  
		Last Modified: Tue, 23 Aug 2016 18:59:42 GMT  
		Size: 14.8 MB (14773355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e4979f360e53eafbc96a430dd7554db66874db2d321632244a3d6350aeccdd`  
		Last Modified: Tue, 23 Aug 2016 18:59:35 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d47a317b969438a5e93f734797de52f8419eec77fa901fe6b3b898060576e`  
		Last Modified: Tue, 23 Aug 2016 18:59:36 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10-alpine`

```console
$ docker pull nginx@sha256:e7dc22ff9b409f0f9d7a9ee1377208a03a9e0abaf968efda3e2966d0e2ac1eb2
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17084758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07e2bb859e2a637dc380b69a192a680d5f2c5219939daf19c472a93af82c662`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Tue, 23 Aug 2016 18:51:25 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 23 Aug 2016 18:54:50 GMT
ENV NGINX_VERSION=1.10.1
# Tue, 23 Aug 2016 18:56:21 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 23 Aug 2016 18:56:23 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf
# Tue, 23 Aug 2016 18:56:25 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf
# Tue, 23 Aug 2016 18:56:25 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 23 Aug 2016 18:56:27 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebad681078f85a5bc65bb312c7de641e64f771fdcc1f6ba4c1f4cd9e130e747`  
		Last Modified: Tue, 23 Aug 2016 18:59:42 GMT  
		Size: 14.8 MB (14773355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e4979f360e53eafbc96a430dd7554db66874db2d321632244a3d6350aeccdd`  
		Last Modified: Tue, 23 Aug 2016 18:59:35 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d47a317b969438a5e93f734797de52f8419eec77fa901fe6b3b898060576e`  
		Last Modified: Tue, 23 Aug 2016 18:59:36 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
