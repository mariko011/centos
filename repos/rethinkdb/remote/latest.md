## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:d258f29351a75ee4efaeadd173e3da78cf6644df6b18debe1543543dcc6f5e20
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75959405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10cc6435528da5d3018dd5dd65768fb01b5be930e53e225cd39ed126b00f3bc`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:08:36 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Fri, 23 Sep 2016 23:08:50 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:08:50 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:08:51 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:08:51 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:08:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00908b07826c2438120027a90571cfd1d270532ef76bb9db3bc54d660169b021`  
		Last Modified: Fri, 23 Sep 2016 23:09:08 GMT  
		Size: 24.6 MB (24603300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdc9444c2b4fbb300e3df206dd38e8d76adaa1a12d1b48d962f320c64b3754e`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
