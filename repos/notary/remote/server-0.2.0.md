## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:28ab72dd0a8b42db032e1c9042e5b764ed485d5cf287c919522b4a0b75507f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:028918124e7ebf1dbdcf2546f235161a178cf0080697d96674f62132217371e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7771509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0881433b122740697e4658dce7567201d193b1f652b3dc114c24349c4b9e2a7`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:21 GMT
EXPOSE 4443/tcp
# Tue, 19 Sep 2017 00:31:48 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 19 Sep 2017 00:32:00 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 19 Sep 2017 00:32:00 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 19 Sep 2017 00:32:00 GMT
WORKDIR /notary/server
# Tue, 19 Sep 2017 00:32:01 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:32:01 GMT
USER [notary]
# Tue, 19 Sep 2017 00:32:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 19 Sep 2017 00:32:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:32:02 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c45e5b351f1ba6ae47937b7f53fa2e9464bf375746705f65d2d6f477b2b047`  
		Last Modified: Tue, 19 Sep 2017 00:33:11 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b087fb149ca0ba6894f17d3b8d9009d72f90f331b487b18cf5e5c034d8d482`  
		Last Modified: Tue, 19 Sep 2017 00:33:33 GMT  
		Size: 5.8 MB (5779119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7920731595eb3c082f1fee9ad75fdd0598f02b57634a08e30748e019e13e58ea`  
		Last Modified: Tue, 19 Sep 2017 00:33:33 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10193a60cced9a7a9602014d567296de248db02436933d1f19bca6e0a1df66e6`  
		Last Modified: Tue, 19 Sep 2017 00:33:32 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
