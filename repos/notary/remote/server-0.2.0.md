## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:c623c84da0157c867c99a08c2fc14908541a23f1ba85906e886ebd1baddeccef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:e9ac9d1aa92de6f575458fa1e194c5c700b049bdfe821280c4b97b964228042a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7772530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17af27e68eb47d7f7f976762b9ef06956c68fc7897d54a49af4a05fe35f6d8e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:01:58 GMT
EXPOSE 4443/tcp
# Thu, 26 Oct 2017 01:10:20 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Thu, 26 Oct 2017 01:14:51 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Thu, 26 Oct 2017 01:14:51 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Thu, 26 Oct 2017 01:14:52 GMT
WORKDIR /notary/server
# Thu, 26 Oct 2017 01:14:53 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:14:53 GMT
USER [notary]
# Thu, 26 Oct 2017 01:14:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 26 Oct 2017 01:14:54 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:14:54 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4488c9b4218c8e2a0e1a1d31f79a39baeac5091d5bf92b4e293a5028d648277`  
		Last Modified: Thu, 26 Oct 2017 01:21:53 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a8102da0c82b445d6a67a533bedbe2d265cd94d9c9fea93c944e04fbcb3cd`  
		Last Modified: Thu, 26 Oct 2017 01:22:20 GMT  
		Size: 5.8 MB (5779111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58792ead9a56acc4ec0ced6dbab0f73f66fc5c485979b1d762d9f76a1916f55`  
		Last Modified: Thu, 26 Oct 2017 01:22:19 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab3a415606de3df7929edfb5c47aee8330af8ce54d6266036d6fe5e16f75a1c`  
		Last Modified: Thu, 26 Oct 2017 01:22:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
