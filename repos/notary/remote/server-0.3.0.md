## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:7359b32ad1f3c7b89529b4d3c53d4d9673dd0ea052815f5a5f5c9377fe8e6fa9
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6712363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7caa249ee975b43af2139c9a2ac9f46b8ae3d5bbf9186339a089c28a40a7311a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:11 GMT
EXPOSE 4443/tcp
# Fri, 03 Mar 2017 22:38:16 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:21 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:21 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:22 GMT
WORKDIR /notary/server
# Fri, 03 Mar 2017 22:38:23 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:23 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 03 Mar 2017 22:38:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:24 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb7832393245ca712437f6941aad91bc345bd652286cffa46db5f95a529134f`  
		Last Modified: Sat, 04 Mar 2017 05:25:10 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63245bbe051b99f26321a81aa5d77c412e4ee743438ab1154934500325818c6d`  
		Last Modified: Sat, 04 Mar 2017 05:25:51 GMT  
		Size: 4.8 MB (4805119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20905813fc49633d5d90ac13ef16f9f3fc9b0ee50b67d4392b1b237fcda7971e`  
		Last Modified: Sat, 04 Mar 2017 05:25:47 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a0a54dafe1492ab6af2234b8d43bd9f6ab2fdf752557e90cfde403b722c61f`  
		Last Modified: Sat, 04 Mar 2017 05:25:47 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
