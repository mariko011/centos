## `nginx:stable`

```console
$ docker pull nginx@sha256:a8ef5840f9e0f36bbdc1cc72dd20a3b77c47b0130c338502e0e5609a37cfb71a
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
