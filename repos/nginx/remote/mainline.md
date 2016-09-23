## `nginx:mainline`

```console
$ docker pull nginx@sha256:1ebfe348d131e9657872de9881fe736612b2e8e1630e0508c354acb0350a4566
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71441036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6bed934df2e644fdd34e9d324c80f3c615544ee9a93e4ce3cfddfcf84bdbc2`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Sep 2016 20:51:15 GMT
ENV NGINX_VERSION=1.11.4-1~jessie
# Fri, 23 Sep 2016 20:51:33 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:51:34 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Sep 2016 20:51:34 GMT
EXPOSE 443/tcp 80/tcp
# Fri, 23 Sep 2016 20:51:34 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aceccff346fe785f467e8318ecb73e4aa2b6bd7315f3e1bdd6ac2dfa7cda332`  
		Last Modified: Fri, 23 Sep 2016 20:51:47 GMT  
		Size: 20.1 MB (20086477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8967f3021930ae46bf8244303720236ba854ad1e935959440f4751e74607aeb`  
		Last Modified: Fri, 23 Sep 2016 20:51:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
