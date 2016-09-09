## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:c8bc9aa900759bed57bfee15424807f073d399ccc7163f6e10700df9061edbbd
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8010610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f52075862a7649534bc7f924b275533941b61a4f519a7662b6ab69e39d5197`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:24 GMT
EXPOSE 4443/tcp
# Tue, 30 Aug 2016 16:28:24 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:32 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:32 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:33 GMT
WORKDIR /notary/server
# Tue, 30 Aug 2016 16:28:33 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:34 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 30 Aug 2016 16:28:34 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:34 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192c44ba7c3d5880a08aad101866cc0534e9a83e41e4ef8737a88fd5ee795ec9`  
		Last Modified: Thu, 08 Sep 2016 18:05:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbb7d5579b6cd7c758e9a429afe158023c904253bcd6841e6c01cbffcb098c6`  
		Last Modified: Thu, 08 Sep 2016 18:06:43 GMT  
		Size: 5.7 MB (5698319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c63ea06c918d56e109570c11474d8df4ac3585e0719e28bbca2822590de079`  
		Last Modified: Thu, 08 Sep 2016 18:06:43 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53198199719628ffb0156388193e62639d1fc22938498e8585a318cac0703d8`  
		Last Modified: Thu, 08 Sep 2016 18:06:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
