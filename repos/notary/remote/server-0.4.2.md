## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:72288c87d6fe74512a3ff9afcf90fa929ccf3573d0a4d577dd7ae16dd5c0fa58
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5933713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5734dddd8adc94b2c1960accddb1b44eaf8cf62661721f0b18324a683156a24f`
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
# Mon, 19 Jun 2017 22:23:45 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Mon, 19 Jun 2017 22:23:47 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 19 Jun 2017 22:23:48 GMT
WORKDIR /notary/server
# Mon, 19 Jun 2017 22:24:12 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:24:13 GMT
USER [notary]
# Mon, 19 Jun 2017 22:24:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 19 Jun 2017 22:24:15 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:24:16 GMT
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
	-	`sha256:185d8a286b2ea9319f6b7605507110ce726888291da9dacbe6374d389ccf2fdb`  
		Last Modified: Sat, 24 Jun 2017 16:06:02 GMT  
		Size: 3.9 MB (3941565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33dfc9f85fa1f364a92b6cd436be24d9442f783f42867e2a78ec884c2eb6473c`  
		Last Modified: Sat, 24 Jun 2017 16:06:01 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cb4f0e473d19b36746c7a58c34e57c15e1cf33cef97f9a997fb13dc8178764`  
		Last Modified: Sat, 24 Jun 2017 16:06:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
