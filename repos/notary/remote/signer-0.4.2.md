## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:d09b830cd1710f38698ff0efcdda6bc7a512162c30ca995da72109f6f6151939
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5561876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6926ef3a88ef356f06e08ed612d6a850c6f0c454918cce5dc264dd2f25a46de3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:01:11 GMT
EXPOSE 4444/tcp
# Wed, 28 Jun 2017 20:01:12 GMT
EXPOSE 7899/tcp
# Wed, 28 Jun 2017 20:01:13 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:55 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:57 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:58 GMT
WORKDIR /notary/signer
# Wed, 28 Jun 2017 20:02:59 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:03:00 GMT
USER [notary]
# Wed, 28 Jun 2017 20:03:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 28 Jun 2017 20:03:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:03:02 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40e508e23d46031415aafdef10ce790a0635a35bd15c0b3858ef2f6c9d22eb`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db787e7f9d69d6ec16f2940a3505683e581f8c1f2552c1cc2a6c8bf6371f717`  
		Last Modified: Thu, 29 Jun 2017 22:47:43 GMT  
		Size: 3.6 MB (3569557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9636c9ef9a8d778ad0ead86452e674214ace2a7251f73aaa038a9652ef34fb5c`  
		Last Modified: Thu, 29 Jun 2017 22:47:42 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1157737daa8c2e02c050ebbdb9008896b231c49c2a49a3cd6b7a96e1e888f866`  
		Last Modified: Thu, 29 Jun 2017 22:47:42 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
