## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:002d606d6081d34988b787d48c381cec1a3bf1dba615259efaa49559b3f9d582
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7771268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04a37fe4147f3b371c0e9b42a0f51e1118517fbd099e20db943329d7efe9c23`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:19:58 GMT
EXPOSE 4443/tcp
# Mon, 19 Jun 2017 22:27:06 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Mon, 19 Jun 2017 22:30:50 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Mon, 19 Jun 2017 22:30:51 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 19 Jun 2017 22:30:52 GMT
WORKDIR /notary/server
# Mon, 19 Jun 2017 22:30:54 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:30:55 GMT
USER [notary]
# Mon, 19 Jun 2017 22:30:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 19 Jun 2017 22:30:58 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:30:59 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d013ba4ebb2e1f5c81e3625e6f09657439a763300091702c5063d03f4da49d`  
		Last Modified: Sat, 24 Jun 2017 16:07:08 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c42fd0ac40dcaf70cc971581f5bfaf178c5eb2a883a4cf371605e3bc6d95a7`  
		Last Modified: Sat, 24 Jun 2017 16:08:13 GMT  
		Size: 5.8 MB (5779119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cc0ade1b408b5fa47537c3a1ebbed653682b72e5e3f8f0946363f9d6688969`  
		Last Modified: Sat, 24 Jun 2017 16:08:12 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cba41f7e3829a5ca721fcc73c5b97edcd14ba9d5f6ebf6e6c599db5b0c1b11d`  
		Last Modified: Sat, 24 Jun 2017 16:08:12 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
