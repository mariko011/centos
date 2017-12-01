## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:a622f8b2208f2051dd1114f47be12d3f8dc129d623f9aab2577089ed9f337a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:97dc584f2f8b979326f723ac0bca1fcb69cf9cdf0c891f27f9cb89b1b9f0710e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6097594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d23e11c4c20bb8685b0eae369b7ef4471203505972edf4cc8a1f19b519aca1`
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
# Fri, 01 Dec 2017 21:24:07 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:08 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:08 GMT
WORKDIR /notary/server
# Fri, 01 Dec 2017 21:24:09 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:09 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 01 Dec 2017 21:24:09 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:09 GMT
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
	-	`sha256:f7c4aa69345d5b31989bdd08403363d91f1b559bf04c431741de425232e56b44`  
		Last Modified: Fri, 01 Dec 2017 21:37:27 GMT  
		Size: 4.0 MB (4030703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b5a562f1d6db7449a8c0be9132e36527b41c2554e125e1e829ad1a8a67b6ae`  
		Last Modified: Fri, 01 Dec 2017 21:37:26 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d613607dc18369d38fcef760eee72530d43df5a94f19e14dd72c138ff836a636`  
		Last Modified: Fri, 01 Dec 2017 21:37:26 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
