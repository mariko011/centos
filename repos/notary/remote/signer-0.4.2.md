## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:befe4d0df784bfefe913c1a63f2a6516263ef1e37638bbefda478180b058affd
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5431436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb24424171471bbf823886e82a7248d4b919a42e5ffb443497109ff55e44aca5`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:28 GMT
EXPOSE 4444/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
EXPOSE 7899/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:41 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:42 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:42 GMT
WORKDIR /notary/signer
# Fri, 03 Mar 2017 22:38:43 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:43 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 03 Mar 2017 22:38:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:44 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06a06ec090e6817889a5847e0556b006d1acc62fd6ed16fe8c63e66f373443`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3bc64a496bbe0465a661ec328990ff3ddfdab72f5e72f5e8c433611394f163`  
		Last Modified: Sat, 04 Mar 2017 05:28:12 GMT  
		Size: 3.5 MB (3524253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7da9e40cf45cf82a4ac9c2ed448111c4b7fa6fb600b1e6b0570724cf3393461`  
		Last Modified: Sat, 04 Mar 2017 05:28:10 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca153210d53063ba00be8ac80eb75c6746079b628354e5b7cfd2f21b921ef6`  
		Last Modified: Sat, 04 Mar 2017 05:28:10 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
