## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:4f3b63f574d76b09cc7f2cac48e4365e8e10e6d0b95aecebd0a2676f5cbcbf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:84f34607b89dee5154fe4fb27c4b00f61a3cb57513a95434e12dec498e022260
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5933969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daa93cc5a67a435279a77499e95b7730c9d0cecbab5aeeaa7e3321d16121d86`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:21 GMT
EXPOSE 4443/tcp
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:35 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Tue, 19 Sep 2017 00:31:35 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:36 GMT
WORKDIR /notary/server
# Tue, 19 Sep 2017 00:31:36 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:36 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 19 Sep 2017 00:31:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:37 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b1f48933f2c5863147d07154cca547f31c5a5048108b94fed74d327680d96c`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dad7bec0d16d12e2c2887ef411d05aca8f4a4810c2a60d56f2321dda5f624d3`  
		Last Modified: Tue, 19 Sep 2017 00:32:51 GMT  
		Size: 3.9 MB (3941588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20972f59bda2641142673d814fd7945f0d1bcfcf57182115ac83f82e3f7d0fa0`  
		Last Modified: Tue, 19 Sep 2017 00:32:50 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41c6e159ac583d492b0087c7dbce3add209bd7f6181de735b7add9b9e613b3c`  
		Last Modified: Tue, 19 Sep 2017 00:32:49 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
