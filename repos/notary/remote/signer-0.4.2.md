## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:7347d37698d44656c913f30f4c51aaac741f7850d2b701eac71166a8e469290f
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5561633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b232ef472fac0c869b74037fc929e512c0356f1afc664d1fc9b87ee3a52c9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:21:39 GMT
EXPOSE 4444/tcp
# Mon, 19 Jun 2017 22:21:40 GMT
EXPOSE 7899/tcp
# Mon, 19 Jun 2017 22:21:42 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 19 Jun 2017 22:25:26 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Mon, 19 Jun 2017 22:25:27 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 19 Jun 2017 22:25:28 GMT
WORKDIR /notary/signer
# Mon, 19 Jun 2017 22:25:30 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:25:31 GMT
USER [notary]
# Mon, 19 Jun 2017 22:25:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 19 Jun 2017 22:25:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:25:56 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f50c00bed16e8a574c2e8bad5b60f146a8aae46f8e715e2608ce89731858a80`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1322aa65cf5f192396a2abafcf8ffce2aec355e64f1e9a805a042f45c98c3b2c`  
		Last Modified: Sat, 24 Jun 2017 16:06:37 GMT  
		Size: 3.6 MB (3569553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de50bd3883b64e1e85088019c5fd3c16af5076154d58be74f997f21d213388c9`  
		Last Modified: Sat, 24 Jun 2017 16:06:36 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b13814d58a18bfe9bd21b19e95711d3e9cb0cc0541196e7e1e946d8bda80e1`  
		Last Modified: Sat, 24 Jun 2017 16:06:36 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
