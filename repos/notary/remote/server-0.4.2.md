## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:97b550c2edbbeebddb7769f6a82d179d4383ccdae1693d054659cee13ceabf91
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5933954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc33e491608f4e54d75689292102abda09cb7ccdac84b6111b6b4c06cdac773`
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
# Wed, 28 Jun 2017 20:00:38 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Wed, 28 Jun 2017 20:00:39 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 28 Jun 2017 20:00:40 GMT
WORKDIR /notary/server
# Wed, 28 Jun 2017 20:00:42 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:00:43 GMT
USER [notary]
# Wed, 28 Jun 2017 20:00:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 28 Jun 2017 20:00:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:00:45 GMT
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
	-	`sha256:50c4b780435091139ab686b08f12906f5026b1616f6712d8e79eb811835c4c6b`  
		Last Modified: Thu, 29 Jun 2017 22:43:06 GMT  
		Size: 3.9 MB (3941572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870588150fc72d5d5b466a28584544a2c1277de9a5289f85a9def509290beb70`  
		Last Modified: Thu, 29 Jun 2017 22:43:05 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46239d9437f1b3e819cde6a03804b494e426d9db2982f9b0d026955cbcbfbf44`  
		Last Modified: Thu, 29 Jun 2017 22:43:06 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
