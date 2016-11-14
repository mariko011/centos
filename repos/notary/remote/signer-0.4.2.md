## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:a5fbc2af03fc76e9f7b3c62fabd8abd6e302e377ec6398bdc141c7c58667d7c1
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c2c7156c56bdca28494d380f552b1f5059c7fd79de7993f3d832177aa8fb4b5`
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
# Mon, 14 Nov 2016 23:22:32 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:33 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:33 GMT
WORKDIR /notary/signer
# Mon, 14 Nov 2016 23:22:34 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:22:35 GMT
USER [notary]
# Mon, 14 Nov 2016 23:22:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 14 Nov 2016 23:22:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:22:36 GMT
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
	-	`sha256:57b3a30fb4d56968964f71b86fa9e46c92ada10c848853c33c9acc079db48b2f`  
		Last Modified: Mon, 14 Nov 2016 23:24:32 GMT  
		Size: 3.5 MB (3524255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141078e8525e1b4946d4dac7fb8651dab6d9af15e8b1908a1dcf1f0f01d74b13`  
		Last Modified: Mon, 14 Nov 2016 23:24:30 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f9c0ea931e8c02ae0a23c8fa940b7600394946119986078e1de1b2bc3b054`  
		Last Modified: Mon, 14 Nov 2016 23:24:30 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
