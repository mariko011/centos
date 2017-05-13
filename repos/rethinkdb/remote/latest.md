## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:29640c7d5015832c40305ad5dcc5d0996ce79b87f7e32d2fd99c9d65ad9414d4
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77902652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66f932ecd3ce1f93bfa699daca84403cbf2876eaadf429629ed658b9dbb4879`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:48:16 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 10 May 2017 15:48:31 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:48:31 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:48:32 GMT
WORKDIR /data
# Wed, 10 May 2017 15:48:33 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:48:34 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280e377996523f6169c34fc205cff1994791c4e54e0bd0f4605fa181ca4fc28e`  
		Last Modified: Sat, 13 May 2017 18:34:22 GMT  
		Size: 25.3 MB (25316886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3b956300ffdfc175ebab0ebc27fe5229194150f1d8001898b9886f9e268d3`  
		Last Modified: Sat, 13 May 2017 18:34:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
