## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:d8301587343e15b58f239dd6066f07069e06347a9a86e184a1dfd60712c00d97
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6853489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca68f0d7c896fa2fa8cb13ac315b5a4deaf0bca5ec5670a0469dad2b617d0f9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 19:56:49 GMT
EXPOSE 4443/tcp
# Wed, 28 Jun 2017 19:58:41 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 28 Jun 2017 20:00:04 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Wed, 28 Jun 2017 20:00:05 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 28 Jun 2017 20:00:06 GMT
WORKDIR /notary/server
# Wed, 28 Jun 2017 20:00:08 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:00:09 GMT
USER [notary]
# Wed, 28 Jun 2017 20:00:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 28 Jun 2017 20:00:11 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:00:11 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28238b42a5ac04d8694d62fbfd2484c201f14a0bd61bf597e6ae9295807e5bbb`  
		Last Modified: Thu, 29 Jun 2017 22:40:59 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9310eccf8b123c9523c80ed5bb70c39ac2431ce0fffc46f94849b8fc4a98467f`  
		Last Modified: Thu, 29 Jun 2017 22:42:15 GMT  
		Size: 4.9 MB (4861104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed04d83b60df8149141b0eb22375c66ccaa74128b4369f4c45c146295d469400`  
		Last Modified: Thu, 29 Jun 2017 22:42:14 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516515021e26db418666456fcff9084ad8fcb818c463a1bf9a8f87cbee44d264`  
		Last Modified: Thu, 29 Jun 2017 22:42:15 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
