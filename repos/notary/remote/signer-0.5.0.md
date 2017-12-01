## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:530f9ef79e6aff5be0108eeaa2b00dd2ea38952b5d6dd8a807e00bc08d8c0bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:d2d918460ae4e19adce0f5fc8fc8c583b4df8918b59348334172f868617f6ff1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7189eeac5f28bf12997419be498f5fcff976ab102afa24eefa61cfeb75266dec`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 4444/tcp
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 7899/tcp
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:18 GMT
WORKDIR /notary/signer
# Fri, 01 Dec 2017 21:24:19 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:19 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 01 Dec 2017 21:24:19 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:20 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f92cd3c514b87c9520aab5d7aa8327bab1b70130520cf5d3db6f6e42ee2fbb`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ad0801ccf86e13f3f1dbcc0621406cf0e5ec936f5335d10a8198f27a744d7d`  
		Last Modified: Fri, 01 Dec 2017 21:41:21 GMT  
		Size: 3.7 MB (3650995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3942ca9a8aedc4c09b90030a7b8282151cf9ab0329abdebe87c490624dcb5f25`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f954f7026683b2d25a873fa3dc2569785d3dce3f602ffc88cc92e9cd4976209`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
