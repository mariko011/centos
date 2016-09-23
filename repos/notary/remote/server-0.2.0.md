## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:5e29bfd87176faaa7a7fd4dddc66a3bebf63684443b87ef887cca04bdab068d8
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8013245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1562a0b886bba0bdc1735bd8bc11225bfd92762371ca5b3e02eba119d17f9a0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:13:29 GMT
EXPOSE 4443/tcp
# Fri, 23 Sep 2016 17:13:30 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 23 Sep 2016 17:14:00 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Fri, 23 Sep 2016 17:14:01 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 23 Sep 2016 17:14:01 GMT
WORKDIR /notary/server
# Fri, 23 Sep 2016 17:14:02 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:14:02 GMT
USER [notary]
# Fri, 23 Sep 2016 17:14:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 23 Sep 2016 17:14:03 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:14:03 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3f217fdbbaf9291023eb2fa56f89454846f1ea28a7d281506da443fbc0edd`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0333053656d364f0932978a65e52d47f8f6ab142f40bd21ff8691ec1c7ec7dc`  
		Last Modified: Fri, 23 Sep 2016 17:14:15 GMT  
		Size: 5.7 MB (5698318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb808c35dc808f8769456e208943b6615dfae09fbe1ca02bccadbef6240afa8`  
		Last Modified: Fri, 23 Sep 2016 17:14:10 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdfe0c8ed61cf5936eeb18fb0d1fbb78c833dd0e3744e39bdf3a1c9790b1278`  
		Last Modified: Fri, 23 Sep 2016 17:14:11 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
