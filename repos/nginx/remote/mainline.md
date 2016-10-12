## `nginx:mainline`

```console
$ docker pull nginx@sha256:e40499ca855c9edfb212e1c3ee1a6ba8b2d873a294d897b4840d49f94d20487c
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71488865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5311a310510e5eaff3cfbb22b65d9ce11ddc15e266833909551334d48491921`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 12 Oct 2016 16:59:33 GMT
ENV NGINX_VERSION=1.11.5-1~jessie
# Wed, 12 Oct 2016 16:59:48 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Oct 2016 16:59:49 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 12 Oct 2016 16:59:50 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 12 Oct 2016 16:59:50 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a0fbbae14864e06e14f89126551d004555d9e2c13591105862ca1f9a418e9d`  
		Last Modified: Wed, 12 Oct 2016 17:01:11 GMT  
		Size: 20.1 MB (20134306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd37c8684bca3df2090b8b8acce020837d560ec8917f25714e45e7d1f4611e`  
		Last Modified: Wed, 12 Oct 2016 17:01:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
