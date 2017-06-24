## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:0b19a360d34628d89978836f0359aa7c0be7858f4eaca8667f21635d9253891a
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713da8c1a9e6f1b51c0bd2785c00bb7b635a84cf0971fd401389d07f88700d07`
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
# Mon, 19 Jun 2017 22:22:06 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Mon, 19 Jun 2017 22:22:07 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 19 Jun 2017 22:22:08 GMT
WORKDIR /notary/signer
# Mon, 19 Jun 2017 22:22:32 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:22:33 GMT
USER [notary]
# Mon, 19 Jun 2017 22:22:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 19 Jun 2017 22:22:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:22:58 GMT
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
	-	`sha256:6f18f23f9b86a64b38202688d306fbaf4164a65ee9c55fe44b342bbf869f6541`  
		Last Modified: Sat, 24 Jun 2017 16:05:04 GMT  
		Size: 3.7 MB (3650995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dffee2a4bd0885edbe26eb12c33bbfa499fe04286b216f43da144d925b671d7`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8019c3421f5ce7536981166ef794a2a785339c1d8406c5746726faab92afc82b`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
