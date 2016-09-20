## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:454395517d99bef27ff9223aaf94ae91e6bd20529cde21e8020c9b18740f04e3
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8011365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715e80c2104b52d377b412ecdbb600b342a26c21cf73078a81d58a42b3a8dda8`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:35:32 GMT
EXPOSE 4443/tcp
# Tue, 20 Sep 2016 00:35:33 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 20 Sep 2016 00:37:05 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 20 Sep 2016 00:37:06 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 20 Sep 2016 00:37:06 GMT
WORKDIR /notary/server
# Tue, 20 Sep 2016 00:37:07 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:37:08 GMT
USER [notary]
# Tue, 20 Sep 2016 00:37:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 20 Sep 2016 00:37:08 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:37:09 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea065e460d1e55f1c55efd597ff01dbb9dc6aaef380161dbd861550a5d9231b7`  
		Last Modified: Tue, 20 Sep 2016 00:35:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9221c5ebe164ae9dd3f4e2c31279ba1256d8120c21f293be863f786af482ec`  
		Last Modified: Tue, 20 Sep 2016 00:37:20 GMT  
		Size: 5.7 MB (5698316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3dcbcbcad188e6f8a374684eccdc42516045adae52ea2c0af156f12861bfdae`  
		Last Modified: Tue, 20 Sep 2016 00:37:18 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4c417cfa793fae2d9782b03ae9cecb9e0d3958e902b3d6ae78c8483cdc5c40`  
		Last Modified: Tue, 20 Sep 2016 00:37:18 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
