## `nginx:mainline`

```console
$ docker pull nginx@sha256:f2d384a6ca8ada733df555be3edc427f2e5f285ebf468aae940843de8cf74645
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71599575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1b614067128cd2f5cdafb258b0a4dd25760f14562bcce516c13f760c3b79c4`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:39:39 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 24 Jan 2017 18:09:22 GMT
ENV NGINX_VERSION=1.11.9-1~jessie
# Tue, 24 Jan 2017 18:52:03 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 18:52:04 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 24 Jan 2017 18:52:05 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 24 Jan 2017 18:52:06 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333547110842af2e72d4640d27cbbb948b44f953ffb43596afc7939be8a052e3`  
		Last Modified: Tue, 24 Jan 2017 18:54:23 GMT  
		Size: 20.2 MB (20238170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df1e44d2a7a6e43480686eb543815379ea28b62b791aff499c90311f5f02976`  
		Last Modified: Tue, 24 Jan 2017 18:54:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
