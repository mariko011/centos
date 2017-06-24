## `nginx:mainline`

```console
$ docker pull nginx@sha256:72c7191585e9b79cde433c89955547685db00f3a8595a750339549f6acef7702
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44027833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c246cd3dd41d35f9deda43609cdeaa9aaf04d3658f9c5e38aad25c4ea5efee10`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:54:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Jun 2017 00:54:52 GMT
ENV NGINX_VERSION=1.13.1-1~stretch
# Fri, 23 Jun 2017 00:54:53 GMT
ENV NJS_VERSION=1.13.1.0.1.10-1~stretch
# Fri, 23 Jun 2017 00:55:09 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:55:10 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Jun 2017 00:55:11 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 00:55:12 GMT
STOPSIGNAL [SIGTERM]
# Fri, 23 Jun 2017 00:55:13 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c317a037432e1f18ba1a7c7bea37143095f34993c1069e3fa51539c03c65851`  
		Last Modified: Sat, 24 Jun 2017 14:37:19 GMT  
		Size: 21.5 MB (21526457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2ddac66ed03a4001499d6787eac11faadb4666760699ee271d8e3daa95a7c1`  
		Last Modified: Sat, 24 Jun 2017 14:37:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
