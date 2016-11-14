## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:ba2faed01899deb6dc00a9a9f3b9b10a53049fa7b6ff8dbd1b133e07a2f1ef09
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5801b0e0aff751216d78ed7da92a6b6223d37238f5844fe82f073db10761d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:44:31 GMT
EXPOSE 4443/tcp
# Mon, 14 Nov 2016 23:21:54 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Mon, 14 Nov 2016 23:21:54 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Mon, 14 Nov 2016 23:21:55 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 14 Nov 2016 23:21:55 GMT
WORKDIR /notary/server
# Mon, 14 Nov 2016 23:21:56 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:21:57 GMT
USER [notary]
# Mon, 14 Nov 2016 23:21:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 14 Nov 2016 23:21:58 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:21:58 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7147c4c9071ea64d5e9ff4bdf652a9a47a982958105c75d28f22a78a02f781da`  
		Last Modified: Mon, 14 Nov 2016 23:22:48 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214abb8f92608a5c5189e11ec7853aec487c2adde432f70930516dbda731e7b9`  
		Last Modified: Mon, 14 Nov 2016 23:22:51 GMT  
		Size: 4.0 MB (3979291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d5a984530be52f50d9b244084647c7d264046133e78c1b3f81776636fa1554`  
		Last Modified: Mon, 14 Nov 2016 23:22:49 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf33c5e5f50ccf661bdeba09e932182975f293c256b11ee125c60a922044b55`  
		Last Modified: Mon, 14 Nov 2016 23:22:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
