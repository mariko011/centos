## `nginx:mainline`

```console
$ docker pull nginx@sha256:33ff28a2763feccc1e1071a97960b7fef714d6e17e2d0ff573b74825d0049303
```

-	Platforms:
	-	linux; amd64

### `nginx:mainline` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71544045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39777a1a4a6ec8a91c978ded905cca10e6b105ba650040e16c50b3e157272c3`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:39:39 GMT
MAINTAINER NGINX Docker Maintainers "docker-maint@nginx.com"
# Tue, 17 Jan 2017 18:39:39 GMT
ENV NGINX_VERSION=1.11.8-1~jessie
# Tue, 17 Jan 2017 18:39:57 GMT
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y 						ca-certificates 						nginx=${NGINX_VERSION} 						nginx-module-xslt 						nginx-module-geoip 						nginx-module-image-filter 						nginx-module-perl 						nginx-module-njs 						gettext-base 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:39:58 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 17 Jan 2017 18:39:59 GMT
EXPOSE 443/tcp 80/tcp
# Tue, 17 Jan 2017 18:39:59 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a91cdb22f0fe7b35f7f492de75096d491b2cb5ea9a3a9bd775210a003af7f3`  
		Last Modified: Wed, 18 Jan 2017 05:26:55 GMT  
		Size: 20.2 MB (20182640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cac4850e5df710bce8b514acee92630e27f36761a36e55cbef0cc8d1d0317d5`  
		Last Modified: Wed, 18 Jan 2017 05:26:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
