## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:0205ea4029b35b9f3d6bb9ee26524d947b0ea1b944eb9fdd012d8a3d5bbaf7d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:ecf899af7624bd66ef856c420973549907a9cc868e3aee3470b9fe4e2c5b6ffe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5561867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50777c0dce9c956a6e6867026dc5ae692c19fd9593c10a7489e84829a952fc45`
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
# Tue, 19 Sep 2017 00:31:41 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:42 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:42 GMT
WORKDIR /notary/signer
# Tue, 19 Sep 2017 00:31:42 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:43 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 19 Sep 2017 00:31:43 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:43 GMT
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
	-	`sha256:42441e9996351016c06a17154970941ce5e0276b2a98504b811070de7af2854b`  
		Last Modified: Tue, 19 Sep 2017 00:33:02 GMT  
		Size: 3.6 MB (3569551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0a16b1a0e2a2a525a2ff4de18480734ba56180f261a54f79c7db185f731231`  
		Last Modified: Tue, 19 Sep 2017 00:33:01 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c8a5cf08c2c364ff8a11c7fd15ca89b762525356666a582850995a1b36a38a`  
		Last Modified: Tue, 19 Sep 2017 00:33:01 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
