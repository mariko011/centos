## `nginx:latest`

```console
$ docker pull nginx@sha256:41ad9967ea448d7c2b203c699b429abe1ed5af331cd92533900c6d77490e0268
```

-	Platforms:
	-	linux; amd64

### `nginx:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44808937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958a7ae9e56979be256796dabd5845c704f784cd422734184999cf91f24c2547`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 08 May 2017 23:36:50 GMT
ADD file:a90ec883129f86b093f65b32e8e539168b462552a9fbf1c74d651a9bd9e9fc66 in / 
# Mon, 08 May 2017 23:36:50 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:43:02 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 30 May 2017 17:07:11 GMT
ENV NGINX_VERSION=1.13.1-1~stretch
# Tue, 30 May 2017 17:07:52 GMT
ENV NJS_VERSION=1.13.1.0.1.10-1~stretch
# Tue, 30 May 2017 17:08:53 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:09:19 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 30 May 2017 17:09:40 GMT
EXPOSE 80/tcp
# Tue, 30 May 2017 17:10:22 GMT
STOPSIGNAL [SIGTERM]
# Tue, 30 May 2017 17:10:45 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3d52d8f55fb0b74ea0a24134f75efeff780c4e1f407073def2ae9c9b900868`  
		Last Modified: Mon, 08 May 2017 23:53:40 GMT  
		Size: 23.3 MB (23275620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226f4ec56ba36543a9a7d12c8297f9fa09b86de352c39f838aae4d9e37807ad7`  
		Last Modified: Tue, 30 May 2017 17:32:27 GMT  
		Size: 21.5 MB (21533121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d7dd52b97d29afb22f63950d74946b15bc1db7f83bc41283195e15dac3266c`  
		Last Modified: Tue, 30 May 2017 17:32:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
