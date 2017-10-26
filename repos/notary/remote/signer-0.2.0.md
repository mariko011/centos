## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:203d0d959243c5d424ec6fa8177fee20bb4876ff08d906ad11caa5d2f001db57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:d58e20db0316c0b2f40ed721b046e01511fc9aad3e1d212287b6f44519824448
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7536612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d796a9af66ba6bb0c46e0ebf96c8e699eecf8be0f4278ff1892d6a225973db`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 4444/tcp
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 7899/tcp
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Thu, 26 Oct 2017 01:18:59 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Thu, 26 Oct 2017 01:18:59 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Thu, 26 Oct 2017 01:18:59 GMT
WORKDIR /notary/signer
# Thu, 26 Oct 2017 01:19:00 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:19:00 GMT
USER [notary]
# Thu, 26 Oct 2017 01:19:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 26 Oct 2017 01:19:00 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:19:01 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d8635b62360ece74a1d9ecd1d18b82238ce4278f51e586fb0251fbbeea4fb3`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fc3f2df742781198250ab70f53a20a03e5e03613497e50cd8d4853a4e32acb`  
		Last Modified: Thu, 26 Oct 2017 01:22:33 GMT  
		Size: 5.5 MB (5543258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c2b3cbf19bc8a755252990e9a30ae0a3a15e451867935e686d905e0fc148d`  
		Last Modified: Thu, 26 Oct 2017 01:22:32 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5262d866c62b3b66520cde383377c132d45f2d83bc48eaa565ce9798c4b56f`  
		Last Modified: Thu, 26 Oct 2017 01:22:33 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
