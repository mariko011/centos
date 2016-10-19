## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:7c593525810c7f492d11bc48e2bfd6f5244dff3734c287740657a9c5b5499d39
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7779985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6de4bf6b5f8f25e0b4c1c2d2d128afb8fd3a077ce61fbc8afc6202e9b53c8da`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 4444/tcp
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 7899/tcp
# Tue, 18 Oct 2016 23:45:27 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 18 Oct 2016 23:46:01 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 18 Oct 2016 23:46:01 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 18 Oct 2016 23:46:02 GMT
WORKDIR /notary/signer
# Tue, 18 Oct 2016 23:46:03 GMT
RUN adduser -D -H -g "" notary
# Tue, 18 Oct 2016 23:46:03 GMT
USER [notary]
# Tue, 18 Oct 2016 23:46:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 18 Oct 2016 23:46:04 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 18 Oct 2016 23:46:04 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643403c0c9e60605eb2f2414eba0c0437f6d63dd57efc3d4409aadf784944715`  
		Last Modified: Tue, 18 Oct 2016 23:45:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52861b243358f481732c40e15258398b43e4755d346e0fb61caa1c4687b842db`  
		Last Modified: Tue, 18 Oct 2016 23:46:15 GMT  
		Size: 5.5 MB (5465095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223c1b0158f8051f7106c85ab5d7eacb622903bd873025fdb34f4e1b150dfc19`  
		Last Modified: Tue, 18 Oct 2016 23:46:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926af1cb9a1b580686fb6e5e861f4603ec9c6f889b095445694cabafc34dc309`  
		Last Modified: Tue, 18 Oct 2016 23:46:14 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
