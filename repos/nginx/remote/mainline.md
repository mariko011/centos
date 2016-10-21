## `nginx:mainline`

```console
$ docker pull nginx@sha256:dedbce721065b2bcfae35d2b0690857bb6c3b4b7dd48bfe7fc7b53693731beff
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71489384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43d811ce2f4986aa69bc8ba6c92f0789537f604d1601e0b6ec024e1c38062b4`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:31:08 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 21 Oct 2016 22:31:08 GMT
ENV NGINX_VERSION=1.11.5-1~jessie
# Fri, 21 Oct 2016 22:31:23 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:31:24 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 21 Oct 2016 22:31:25 GMT
EXPOSE 443/tcp 80/tcp
# Fri, 21 Oct 2016 22:31:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c030a565b1a38c604152b4852a971c99477a8abf33b9369bf057d515ee8837`  
		Last Modified: Fri, 21 Oct 2016 22:31:40 GMT  
		Size: 20.1 MB (20136063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685b7631c1ce1a7d0f7da6cfe99e88de36c40d2fc6cb945db39754b03f4e40b0`  
		Last Modified: Fri, 21 Oct 2016 22:31:35 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
