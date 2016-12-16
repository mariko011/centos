## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:f67b43dcb4e175375f167874cefacb220921453e00da44920cf04c17fc3a6c4e
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.5 MB (311548469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f91d4b02e9b450f16f5bf4bd877b677e65b71f824b8f80e49eea2a3c5920a40`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 19:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72591232915f25a33b2dcf0ed9fea09256ec5c0988bce2e515b6e9911274adc`  
		Last Modified: Wed, 14 Dec 2016 03:20:29 GMT  
		Size: 20.9 MB (20945421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e5ec7de751dd011b9b64ec0ee93775040bb91451b2b1dc95ec4a175de462c3`  
		Last Modified: Wed, 14 Dec 2016 03:20:43 GMT  
		Size: 51.2 MB (51219215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726753aa3a3dbe2bf2025d0af6a2b8a22be3a5a42fd0a3182ddc625d5fea607d`  
		Last Modified: Thu, 15 Dec 2016 19:38:10 GMT  
		Size: 195.5 MB (195516895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
