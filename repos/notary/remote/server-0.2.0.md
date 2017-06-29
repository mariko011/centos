## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:99febbed5681253b31acdaa04ad33b19ac1bc35b8fea858ed0ff734ede9836aa
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7771508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc1d4db6ada8a652e9f8c0e679c0b124bec7305b60944adb4332207bd88dd9`
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
# Wed, 28 Jun 2017 19:58:42 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Wed, 28 Jun 2017 19:59:08 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 28 Jun 2017 19:59:09 GMT
WORKDIR /notary/server
# Wed, 28 Jun 2017 19:59:10 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 19:59:11 GMT
USER [notary]
# Wed, 28 Jun 2017 19:59:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 28 Jun 2017 19:59:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 19:59:38 GMT
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
	-	`sha256:60f10830395b01fd9cbaf95e3286d79623278b35685fa51a763e1a7a9494e678`  
		Last Modified: Thu, 29 Jun 2017 22:41:00 GMT  
		Size: 5.8 MB (5779121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bec16d04669e69d14144b7e3335ccc26629ab757becb996c10b1edac9d9044`  
		Last Modified: Thu, 29 Jun 2017 22:40:59 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c579d79ca6390097b2ba8a389f9a05fdc26c52a95c97f4d53459a0f98accd1b9`  
		Last Modified: Thu, 29 Jun 2017 22:40:59 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
