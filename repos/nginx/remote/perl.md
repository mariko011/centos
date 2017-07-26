## `nginx:perl`

```console
$ docker pull nginx@sha256:e0b2e3f8dedec4d04526d90fbe271c266b76cb7638a4d943ad877654186daf20
```

-	Platforms:
	-	linux; amd64

### `nginx:perl` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53949778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28a22bc4e615ce9a959fc288475ba1c88ba1b36e65707ceb7f9480cd0db62e7`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:33:43 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 26 Jul 2017 07:33:43 GMT
ENV NGINX_VERSION=1.13.3-1~stretch
# Wed, 26 Jul 2017 07:33:44 GMT
ENV NJS_VERSION=1.13.3.0.1.11-1~stretch
# Wed, 26 Jul 2017 07:34:18 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-perl=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 07:34:19 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 26 Jul 2017 07:34:19 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 07:34:19 GMT
STOPSIGNAL [SIGTERM]
# Wed, 26 Jul 2017 07:34:19 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e618256143f42c5de29ca691151031e206561007a2697a3c05da4a2961ce9134`  
		Last Modified: Wed, 26 Jul 2017 07:35:34 GMT  
		Size: 31.5 MB (31457839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7e8bbf719d4e06055feb3d00123f1f70d940fddb7059ef3492fdfa059c2f54`  
		Last Modified: Wed, 26 Jul 2017 07:35:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
