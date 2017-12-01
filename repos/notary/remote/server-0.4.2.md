## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:677e17e4ff35da64d1384aae1be28dfbac690dc5b87a7ff4d5003564ec333e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:4e90bebae1df7793e8cffad1347b30aadb01d5379379902de81623f31750172f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6008467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc4e2ccb62228163e7067f75204962bc2d9328dd9cc5a680373f54649af0bb3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:07 GMT
EXPOSE 4443/tcp
# Fri, 01 Dec 2017 21:24:07 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:32 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Fri, 01 Dec 2017 21:24:32 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:33 GMT
WORKDIR /notary/server
# Fri, 01 Dec 2017 21:24:34 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:34 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 01 Dec 2017 21:24:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:35 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451fb17b18ac7eb14a1d71fe1dba723f2d5f5860c1ebbd827f2975c8717b7620`  
		Last Modified: Fri, 01 Dec 2017 21:37:27 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50aba163d82018e05cd81b248c5aa9eb01efd34aa1f0074797a79a4a4498b65`  
		Last Modified: Fri, 01 Dec 2017 21:41:40 GMT  
		Size: 3.9 MB (3941574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c187da30d570f2ca3527157d8614dc02a01eb6c8b73a0d8b994528e081df7e46`  
		Last Modified: Fri, 01 Dec 2017 21:41:39 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72042f0671e418281fc63be290917668508cee6370959c479fc0c9cf3449ac96`  
		Last Modified: Fri, 01 Dec 2017 21:41:39 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
