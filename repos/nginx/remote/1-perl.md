## `nginx:1-perl`

```console
$ docker pull nginx@sha256:5cd598d07f863ec88122494abe8c7a44f4b2001e63938fcfd4979a26d3e9012e
```

-	Platforms:
	-	linux; amd64

### `nginx:1-perl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54723452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bcdc6c6f215ffdf295906afed191125380ef5e0f39b7aa86576676522b2ed58`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 08 May 2017 23:36:50 GMT
ADD file:a90ec883129f86b093f65b32e8e539168b462552a9fbf1c74d651a9bd9e9fc66 in / 
# Mon, 08 May 2017 23:36:50 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:43:02 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 10 May 2017 13:43:03 GMT
ENV NGINX_VERSION=1.13.0-1~stretch
# Wed, 10 May 2017 13:43:03 GMT
ENV NJS_VERSION=1.13.0.0.1.10-1~stretch
# Wed, 10 May 2017 13:44:00 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-perl=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:44:02 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 10 May 2017 13:44:03 GMT
EXPOSE 80/tcp
# Wed, 10 May 2017 13:44:03 GMT
STOPSIGNAL [SIGQUIT]
# Wed, 10 May 2017 13:44:04 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3d52d8f55fb0b74ea0a24134f75efeff780c4e1f407073def2ae9c9b900868`  
		Last Modified: Mon, 08 May 2017 23:53:40 GMT  
		Size: 23.3 MB (23275620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3e78aed54a5e5235f529d93f73b0096b46fc01df0ae7558458306143a906c4`  
		Last Modified: Sat, 13 May 2017 08:30:13 GMT  
		Size: 31.4 MB (31447638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727505c4f07eee1059f70d4e6ae7962765eaedd5218c2c9caad2479e4226608e`  
		Last Modified: Sat, 13 May 2017 08:30:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
