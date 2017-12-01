## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:1080e7e296087c2d369969189fda6123357e7b636c8155af47d014ac01878c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:497ca811460327f66ef14c1e1854a13a6b38554312fbc97d88e679325f6f2433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5636376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d7382e7dff785eea8a9cf79c596d0043cde4237ba62964a7ac03e3a8cb8710`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 4444/tcp
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 7899/tcp
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:47 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:47 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:48 GMT
WORKDIR /notary/signer
# Fri, 01 Dec 2017 21:24:49 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:49 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 01 Dec 2017 21:24:50 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:50 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f92cd3c514b87c9520aab5d7aa8327bab1b70130520cf5d3db6f6e42ee2fbb`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcd649a7ede957d020c7d7a4591eccdd38d8f3e80f60967489ba8c976a0e675`  
		Last Modified: Fri, 01 Dec 2017 21:41:53 GMT  
		Size: 3.6 MB (3569548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b027195bdaa8b0594b9c6fd37a9dd191e58aa458dfef2bbe5128ae2694f83a`  
		Last Modified: Fri, 01 Dec 2017 21:41:52 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6db2d2527650bed19e7dcc9de157cd0186ff4cf72ebfa22f51ec42e282db7b6`  
		Last Modified: Fri, 01 Dec 2017 21:41:52 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
