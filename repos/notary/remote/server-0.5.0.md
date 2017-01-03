## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:259dadcc51d67327af5070f3e252ffec0d6e40b4257fbc3c23b3c086ef79d0b3
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5883337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e4d67349bb9c158b2516138969c5199f432c394e7d94df87a163b3a35a7ec0e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:28 GMT
EXPOSE 4443/tcp
# Tue, 03 Jan 2017 17:54:28 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:29 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:30 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:30 GMT
WORKDIR /notary/server
# Tue, 03 Jan 2017 17:54:31 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:32 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 03 Jan 2017 17:54:33 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:33 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1af6e06e3dc7e24c2ce5f42dc127a98cd13f00cf31b1f57223fc6e7e01afba`  
		Last Modified: Tue, 03 Jan 2017 17:55:27 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ad56bdc5ebfe1380feac8f895460c7e27c7b10e77a27a5622644b09daada90`  
		Last Modified: Tue, 03 Jan 2017 17:55:29 GMT  
		Size: 4.0 MB (3979299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc98bbf49b0a77cc6edd9bf5ad92ed0f403f62de68e75770e4b8989da54b8a9`  
		Last Modified: Tue, 03 Jan 2017 17:55:28 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4740874ff330a81d2fcddd8ae5e1d02c3fde098aa1ec40ec07e8def194eed4df`  
		Last Modified: Tue, 03 Jan 2017 17:55:27 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
