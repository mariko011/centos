## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:b508e7343131d0c1eb4fd8ec751cda3a0ce525412a31b8cf0fe6416e91a635a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:11eb3770e84da502be4184604d1420c3fc838a5bbb41e2cb37cd323e738d19eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7846016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2420e89cd2f8bc6ca717fa788c5de67872b104f36ad61d52ed3c8eaf8af58a`
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
# Fri, 01 Dec 2017 21:30:38 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Fri, 01 Dec 2017 21:30:39 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 01 Dec 2017 21:30:39 GMT
WORKDIR /notary/server
# Fri, 01 Dec 2017 21:30:40 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:30:40 GMT
USER [notary]
# Fri, 01 Dec 2017 21:30:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 01 Dec 2017 21:30:41 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:30:41 GMT
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
	-	`sha256:699419a4911c4436b6a7a2cc7d20ee18f8ec07f311be356282b8807a477f4ae1`  
		Last Modified: Fri, 01 Dec 2017 21:42:43 GMT  
		Size: 5.8 MB (5779120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67333ce3c2880564c049bfa08735a386635ea1287cfb02383123e98cb9a3875d`  
		Last Modified: Fri, 01 Dec 2017 21:42:42 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e63fd37e713f402119168031c82a01a887a837e58453b64ab2dcfe3a32e16b9`  
		Last Modified: Fri, 01 Dec 2017 21:42:42 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
