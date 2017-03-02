## `nginx:stable`

```console
$ docker pull nginx@sha256:f829870f13c0b5471083fb59375fd914cf2597d814175bf1b7e868e191be210b
```

-	Platforms:
	-	linux; amd64

### `nginx:stable` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71251609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e526633b91df1ab8e27adce4649ca9c372e9ac638940c62c9989fe94c56cb102`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 28 Feb 2017 15:15:09 GMT
ENV NGINX_VERSION=1.10.3-1~jessie
# Tue, 28 Feb 2017 15:15:23 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:24 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 28 Feb 2017 15:15:25 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 28 Feb 2017 15:15:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18835c46beab9523ccbcf9a76ea4ff55c0de57a5da5e125ee02d8d43c0a9840f`  
		Last Modified: Thu, 02 Mar 2017 02:16:52 GMT  
		Size: 19.9 MB (19888041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a05fdea1a61dac5729417a71edf7238176fd4966a5a9d3256c82b905db71cd`  
		Last Modified: Thu, 02 Mar 2017 02:16:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
