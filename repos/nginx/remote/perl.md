## `nginx:perl`

```console
$ docker pull nginx@sha256:97799140076b9204145d374824768ddbdb9bd7fb523ca1b96676b79530109b73
```

-	Platforms:
	-	linux; amd64

### `nginx:perl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54722500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31cd7ffe361722d54ef900bb939d561134997f42b70209da9ced4a91a0e7a86a`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 08 May 2017 23:36:50 GMT
ADD file:a90ec883129f86b093f65b32e8e539168b462552a9fbf1c74d651a9bd9e9fc66 in / 
# Mon, 08 May 2017 23:36:50 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:43:02 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 30 May 2017 17:07:11 GMT
ENV NGINX_VERSION=1.13.1-1~stretch
# Tue, 30 May 2017 17:07:52 GMT
ENV NJS_VERSION=1.13.1.0.1.10-1~stretch
# Tue, 30 May 2017 17:12:39 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-perl=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:12:52 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 30 May 2017 17:12:54 GMT
EXPOSE 80/tcp
# Tue, 30 May 2017 17:13:15 GMT
STOPSIGNAL [SIGTERM]
# Tue, 30 May 2017 17:13:58 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3d52d8f55fb0b74ea0a24134f75efeff780c4e1f407073def2ae9c9b900868`  
		Last Modified: Mon, 08 May 2017 23:53:40 GMT  
		Size: 23.3 MB (23275620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2e38b112f41ff64dc87eb708d1f1b58af6c1a825472d4b0930fc69cb2b682a`  
		Last Modified: Tue, 30 May 2017 17:35:04 GMT  
		Size: 31.4 MB (31446686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71953b124bbd004b77ed02ae7460fd32206b92076b99226122cf1e870386e20`  
		Last Modified: Tue, 30 May 2017 17:34:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
