## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:7ca510bd0165d7e307211d64a10404e6af6da62bdda5538a10117a687b88bb79
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6853249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84244b886e93cc9e83657f289479c232a880b65916567a01eb66885902873cf`
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
# Mon, 19 Jun 2017 22:27:08 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Mon, 19 Jun 2017 22:27:09 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 19 Jun 2017 22:27:32 GMT
WORKDIR /notary/server
# Mon, 19 Jun 2017 22:27:34 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:27:57 GMT
USER [notary]
# Mon, 19 Jun 2017 22:27:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 19 Jun 2017 22:27:59 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:28:00 GMT
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
	-	`sha256:c76ee550b460e7c0a2c139df9343d7daad180b4a8367e2773acafbb38d938bfe`  
		Last Modified: Sat, 24 Jun 2017 16:07:10 GMT  
		Size: 4.9 MB (4861100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13d8b91c3fb07c175d6be81e90ec3cb2ec3e39375b22f67a23e7c4423e762b7`  
		Last Modified: Sat, 24 Jun 2017 16:07:08 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589b2049adc3ae64d75df55109e4079151302ecf2e999f76959978a3d054ff41`  
		Last Modified: Sat, 24 Jun 2017 16:07:08 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
