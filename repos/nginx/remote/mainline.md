## `nginx:mainline`

```console
$ docker pull nginx@sha256:3861a20a81e4ba699859fe0724dc6afb2ce82d21cd1ddc27fff6ec76e4c2824e
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71503572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf312888d132e461c61484457ee9fd0125d666672e22f972f3b8c9a0ed3f0a1`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:40:20 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Mon, 28 Nov 2016 18:12:34 GMT
ENV NGINX_VERSION=1.11.6-1~jessie
# Mon, 28 Nov 2016 18:12:49 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Nov 2016 18:12:50 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Mon, 28 Nov 2016 18:12:51 GMT
EXPOSE 443/tcp 80/tcp
# Mon, 28 Nov 2016 18:12:51 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386dc9762af975db201ed66aebd3f8b5f2c24389db4744d54ec47667dcdae26a`  
		Last Modified: Mon, 28 Nov 2016 18:14:21 GMT  
		Size: 20.1 MB (20146388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685e39ac8a4ccea462d489b503f9de952f0b8c7a0b0a0548f7a5c20b272668b`  
		Last Modified: Mon, 28 Nov 2016 18:14:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
