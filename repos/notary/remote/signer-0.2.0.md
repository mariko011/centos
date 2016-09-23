## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:f9d9c91e44e3fca2b64dbbc241b8d23f2f7f8e7e0bc136e049f6c08da5f63482
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7779961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29af1387578f96045cb595c0f45d54a262a7f8f88bbc88a71a5bed04b0994601`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:14:24 GMT
EXPOSE 4444/tcp
# Fri, 23 Sep 2016 17:14:24 GMT
EXPOSE 7899/tcp
# Fri, 23 Sep 2016 17:14:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:55 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:55 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:55 GMT
WORKDIR /notary/signer
# Fri, 23 Sep 2016 17:14:56 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:14:56 GMT
USER [notary]
# Fri, 23 Sep 2016 17:14:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 23 Sep 2016 17:14:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:14:57 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5f55d9fab603ae789383d7adecd21c3f16a06d350b00211a450e46e1dd4415`  
		Last Modified: Fri, 23 Sep 2016 17:14:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0b1092cbf67bd2aba9aa0159ff276aefe9646ed4f37e7fdad210e7d484d13f`  
		Last Modified: Fri, 23 Sep 2016 17:15:07 GMT  
		Size: 5.5 MB (5465101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b8d9b28492811f1a3ad0dd2f49f1b04a34d7ab04b8ed85d141f8525bfb1e54`  
		Last Modified: Fri, 23 Sep 2016 17:15:04 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6863f40ac19793dc517166608caf00ff4395bcb7ae16c7808daba217ae310078`  
		Last Modified: Fri, 23 Sep 2016 17:15:04 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
