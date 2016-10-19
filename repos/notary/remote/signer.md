## `notary:signer`

```console
$ docker pull notary@sha256:55e4b8b9e6b32068750ab66a7a95cb97e1e068d5e3a9863bf247f936527cd3bf
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6835630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8003dadda01ca53eaa7cd3eb8615056e8250ca0a62d54896f1eef263947ad36f`
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
# Tue, 18 Oct 2016 23:45:27 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 18 Oct 2016 23:45:28 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 18 Oct 2016 23:45:28 GMT
WORKDIR /notary/signer
# Tue, 18 Oct 2016 23:45:29 GMT
RUN adduser -D -H -g "" notary
# Tue, 18 Oct 2016 23:45:29 GMT
USER [notary]
# Tue, 18 Oct 2016 23:45:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 18 Oct 2016 23:45:30 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 18 Oct 2016 23:45:31 GMT
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
	-	`sha256:861fc47e0f6a7855e9a8a2732623c8d9f6a88fc5d2bbd6a2744c93ff69498d9a`  
		Last Modified: Tue, 18 Oct 2016 23:45:41 GMT  
		Size: 4.5 MB (4520744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b7158b47521e44728575a8bfc5f35b9415db4fa329199def4dcfc8eb7cbcc`  
		Last Modified: Tue, 18 Oct 2016 23:45:39 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07e54f4415179dc69979127a8a0746f8c464ffaf3abb8d704be288443634e3`  
		Last Modified: Tue, 18 Oct 2016 23:45:39 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
