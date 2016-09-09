## `notary:signer`

```console
$ docker pull notary@sha256:a1b6573d891c12576936e879fcb8a0bab17af6bf7814faefe03dd8c45f150c37
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6832955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f222abb1a456394e82aa92409999f88e4a4f81dfe818e226ccc07d31b6c7936d`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:27 GMT
EXPOSE 4444/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
EXPOSE 7899/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:28 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:29 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:29 GMT
WORKDIR /notary/signer
# Tue, 30 Aug 2016 16:28:30 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:30 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 30 Aug 2016 16:28:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ad878eb1805fc907585c252fb75def27f64acef39ee34d1b339493d128d2db`  
		Last Modified: Thu, 08 Sep 2016 18:06:21 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2159990869e22e040bbecbaf4501279fcf8de226b0cf52c63865b8256787446`  
		Last Modified: Thu, 08 Sep 2016 18:06:20 GMT  
		Size: 4.5 MB (4520744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e1bfee8c6b55519d83a413032699c3bb324bf030a690efd4365efafbabb451`  
		Last Modified: Thu, 08 Sep 2016 18:06:19 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc047fc8f4d4dd0e275fdb918cd087b781bc84455d351a76ff55e1a29d527403`  
		Last Modified: Thu, 08 Sep 2016 18:06:18 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
