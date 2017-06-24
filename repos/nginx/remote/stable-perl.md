## `nginx:stable-perl`

```console
$ docker pull nginx@sha256:565410eee3fe4a13f8aa54449ebd371d14cd6fbf471f550444b4e06697837e25
```

-	Platforms:
	-	linux; amd64

### `nginx:stable-perl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53946434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d4730e3d2046f7c87e0314d8bb4ffd45a509de096fe56189465854025d5dca`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:54:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Jun 2017 00:56:23 GMT
ENV NGINX_VERSION=1.12.0-1~stretch
# Fri, 23 Jun 2017 00:56:24 GMT
ENV NJS_VERSION=1.12.0.0.1.10-1~stretch
# Fri, 23 Jun 2017 00:57:22 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-perl=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:57:24 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Jun 2017 00:57:25 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 00:57:25 GMT
STOPSIGNAL [SIGQUIT]
# Fri, 23 Jun 2017 00:57:26 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ea7fb81b215c6a713598114ad4e89503319c28270c1d3011884cd345ea6eee`  
		Last Modified: Sat, 24 Jun 2017 14:48:14 GMT  
		Size: 31.4 MB (31445058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292aa53a7fcb30e0f4768a85f69d119a8ed4b6baa104d811af414997a4c03723`  
		Last Modified: Sat, 24 Jun 2017 14:48:05 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
