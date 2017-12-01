## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:bdffbc315e23ea217e531d692d3c84d61b6787245d9b7dd48fe96042a183df0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:c88b74d5482d3d43265e731ff9e47ea8f37cd61c72e5623c4b84b6a03886901a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6927999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63975dc3a08790c22adfef42b9fe0581563442853e024086b060d27a54f8e0fe`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:07 GMT
EXPOSE 4443/tcp
# Fri, 01 Dec 2017 21:25:02 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 01 Dec 2017 21:25:03 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Fri, 01 Dec 2017 21:25:03 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 01 Dec 2017 21:25:03 GMT
WORKDIR /notary/server
# Fri, 01 Dec 2017 21:25:05 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:25:05 GMT
USER [notary]
# Fri, 01 Dec 2017 21:25:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 01 Dec 2017 21:25:05 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:25:06 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825c1704a6c239371f63b2975758724e41703a57533a6527f987b3afb89e30dd`  
		Last Modified: Fri, 01 Dec 2017 21:42:07 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ac491576ab8f9b8c68cd30dcafb65f146f8d58fc42691325aa6411dd88ae7f`  
		Last Modified: Fri, 01 Dec 2017 21:42:08 GMT  
		Size: 4.9 MB (4861102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a2b37382ed6bd148747bee42f58ca538d7f4d91fa7fd553399bf60887f0838`  
		Last Modified: Fri, 01 Dec 2017 21:42:07 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496be0f3cc4bef93492385c8ab52d9608c3304b41e34243af6b058835b47b0f4`  
		Last Modified: Fri, 01 Dec 2017 21:42:07 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
