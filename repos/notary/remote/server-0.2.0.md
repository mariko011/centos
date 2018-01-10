## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:4156b0e688498aad1c68e9c6abf5c30969cff32e371827f8cd1bdb73311e360e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:5a6d79277fe89c8a44862c6105c2ec56a575b80c6803d8aca222dc9bf89e0ee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7846632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068d84f0d6dc35dc5940d147e1ede3559fbe5b144db023661698ebb013047729`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:55:54 GMT
EXPOSE 4443/tcp
# Wed, 10 Jan 2018 00:19:02 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:40 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:41 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:41 GMT
WORKDIR /notary/server
# Wed, 10 Jan 2018 00:19:43 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:19:43 GMT
USER [notary]
# Wed, 10 Jan 2018 00:19:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 Jan 2018 00:19:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:19:44 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe9480cd7d4f49936e9923d7e21c653a275785cb1768906b2fc754bf84e2c92`  
		Last Modified: Wed, 10 Jan 2018 00:43:28 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7254202c80a56be0a73758f3722a48d1618cc3260c4acce49a2175f864d45620`  
		Last Modified: Wed, 10 Jan 2018 00:44:24 GMT  
		Size: 5.8 MB (5779110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232180d9e6e0b52b9bbe444efaae458baa67d5126cd94e5c964a56b1be788c5a`  
		Last Modified: Wed, 10 Jan 2018 00:44:22 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d051441fb8afa429b94c07bebeb8a79f4f1d4a59b123cfbf5708d71192d24b6`  
		Last Modified: Wed, 10 Jan 2018 00:44:22 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
