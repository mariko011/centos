## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:7689656221baf133abab96f887636afa35bae8ca28680de7ebb67b33771ab7d3
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75971785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30940c8232c8dace45d647308df2ae79100c2ea0951a29f352877db5b71e3d4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:11:57 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 30 Aug 2016 23:12:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:12:15 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:12:16 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:12:16 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:12:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6141c54ca574af470301edd84d94e2f07f05fcdd60b57bc8b81f7df9135e39d3`  
		Last Modified: Tue, 30 Aug 2016 23:13:59 GMT  
		Size: 24.6 MB (24602772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c7067e3c219d1aebc254560926b731c8ae47ea3ae20e7cf22a1265417b955f`  
		Last Modified: Tue, 30 Aug 2016 23:13:53 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
