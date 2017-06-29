## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:41b530cd4b9d3a3eb5fcd7c6ebc2d15506ad19e51d238eb71289544de8b122a5
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6023091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee6c7e1f7adf113bbae8fe551bbdbdc53214012befee97eeede4aec19ec70f1`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 19:56:49 GMT
EXPOSE 4443/tcp
# Wed, 28 Jun 2017 19:57:15 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 28 Jun 2017 19:57:17 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Wed, 28 Jun 2017 19:57:19 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 28 Jun 2017 19:57:20 GMT
WORKDIR /notary/server
# Wed, 28 Jun 2017 19:57:47 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 19:57:47 GMT
USER [notary]
# Wed, 28 Jun 2017 19:57:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 28 Jun 2017 19:57:49 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 19:57:50 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1047c75b0d570919d592d6e72a05cd074407192352783893280d3557209c48`  
		Last Modified: Thu, 29 Jun 2017 22:38:55 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af3220bea51eef83ef4daa683b2a283a9aa5e5c6c10d1738daf8b342d9fe587`  
		Last Modified: Thu, 29 Jun 2017 22:38:56 GMT  
		Size: 4.0 MB (4030707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be35e01463889f6a04af7ae5dc9a6c0e2acea1d77e56b3163551faab93fcfb0`  
		Last Modified: Thu, 29 Jun 2017 22:38:55 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8f7fa52f760eb1151091b1fbda8e1b4c89d8a43763786d1a0ba3f2f0c6824a`  
		Last Modified: Thu, 29 Jun 2017 22:38:54 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
