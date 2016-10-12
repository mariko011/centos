<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nginx`

-	[`nginx:1.11.5`](#nginx1115)
-	[`nginx:mainline`](#nginxmainline)
-	[`nginx:1`](#nginx1)
-	[`nginx:1.11`](#nginx111)
-	[`nginx:latest`](#nginxlatest)
-	[`nginx:1.11.5-alpine`](#nginx1115-alpine)
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

## `nginx:1.11.5`

```console
$ docker pull nginx@sha256:e40499ca855c9edfb212e1c3ee1a6ba8b2d873a294d897b4840d49f94d20487c
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71488865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5311a310510e5eaff3cfbb22b65d9ce11ddc15e266833909551334d48491921`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:33 GMT
ENV NGINX_VERSION=1.11.5-1~jessie
# Wed, 12 Oct 2016 16:59:48 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Oct 2016 16:59:49 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 16:59:50 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 16:59:50 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a0fbbae14864e06e14f89126551d004555d9e2c13591105862ca1f9a418e9d`  
		Last Modified: Wed, 12 Oct 2016 17:01:11 GMT  
		Size: 20.1 MB (20134306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd37c8684bca3df2090b8b8acce020837d560ec8917f25714e45e7d1f4611e`  
		Last Modified: Wed, 12 Oct 2016 17:01:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline`

```console
$ docker pull nginx@sha256:e40499ca855c9edfb212e1c3ee1a6ba8b2d873a294d897b4840d49f94d20487c
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71488865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5311a310510e5eaff3cfbb22b65d9ce11ddc15e266833909551334d48491921`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:33 GMT
ENV NGINX_VERSION=1.11.5-1~jessie
# Wed, 12 Oct 2016 16:59:48 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Oct 2016 16:59:49 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 16:59:50 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 16:59:50 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a0fbbae14864e06e14f89126551d004555d9e2c13591105862ca1f9a418e9d`  
		Last Modified: Wed, 12 Oct 2016 17:01:11 GMT  
		Size: 20.1 MB (20134306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd37c8684bca3df2090b8b8acce020837d560ec8917f25714e45e7d1f4611e`  
		Last Modified: Wed, 12 Oct 2016 17:01:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1`

```console
$ docker pull nginx@sha256:e40499ca855c9edfb212e1c3ee1a6ba8b2d873a294d897b4840d49f94d20487c
```

-	Platforms:
	-	linux; amd64

### `nginx:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71488865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5311a310510e5eaff3cfbb22b65d9ce11ddc15e266833909551334d48491921`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:33 GMT
ENV NGINX_VERSION=1.11.5-1~jessie
# Wed, 12 Oct 2016 16:59:48 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Oct 2016 16:59:49 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 16:59:50 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 16:59:50 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a0fbbae14864e06e14f89126551d004555d9e2c13591105862ca1f9a418e9d`  
		Last Modified: Wed, 12 Oct 2016 17:01:11 GMT  
		Size: 20.1 MB (20134306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd37c8684bca3df2090b8b8acce020837d560ec8917f25714e45e7d1f4611e`  
		Last Modified: Wed, 12 Oct 2016 17:01:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.11`

```console
$ docker pull nginx@sha256:e40499ca855c9edfb212e1c3ee1a6ba8b2d873a294d897b4840d49f94d20487c
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71488865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5311a310510e5eaff3cfbb22b65d9ce11ddc15e266833909551334d48491921`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:33 GMT
ENV NGINX_VERSION=1.11.5-1~jessie
# Wed, 12 Oct 2016 16:59:48 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Oct 2016 16:59:49 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 16:59:50 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 16:59:50 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a0fbbae14864e06e14f89126551d004555d9e2c13591105862ca1f9a418e9d`  
		Last Modified: Wed, 12 Oct 2016 17:01:11 GMT  
		Size: 20.1 MB (20134306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd37c8684bca3df2090b8b8acce020837d560ec8917f25714e45e7d1f4611e`  
		Last Modified: Wed, 12 Oct 2016 17:01:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:latest`

```console
$ docker pull nginx@sha256:e40499ca855c9edfb212e1c3ee1a6ba8b2d873a294d897b4840d49f94d20487c
```

-	Platforms:
	-	linux; amd64

### `nginx:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71488865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5311a310510e5eaff3cfbb22b65d9ce11ddc15e266833909551334d48491921`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:33 GMT
ENV NGINX_VERSION=1.11.5-1~jessie
# Wed, 12 Oct 2016 16:59:48 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Oct 2016 16:59:49 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 16:59:50 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 16:59:50 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a0fbbae14864e06e14f89126551d004555d9e2c13591105862ca1f9a418e9d`  
		Last Modified: Wed, 12 Oct 2016 17:01:11 GMT  
		Size: 20.1 MB (20134306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd37c8684bca3df2090b8b8acce020837d560ec8917f25714e45e7d1f4611e`  
		Last Modified: Wed, 12 Oct 2016 17:01:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.11.5-alpine`

```console
$ docker pull nginx@sha256:76076006b2492c84faf2de87a265af590b490aa77b1560c994aceb0cb522d26c
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18024069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbde8633605257e2fbb41e7d2084ca12f31b2d40b800cc7e38a5a0a47219e598`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:10:22 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:51 GMT
ENV NGINX_VERSION=1.11.5
# Wed, 12 Oct 2016 17:00:53 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 17:00:54 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 12 Oct 2016 17:00:54 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Wed, 12 Oct 2016 17:00:55 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 17:00:55 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257c01bd33037504926e3bc653b32236db4d92489cb52522ff10091cde3bd8ba`  
		Last Modified: Wed, 12 Oct 2016 17:02:13 GMT  
		Size: 15.7 MB (15710025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ce5dc7a6ed3224556e9fa917b31c6d7e04a223bcd78a5aa8e1c0bca9c86ab9`  
		Last Modified: Wed, 12 Oct 2016 17:02:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff51e12895207ac6eb4c4a03b1f144468257a98d16ed79be26743882c26225d`  
		Last Modified: Wed, 12 Oct 2016 17:02:09 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline-alpine`

```console
$ docker pull nginx@sha256:76076006b2492c84faf2de87a265af590b490aa77b1560c994aceb0cb522d26c
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18024069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbde8633605257e2fbb41e7d2084ca12f31b2d40b800cc7e38a5a0a47219e598`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:10:22 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:51 GMT
ENV NGINX_VERSION=1.11.5
# Wed, 12 Oct 2016 17:00:53 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 17:00:54 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 12 Oct 2016 17:00:54 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Wed, 12 Oct 2016 17:00:55 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 17:00:55 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257c01bd33037504926e3bc653b32236db4d92489cb52522ff10091cde3bd8ba`  
		Last Modified: Wed, 12 Oct 2016 17:02:13 GMT  
		Size: 15.7 MB (15710025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ce5dc7a6ed3224556e9fa917b31c6d7e04a223bcd78a5aa8e1c0bca9c86ab9`  
		Last Modified: Wed, 12 Oct 2016 17:02:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff51e12895207ac6eb4c4a03b1f144468257a98d16ed79be26743882c26225d`  
		Last Modified: Wed, 12 Oct 2016 17:02:09 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1-alpine`

```console
$ docker pull nginx@sha256:76076006b2492c84faf2de87a265af590b490aa77b1560c994aceb0cb522d26c
```

-	Platforms:
	-	linux; amd64

### `nginx:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18024069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbde8633605257e2fbb41e7d2084ca12f31b2d40b800cc7e38a5a0a47219e598`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:10:22 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:51 GMT
ENV NGINX_VERSION=1.11.5
# Wed, 12 Oct 2016 17:00:53 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 17:00:54 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 12 Oct 2016 17:00:54 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Wed, 12 Oct 2016 17:00:55 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 17:00:55 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257c01bd33037504926e3bc653b32236db4d92489cb52522ff10091cde3bd8ba`  
		Last Modified: Wed, 12 Oct 2016 17:02:13 GMT  
		Size: 15.7 MB (15710025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ce5dc7a6ed3224556e9fa917b31c6d7e04a223bcd78a5aa8e1c0bca9c86ab9`  
		Last Modified: Wed, 12 Oct 2016 17:02:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff51e12895207ac6eb4c4a03b1f144468257a98d16ed79be26743882c26225d`  
		Last Modified: Wed, 12 Oct 2016 17:02:09 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.11-alpine`

```console
$ docker pull nginx@sha256:76076006b2492c84faf2de87a265af590b490aa77b1560c994aceb0cb522d26c
```

-	Platforms:
	-	linux; amd64

### `nginx:1.11-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18024069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbde8633605257e2fbb41e7d2084ca12f31b2d40b800cc7e38a5a0a47219e598`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:10:22 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:51 GMT
ENV NGINX_VERSION=1.11.5
# Wed, 12 Oct 2016 17:00:53 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 17:00:54 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 12 Oct 2016 17:00:54 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Wed, 12 Oct 2016 17:00:55 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 17:00:55 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257c01bd33037504926e3bc653b32236db4d92489cb52522ff10091cde3bd8ba`  
		Last Modified: Wed, 12 Oct 2016 17:02:13 GMT  
		Size: 15.7 MB (15710025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ce5dc7a6ed3224556e9fa917b31c6d7e04a223bcd78a5aa8e1c0bca9c86ab9`  
		Last Modified: Wed, 12 Oct 2016 17:02:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff51e12895207ac6eb4c4a03b1f144468257a98d16ed79be26743882c26225d`  
		Last Modified: Wed, 12 Oct 2016 17:02:09 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:alpine`

```console
$ docker pull nginx@sha256:36b95728c0d9b6668bb8e4aa31476de27aeedbeba07dcddb6821b76fb72830b2
```

-	Platforms:
	-	linux; amd64

### `nginx:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16763589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00bc1e841a8fb7057b3a231033af2bd126011cb89d12c41050085f42270ccb87`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:10:22 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Sep 2016 17:10:22 GMT
ENV NGINX_VERSION=1.11.4
# Fri, 23 Sep 2016 17:11:11 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Sep 2016 17:11:12 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Fri, 23 Sep 2016 17:11:12 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Fri, 23 Sep 2016 17:11:13 GMT
EXPOSE 443/tcp 80/tcp
# Fri, 23 Sep 2016 17:11:13 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550be1410575d0bad7733be6c3d3370cf224239ab6b7e5d12fd23eb1fbff2264`  
		Last Modified: Fri, 23 Sep 2016 17:11:24 GMT  
		Size: 14.4 MB (14449539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89cfc3ca4f438260b31a68af5c25ebcbdce20591fcb89dffdf52e0b0f3c2e63`  
		Last Modified: Fri, 23 Sep 2016 17:11:20 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269d010cc2b471e735b1524b68404251cc1b174ea3346e9fe4dec07ca8a17218`  
		Last Modified: Fri, 23 Sep 2016 17:11:20 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10.1`

```console
$ docker pull nginx@sha256:35779791c05d119df4fe476db8f47c0bee5943c83eba5656a15fc046db48178b
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71188609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2b4c2d7bf53b4d0d28fa6af60e51c418317d2ada40ed6e5d5c290248d2a469`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Sep 2016 20:52:30 GMT
ENV NGINX_VERSION=1.10.1-1~jessie
# Fri, 23 Sep 2016 20:52:47 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:52:48 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Sep 2016 20:52:49 GMT
EXPOSE 443/tcp 80/tcp
# Fri, 23 Sep 2016 20:52:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cc0180eabb1987794ecbc3b287db968471414a81bbe11a3ba6906d17b646c8`  
		Last Modified: Fri, 23 Sep 2016 20:53:01 GMT  
		Size: 19.8 MB (19834047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f16cec223741270a47bf9b16dcd485083442c1467b6f91b64a963f8efa0529c`  
		Last Modified: Fri, 23 Sep 2016 20:52:56 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable`

```console
$ docker pull nginx@sha256:35779791c05d119df4fe476db8f47c0bee5943c83eba5656a15fc046db48178b
```

-	Platforms:
	-	linux; amd64

### `nginx:stable` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71188609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2b4c2d7bf53b4d0d28fa6af60e51c418317d2ada40ed6e5d5c290248d2a469`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Sep 2016 20:52:30 GMT
ENV NGINX_VERSION=1.10.1-1~jessie
# Fri, 23 Sep 2016 20:52:47 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:52:48 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Sep 2016 20:52:49 GMT
EXPOSE 443/tcp 80/tcp
# Fri, 23 Sep 2016 20:52:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cc0180eabb1987794ecbc3b287db968471414a81bbe11a3ba6906d17b646c8`  
		Last Modified: Fri, 23 Sep 2016 20:53:01 GMT  
		Size: 19.8 MB (19834047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f16cec223741270a47bf9b16dcd485083442c1467b6f91b64a963f8efa0529c`  
		Last Modified: Fri, 23 Sep 2016 20:52:56 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10`

```console
$ docker pull nginx@sha256:35779791c05d119df4fe476db8f47c0bee5943c83eba5656a15fc046db48178b
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71188609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2b4c2d7bf53b4d0d28fa6af60e51c418317d2ada40ed6e5d5c290248d2a469`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Sep 2016 20:52:30 GMT
ENV NGINX_VERSION=1.10.1-1~jessie
# Fri, 23 Sep 2016 20:52:47 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:52:48 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Sep 2016 20:52:49 GMT
EXPOSE 443/tcp 80/tcp
# Fri, 23 Sep 2016 20:52:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cc0180eabb1987794ecbc3b287db968471414a81bbe11a3ba6906d17b646c8`  
		Last Modified: Fri, 23 Sep 2016 20:53:01 GMT  
		Size: 19.8 MB (19834047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f16cec223741270a47bf9b16dcd485083442c1467b6f91b64a963f8efa0529c`  
		Last Modified: Fri, 23 Sep 2016 20:52:56 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10.1-alpine`

```console
$ docker pull nginx@sha256:ae7db504b1299d6c9a37723eb50196eff7a6e6cffffd7feb7c325cdf9b0e2a42
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16707321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84e20a9b8b556ea18731ac3eb442a0f1a2d7e63dd8381877e302b7459182367`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:10:22 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Sep 2016 17:12:05 GMT
ENV NGINX_VERSION=1.10.1
# Fri, 23 Sep 2016 17:12:51 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Sep 2016 17:12:52 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Fri, 23 Sep 2016 17:12:53 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Fri, 23 Sep 2016 17:12:53 GMT
EXPOSE 443/tcp 80/tcp
# Fri, 23 Sep 2016 17:12:53 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd0e3dcad7560811ddaabf0c175c99e36dd361cd4dc9a885a5c1cd7146625e8`  
		Last Modified: Fri, 23 Sep 2016 17:13:05 GMT  
		Size: 14.4 MB (14393274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b604a99db601cfd126617000b6c881e7623525c2e0f6b7f8758638a200f95`  
		Last Modified: Fri, 23 Sep 2016 17:13:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa995e3740032386c229dbeb5ac92f984b356ee8735900bad345f4e93c83d9b7`  
		Last Modified: Fri, 23 Sep 2016 17:13:01 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable-alpine`

```console
$ docker pull nginx@sha256:ae7db504b1299d6c9a37723eb50196eff7a6e6cffffd7feb7c325cdf9b0e2a42
```

-	Platforms:
	-	linux; amd64

### `nginx:stable-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16707321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84e20a9b8b556ea18731ac3eb442a0f1a2d7e63dd8381877e302b7459182367`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:10:22 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Sep 2016 17:12:05 GMT
ENV NGINX_VERSION=1.10.1
# Fri, 23 Sep 2016 17:12:51 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Sep 2016 17:12:52 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Fri, 23 Sep 2016 17:12:53 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Fri, 23 Sep 2016 17:12:53 GMT
EXPOSE 443/tcp 80/tcp
# Fri, 23 Sep 2016 17:12:53 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd0e3dcad7560811ddaabf0c175c99e36dd361cd4dc9a885a5c1cd7146625e8`  
		Last Modified: Fri, 23 Sep 2016 17:13:05 GMT  
		Size: 14.4 MB (14393274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b604a99db601cfd126617000b6c881e7623525c2e0f6b7f8758638a200f95`  
		Last Modified: Fri, 23 Sep 2016 17:13:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa995e3740032386c229dbeb5ac92f984b356ee8735900bad345f4e93c83d9b7`  
		Last Modified: Fri, 23 Sep 2016 17:13:01 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.10-alpine`

```console
$ docker pull nginx@sha256:ae7db504b1299d6c9a37723eb50196eff7a6e6cffffd7feb7c325cdf9b0e2a42
```

-	Platforms:
	-	linux; amd64

### `nginx:1.10-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16707321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84e20a9b8b556ea18731ac3eb442a0f1a2d7e63dd8381877e302b7459182367`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:10:22 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Sep 2016 17:12:05 GMT
ENV NGINX_VERSION=1.10.1
# Fri, 23 Sep 2016 17:12:51 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-file-aio 		--with-http_v2_module 		--with-ipv6 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEYS" 	&& gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Sep 2016 17:12:52 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Fri, 23 Sep 2016 17:12:53 GMT
COPY file:d15ceb73c6ea776c299822265ed38cd2fd8a78804f4f4889094d1dd1e292984b in /etc/nginx/conf.d/default.conf 
# Fri, 23 Sep 2016 17:12:53 GMT
EXPOSE 443/tcp 80/tcp
# Fri, 23 Sep 2016 17:12:53 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd0e3dcad7560811ddaabf0c175c99e36dd361cd4dc9a885a5c1cd7146625e8`  
		Last Modified: Fri, 23 Sep 2016 17:13:05 GMT  
		Size: 14.4 MB (14393274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930b604a99db601cfd126617000b6c881e7623525c2e0f6b7f8758638a200f95`  
		Last Modified: Fri, 23 Sep 2016 17:13:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa995e3740032386c229dbeb5ac92f984b356ee8735900bad345f4e93c83d9b7`  
		Last Modified: Fri, 23 Sep 2016 17:13:01 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
