## `notary:signer`

```console
$ docker pull notary@sha256:c5ebe745eb26970671a81339752f4bb893b72de23578a88660887308e85353ce
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6835610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bf3b314ab6dcd8ab968f674f29fbc400c0e49873bb9b429e7d92b718d08f`
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
# Fri, 23 Sep 2016 17:14:25 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:26 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:26 GMT
WORKDIR /notary/signer
# Fri, 23 Sep 2016 17:14:27 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:14:27 GMT
USER [notary]
# Fri, 23 Sep 2016 17:14:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 23 Sep 2016 17:14:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:14:28 GMT
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
	-	`sha256:06963a55e28a87a901ba326eeb83b52fef7beea662f7bad75e10f6e69384590f`  
		Last Modified: Fri, 23 Sep 2016 17:14:38 GMT  
		Size: 4.5 MB (4520743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26df6c5b905ae732d62c8458c8077231ef7b135af1aac2cf5048da9bb6d6d208`  
		Last Modified: Fri, 23 Sep 2016 17:14:35 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7e4a7d8eaa7e9ef89f87d33e92df8f3b2cd1021195c87fffa931e5666eb9db`  
		Last Modified: Fri, 23 Sep 2016 17:14:35 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
