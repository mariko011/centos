## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:ae49878bfbaab173b0d82a27c0a09e14bae331c8f0bb14f59f3170ea28e87005
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5801216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2cf6489e67aa22b16800a22f58ed2bfa65d4dcb1be2f50f962449cef8547d7e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:11 GMT
EXPOSE 4443/tcp
# Fri, 03 Mar 2017 22:38:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:25 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Fri, 03 Mar 2017 22:38:25 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:26 GMT
WORKDIR /notary/server
# Fri, 03 Mar 2017 22:38:26 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:27 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 03 Mar 2017 22:38:27 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:28 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ba097ff74c8a9ac583f9ceb10b9726c1659923c7f1f445a08b04d49cbe561b`  
		Last Modified: Sat, 04 Mar 2017 05:24:14 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2acd0f3285454ba4653034da2db05b5bd49f6e6edcde7866da80fd9ba9105a8`  
		Last Modified: Sat, 04 Mar 2017 05:26:15 GMT  
		Size: 3.9 MB (3893971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c059a115cafe89e4966023403db3e446232c81d68d206e809fe7565ef0af1d7`  
		Last Modified: Sat, 04 Mar 2017 05:26:13 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbd91bf078784f76dbee1a9d75ed0ad4c8871ae809b5e87fb2a8ef34a48b198`  
		Last Modified: Sat, 04 Mar 2017 05:26:13 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
