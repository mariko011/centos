## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:146667ee6c5480aecdc8d4ccc6e9bcdfb5f85c224ae685614a57d1d6f415e4db
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7605562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3dc4d7a22adc9f4a8ab1648148ff9f4bb3f079815d7445e9a7435fa0f50a20`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:11 GMT
EXPOSE 4443/tcp
# Fri, 03 Mar 2017 22:38:16 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:17 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:17 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:18 GMT
WORKDIR /notary/server
# Fri, 03 Mar 2017 22:38:19 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:19 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 03 Mar 2017 22:38:20 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:20 GMT
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
	-	`sha256:839d5e0434af36b4557abfe3b0440ccec4a894f9d8995c85f77642fe13e1bf09`  
		Last Modified: Sat, 04 Mar 2017 05:25:25 GMT  
		Size: 5.7 MB (5698317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea65e4eba8a3501fc65d666774630ae1edad31b12616d54bbd4522c53159d3f6`  
		Last Modified: Sat, 04 Mar 2017 05:25:10 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e5eb9a920e4b9201174323fa2cf35d8ae602fbf09cdcbc13d6c4201b564b1a`  
		Last Modified: Sat, 04 Mar 2017 05:25:10 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
