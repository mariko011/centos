## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:2a5a37f7a3334f4301d8cfc1df97bfbddabb0b8435ec33b3df1d18a8b8ad0b60
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75962487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ed6f59cec279e9aa082fb954aa974728da01dccedf69104156e3940c1fb015`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:08:13 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 09 Nov 2016 01:08:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:08:28 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:08:28 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:08:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:08:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bfe95bd9b5b91e15e39c909eb32a5137d3913311567d687d0fdc6ce239783`  
		Last Modified: Wed, 09 Nov 2016 01:08:47 GMT  
		Size: 24.6 MB (24603759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29409880b303eebc6d1f69f6ab6da439bf146e96126d4a3217284bb9a252c594`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
