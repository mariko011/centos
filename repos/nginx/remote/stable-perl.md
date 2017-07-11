## `nginx:stable-perl`

```console
$ docker pull nginx@sha256:2f0d776b1fde5f98bcb7041f85bb9c0d76604eb34a485a279f5b943c65721fa0
```

-	Platforms:
	-	linux; amd64

### `nginx:stable-perl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53948075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ea4cb5abe545bd7db0ccb32a5a4f94e8222f343df36603d41a0273f60f21f4`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:54:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 11 Jul 2017 18:59:46 GMT
ENV NGINX_VERSION=1.12.1-1~stretch
# Tue, 11 Jul 2017 18:59:46 GMT
ENV NJS_VERSION=1.12.1.0.1.10-1~stretch
# Tue, 11 Jul 2017 19:00:36 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-perl=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 19:00:42 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 11 Jul 2017 19:00:42 GMT
EXPOSE 80/tcp
# Tue, 11 Jul 2017 19:00:43 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Jul 2017 19:00:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b2af549c789f96921587793e134c7162c6d8a15ae7d5bc512d88f996e685ee`  
		Last Modified: Tue, 11 Jul 2017 19:11:13 GMT  
		Size: 31.4 MB (31446700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154f52c2aefed9ad8acbcc16267ca20b01ec0dacce6d122cebe7d5997a09f86f`  
		Last Modified: Tue, 11 Jul 2017 19:11:07 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
