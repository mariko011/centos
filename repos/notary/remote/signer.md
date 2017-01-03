## `notary:signer`

```console
$ docker pull notary@sha256:e0ac6d120e2ca3cad167014a2fa2b18f49bb51b329e50846a66915e27a3248c8
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5507925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b9c64c34ff530ac4dabdc88aaaf9795c94e9e759b4db62b50d285c8e0dd6c7`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 4444/tcp
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 7899/tcp
# Tue, 03 Jan 2017 17:54:51 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:52 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:53 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:53 GMT
WORKDIR /notary/signer
# Tue, 03 Jan 2017 17:54:54 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:54 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 03 Jan 2017 17:54:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:56 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092f8aae89b984d70bc1a3a4fd51b74d45e69cdc9dc80053545b70b509cf16cc`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80b43f228c9b94710ccb723d0a6c9e04958b2de0a9592a1c30faf251cd4e171`  
		Last Modified: Tue, 03 Jan 2017 17:57:03 GMT  
		Size: 3.6 MB (3603952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5ef2f67d7c342071a33bb6b8d35023f8814cf935db712565329d87f1ec5373`  
		Last Modified: Tue, 03 Jan 2017 17:57:02 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1efd0be7179bcb79ca0ebb78c8e28554ae13629c990bf533b111d9a5c2c632`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
