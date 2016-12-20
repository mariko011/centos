## `nginx:mainline`

```console
$ docker pull nginx@sha256:2a07a07e5bbf62e7b583cbb5257357c7e0ba1a8e9650e8fa76d999a60968530f
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71534919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19146d5729dc303af0b89be53ddfe8ece1920d9467e2b5a903d846f2fe0e9b5d`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 03:08:11 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 20 Dec 2016 19:45:19 GMT
ENV NGINX_VERSION=1.11.7-1~jessie
# Tue, 20 Dec 2016 19:45:38 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Dec 2016 19:45:39 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 20 Dec 2016 19:45:40 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 20 Dec 2016 19:45:40 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f0219ba3ea802cf10ed9b7e73146ea4189a1341cbebae855035d85b420c3ae`  
		Last Modified: Tue, 20 Dec 2016 19:47:11 GMT  
		Size: 20.2 MB (20171598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b624bee1c2cdb2a603102412eec6fc20386a60965f33244f1ef256f29e299`  
		Last Modified: Tue, 20 Dec 2016 19:47:06 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
