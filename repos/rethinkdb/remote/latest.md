## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:cfeb8c65065b7eb0d93e6ddfcee125616959d0c4ea685d3c0fc0b85cca9aa24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:d73ea374d6e4b06350977e715ce324e7dd06c706cd3a994b977c939a3eada4d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f1970be21b3f0ecca23fa3a44bcfdfa7dbfc5767c0138ee371fcda97e2dfac`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:06:40 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 10 Oct 2017 03:06:45 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 10 Oct 2017 03:06:46 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 10 Oct 2017 03:06:46 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 10 Oct 2017 03:07:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:07:15 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 03:07:15 GMT
WORKDIR /data
# Tue, 10 Oct 2017 03:07:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 10 Oct 2017 03:07:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc05eccb0db9218096bdcb78c01eabcf1a4acfee351af72537c565d6ff2237a`  
		Last Modified: Tue, 10 Oct 2017 03:07:28 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9225f95e703f15f81c7ddd7bb821679c91217f672501466692d24aa77c92929`  
		Last Modified: Tue, 10 Oct 2017 03:07:29 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c9a33752997ff4b74c328810a927a478b0d314d06ea46a1034f2f58c57ce1`  
		Last Modified: Tue, 10 Oct 2017 03:07:32 GMT  
		Size: 25.3 MB (25274033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3d47a45a0850849a925907d54b021df654bf9f69542e677162d60d661a9ace`  
		Last Modified: Tue, 10 Oct 2017 03:07:28 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
