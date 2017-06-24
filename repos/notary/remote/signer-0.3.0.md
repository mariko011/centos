## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:347f4e0313a0a26df7a43ab16de8f16f6568f0f79f98dfe41034fc5a3fe6ea7e
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6568042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fe132e57d8d9e058f775249ae05bafd4dcd5e49c25899e7250b7a7cc3d0185`
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
# Mon, 19 Jun 2017 22:29:10 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Mon, 19 Jun 2017 22:29:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 19 Jun 2017 22:29:12 GMT
WORKDIR /notary/signer
# Mon, 19 Jun 2017 22:29:36 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:29:37 GMT
USER [notary]
# Mon, 19 Jun 2017 22:30:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 19 Jun 2017 22:30:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:30:02 GMT
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
	-	`sha256:b8b9f1060f21ca1a24c908b34ef310fda62e3167e5e6fb8467bf91a49c183e71`  
		Last Modified: Sat, 24 Jun 2017 16:07:41 GMT  
		Size: 4.6 MB (4575961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a2c14d121ab51c52824b916427d0572693b722475711b69a14e1f329eefb0e`  
		Last Modified: Sat, 24 Jun 2017 16:07:41 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72403ab067c3589169904f5798054fcd0f3b3edcca4ff0c8be70c294d5f4b3ea`  
		Last Modified: Sat, 24 Jun 2017 16:07:40 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
