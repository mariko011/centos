## `nginx:latest`

```console
$ docker pull nginx@sha256:423210a5903e9683d2bc8436ed06343ad5955c1aec71a04e1d45bd70b0d68460
```

-	Platforms:
	-	linux; amd64

### `nginx:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44050407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e6d42c70b3f79c5d57c170526592168992eb3303a6594c439302fabd92d9a3`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:54:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 11 Jul 2017 18:55:39 GMT
ENV NGINX_VERSION=1.13.3-1~stretch
# Tue, 11 Jul 2017 18:55:40 GMT
ENV NJS_VERSION=1.13.3.0.1.11-1~stretch
# Tue, 11 Jul 2017 18:55:57 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 18:56:00 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 11 Jul 2017 18:56:01 GMT
EXPOSE 80/tcp
# Tue, 11 Jul 2017 18:56:01 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Jul 2017 18:56:02 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6268bec1a4db201a0fc13660392758315234abfd95813f7319bba391c4569e1`  
		Last Modified: Tue, 11 Jul 2017 19:04:03 GMT  
		Size: 21.5 MB (21549034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677a76dde9c6d4647001b84c201f904ed500894c903389959f562a1bb6d2ef74`  
		Last Modified: Tue, 11 Jul 2017 19:04:00 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
