## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:7704c3e3cf0edd3467c4d34319a7dd67ec8923463c9c6e6aea0e251f96101c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:fd01187e92c29bea1baa9d46ba7aa29db9034c9cee9293fec17f897726f72f87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5561870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0111ad7837451b14bdb66e0772621e7815c2c9cfa7cf9c1c745f732cee1af638`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 4444/tcp
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 7899/tcp
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:29 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:29 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:30 GMT
WORKDIR /notary/signer
# Wed, 13 Sep 2017 00:07:30 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:30 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 13 Sep 2017 00:07:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e97421a11f4d6e11074c6b113874ca39cdf1de5c00a0bdcd6d9ef7fc218ea`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe5703281d30c55c1647748b9fd1e0819cacc9d2bc066a2c9568dd84538f2d4`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 3.6 MB (3569553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee2e314fd0b4422dffa5b8dd27bbc6fe84a101067f77d29179869af0e773806`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca935fd784d6cea528b18b9b4ef1586bb49ffad1097e8da44c7370290248eefd`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
