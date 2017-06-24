## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:5f7f5626a4891519e3cf3bf1884c545eacf8717c0360801bb118807e6c8b7e64
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7535341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4a2209ef5b1ce0065b92a61952b0d6dc34d773f2e9e2c643e7cc81b4d704a8`
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
# Mon, 19 Jun 2017 22:31:28 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Mon, 19 Jun 2017 22:31:29 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 19 Jun 2017 22:31:31 GMT
WORKDIR /notary/signer
# Mon, 19 Jun 2017 22:31:33 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:31:34 GMT
USER [notary]
# Mon, 19 Jun 2017 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 19 Jun 2017 22:31:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:31:37 GMT
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
	-	`sha256:7ee0728021a15aef4b854379f3b542d1e1b2564f08d418f04448f0507bba76ad`  
		Last Modified: Sat, 24 Jun 2017 16:08:48 GMT  
		Size: 5.5 MB (5543261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edb551413fc165d82ff71df991a608d51d3cfe3ed236d7ad8008e7a4c493e56`  
		Last Modified: Sat, 24 Jun 2017 16:08:45 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8ddfd83a36d81487894fe61826277f63288c06af1fa8281cc1ae628350b8e8`  
		Last Modified: Sat, 24 Jun 2017 16:08:45 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
