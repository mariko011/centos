## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:18f3a3e78ff96c4ed748909cde3867f76b97e2342bdbb5220960c5f3e8555456
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323e9dffc602d75addbdd39e274e0d6cd71e81d1c1a7b5870087f83247e20330`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:35:36 GMT
EXPOSE 4443/tcp
# Wed, 10 May 2017 22:35:37 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 10 May 2017 22:35:38 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Wed, 10 May 2017 22:35:39 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 May 2017 22:35:40 GMT
WORKDIR /notary/server
# Wed, 10 May 2017 22:35:41 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:35:42 GMT
USER [notary]
# Wed, 10 May 2017 22:35:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 May 2017 22:35:43 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:35:44 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381a7b4bc912ebae121fa4e1846c03d266be531ad2b8d04ff2e4bfd11ef39d05`  
		Last Modified: Sat, 13 May 2017 08:56:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce67e27327f6de2ca0c1616a2cb566783bcee4d389874041978df719db6967c`  
		Last Modified: Sat, 13 May 2017 08:56:47 GMT  
		Size: 4.0 MB (4030705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1468607ad02d349fe001e27ff3a6882bc02d3d6b0c5df26eaab7a6e38782db63`  
		Last Modified: Sat, 13 May 2017 08:56:46 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce43c7b715782f27bde517bacaea1661f644bd9c07b64d1a70079b408689b5`  
		Last Modified: Sat, 13 May 2017 08:56:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
