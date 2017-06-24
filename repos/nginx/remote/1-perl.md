## `nginx:1-perl`

```console
$ docker pull nginx@sha256:1b93ccbf20bda3920b6d71bcea63c591a9cb82566400e64c817c24a706286b2e
```

-	Platforms:
	-	linux; amd64

### `nginx:1-perl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53947853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e815529d477ed70b223b433d92ef3f70de7fcc4f3225a04f8dc2b0eb3efa53`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:54:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Fri, 23 Jun 2017 00:54:52 GMT
ENV NGINX_VERSION=1.13.1-1~stretch
# Fri, 23 Jun 2017 00:54:53 GMT
ENV NJS_VERSION=1.13.1.0.1.10-1~stretch
# Fri, 23 Jun 2017 00:55:53 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-perl=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:55:55 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 23 Jun 2017 00:55:56 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 00:55:56 GMT
STOPSIGNAL [SIGTERM]
# Fri, 23 Jun 2017 00:55:57 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d4a85cde2d40a5a408c5d257bdde733eb7cee84ee9f148b388e5f368e92bb`  
		Last Modified: Sat, 24 Jun 2017 14:39:42 GMT  
		Size: 31.4 MB (31446477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a423e508b11795d993cad5864503716af44ecc1258680278f9b6333a9c2ff5a`  
		Last Modified: Sat, 24 Jun 2017 14:39:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
