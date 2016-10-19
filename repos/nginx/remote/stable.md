## `nginx:stable`

```console
$ docker pull nginx@sha256:2a607b7eebba834f8756b3885adfc24a04d0d86cae9b2b3df5b0d89b9353e50e
```

-	Platforms:
	-	linux; amd64

### `nginx:stable` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71185751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d9f6a22b41ca20d8f0c84edce502b497aff16013318030e07c7dcfb0523004`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:51:15 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 19 Oct 2016 17:14:26 GMT
ENV NGINX_VERSION=1.10.2-1~jessie
# Wed, 19 Oct 2016 17:14:44 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:14:45 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 19 Oct 2016 17:14:45 GMT
EXPOSE 443/tcp 80/tcp
# Wed, 19 Oct 2016 17:14:46 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f6a4e9c02208626c2b7bb9dcaee5a81cc4d64ab5d8a517a17d4fc7ed0025e4`  
		Last Modified: Wed, 19 Oct 2016 17:18:02 GMT  
		Size: 19.8 MB (19831194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60de045a5937c43c7bddcad7ac09f859f15a4bedff2d6bd77f9f4f89897053dd`  
		Last Modified: Wed, 19 Oct 2016 17:17:56 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
