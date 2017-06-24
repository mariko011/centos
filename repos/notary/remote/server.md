## `notary:server`

```console
$ docker pull notary@sha256:9ba168464170bb2488730c75613b104e31e63c5826f6c840d83045874658b3b2
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6022854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fc3b510067a9407d85c9e02ebe60a0e42cf2ed38252241d9a0c664f301d56f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:19:58 GMT
EXPOSE 4443/tcp
# Mon, 19 Jun 2017 22:19:59 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Mon, 19 Jun 2017 22:20:00 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Mon, 19 Jun 2017 22:20:24 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 19 Jun 2017 22:20:25 GMT
WORKDIR /notary/server
# Mon, 19 Jun 2017 22:20:27 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:20:50 GMT
USER [notary]
# Mon, 19 Jun 2017 22:20:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 19 Jun 2017 22:20:51 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:20:52 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f56ed9011e3cd7c413ddb8c402e255d4f1f764849173be24d61c6f460e885b8`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8009b17bc7e5de72b830cf533e0b96bf9c4d89c24014e2cdd281204dadba6861`  
		Last Modified: Sat, 24 Jun 2017 16:04:07 GMT  
		Size: 4.0 MB (4030707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bf1ac7afe05406a7212fef5b2842cb13d5986ceee6b8b5a1c172f1900a92eb`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2299c0e752eef2446b592a5ffc91d8875c1a352e3247a93fa3e15fb2cdf691b5`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
