## `nginx:mainline`

```console
$ docker pull nginx@sha256:12d30ce421ad530494d588f87b2328ddc3cae666e77ea1ae5ac3a6661e52cde6
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44807617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3448f27c273f3122fc554d7acf33796efb4df2ad9886efc092c3bfe716e897b7`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 08 May 2017 23:36:50 GMT
ADD file:a90ec883129f86b093f65b32e8e539168b462552a9fbf1c74d651a9bd9e9fc66 in / 
# Mon, 08 May 2017 23:36:50 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:43:02 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 10 May 2017 13:43:03 GMT
ENV NGINX_VERSION=1.13.0-1~stretch
# Wed, 10 May 2017 13:43:03 GMT
ENV NJS_VERSION=1.13.0.0.1.10-1~stretch
# Wed, 10 May 2017 13:43:21 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:43:22 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 10 May 2017 13:43:23 GMT
EXPOSE 80/tcp
# Wed, 10 May 2017 13:43:24 GMT
STOPSIGNAL [SIGQUIT]
# Wed, 10 May 2017 13:43:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3d52d8f55fb0b74ea0a24134f75efeff780c4e1f407073def2ae9c9b900868`  
		Last Modified: Mon, 08 May 2017 23:53:40 GMT  
		Size: 23.3 MB (23275620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05436c68d6ab7af7016dcd376678f6d03bd60bc52be25b9edd01469cbcac2ec`  
		Last Modified: Sat, 13 May 2017 08:24:20 GMT  
		Size: 21.5 MB (21531803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961dd3f5d83608982f3294cf9cbdb5966f091b2e6fbf700c70d100be607773f0`  
		Last Modified: Sat, 13 May 2017 08:24:16 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
