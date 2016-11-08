## `nginx:stable`

```console
$ docker pull nginx@sha256:eb7e3bbd8e3040efa71d9c2cacfa12a8e39c6b2ccd15eac12bdc49e0b66cee63
```

-	Platforms:
	-	linux; amd64

### `nginx:stable` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71188742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acd1b9bc321f0e9760a500e77c301eace97a9d363cc91022600725167a7659c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:40:20 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 08 Nov 2016 22:43:26 GMT
ENV NGINX_VERSION=1.10.2-1~jessie
# Tue, 08 Nov 2016 22:43:54 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:43:56 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 08 Nov 2016 22:43:57 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 08 Nov 2016 22:43:57 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21413bff969a89150c3f4bd85a0610a34e5cf3e004f861f43291cdbcc7779d5a`  
		Last Modified: Tue, 08 Nov 2016 22:44:18 GMT  
		Size: 19.8 MB (19831555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee080e089c441b49e3e3d48f13a9a80aea4ee76ed41a79f78521c9396822c50`  
		Last Modified: Tue, 08 Nov 2016 22:44:12 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
