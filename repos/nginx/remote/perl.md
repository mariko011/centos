## `nginx:perl`

```console
$ docker pull nginx@sha256:20dfc52daa3f118db1167b35ae8484b78ee279f08dd09825d5e3a6948794d1d2
```

-	Platforms:
	-	linux; amd64

### `nginx:perl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53959406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888e5729e47eba0e5bbcd12f5e2b910982350e5233ea647b29f45c63b308d616`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:54:51 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Wed, 05 Jul 2017 19:35:10 GMT
ENV NGINX_VERSION=1.13.2-1~stretch
# Wed, 05 Jul 2017 19:35:11 GMT
ENV NJS_VERSION=1.13.2.0.1.11-1~stretch
# Wed, 05 Jul 2017 19:37:16 GMT
RUN apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge -y gnupg1 && apt-get -y --purge autoremove && rm -rf /var/lib/apt/lists/* 	&& echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						nginx=${NGINX_VERSION} 						nginx-module-xslt=${NGINX_VERSION} 						nginx-module-geoip=${NGINX_VERSION} 						nginx-module-image-filter=${NGINX_VERSION} 						nginx-module-perl=${NGINX_VERSION} 						nginx-module-njs=${NJS_VERSION} 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Jul 2017 19:37:31 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 05 Jul 2017 19:37:32 GMT
EXPOSE 80/tcp
# Wed, 05 Jul 2017 19:37:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 05 Jul 2017 19:37:59 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0a05f822bb72d1e8f03f78b09700c0508ff4d591a68520dc3243d876cf2209`  
		Last Modified: Wed, 05 Jul 2017 19:57:10 GMT  
		Size: 31.5 MB (31458030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d4e450c4c60e71850a82b4539420df377632519c6dd3e3935fa61c57ee4b1a`  
		Last Modified: Wed, 05 Jul 2017 19:57:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
