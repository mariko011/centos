## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:2f28c2d89d81e39fe30e8bdba8fa04e76e7247404f9f8782342eedd39b402405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:7fac56a028d47afe4ba8f6bccfb15ab514dc41569a664b775c13be73de0bfeec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7535588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb02706d44f452e914b73f6bb84147e95efe6f5cc616df1b8fcbdb8765121d9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:28 GMT
EXPOSE 4444/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
EXPOSE 7899/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 19 Sep 2017 00:32:06 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 19 Sep 2017 00:32:07 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 19 Sep 2017 00:32:07 GMT
WORKDIR /notary/signer
# Tue, 19 Sep 2017 00:32:07 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:32:08 GMT
USER [notary]
# Tue, 19 Sep 2017 00:32:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 19 Sep 2017 00:32:08 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:32:08 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb4f22e3d438191aab9da901fef4602a4c6280f0a869b86723bd1429053b53`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca28b15cae4efed66783b457fd0ea47fcc22804e98b895ba851d36d3d77b768`  
		Last Modified: Tue, 19 Sep 2017 00:33:43 GMT  
		Size: 5.5 MB (5543267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795320a00a125b6a49460663bd94e7a0ee8227e6d51f83ede270bda8ad4ed14b`  
		Last Modified: Tue, 19 Sep 2017 00:33:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff452950ebb050a3b8cb3dad218bbf665d0f7413acaa81e8a90ff2a9470121a`  
		Last Modified: Tue, 19 Sep 2017 00:33:42 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
