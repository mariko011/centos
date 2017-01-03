## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:af80c652fb7399937ecb360df3d19be6046f149dcfe9fcc901961e750d327115
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5428228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:391ff85cbd742157e45c376a0549d17de8809ca01c50b9ec389daf0d03c07fa2`
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
# Tue, 03 Jan 2017 17:55:08 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:08 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:09 GMT
WORKDIR /notary/signer
# Tue, 03 Jan 2017 17:55:10 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:55:10 GMT
USER [notary]
# Tue, 03 Jan 2017 17:55:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 03 Jan 2017 17:55:11 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:55:11 GMT
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
	-	`sha256:b6045f92f8a7f16aee7ab44a88375476341ef5bf9e172447c69f023193e3e2b8`  
		Last Modified: Tue, 03 Jan 2017 17:58:17 GMT  
		Size: 3.5 MB (3524254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbed5e195546cfac405e537c63967df3da167d81ed1049a5058bf5b392bf8ca`  
		Last Modified: Tue, 03 Jan 2017 17:58:16 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b284f8ef1dbb935b4f723fc709389496edb1df0cbc7b794409272579f3eb87f4`  
		Last Modified: Tue, 03 Jan 2017 17:58:16 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
