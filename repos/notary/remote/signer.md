## `notary:signer`

```console
$ docker pull notary@sha256:cde4287625e19b99d45001ff7b26e605c798651cdf11019e04d8901b28fd0e9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:3513095a34563cdb4f7d899924c3ffecc1cb10b817a62caa960ca666dafeea97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f1a3e37013c4664dd577c1d4d696843cc72f0b09ae36f70f681ab7eb30db87`
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
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:24 GMT
WORKDIR /notary/signer
# Wed, 13 Sep 2017 00:07:25 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:25 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 13 Sep 2017 00:07:26 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:26 GMT
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
	-	`sha256:a3237dfb7ba721156fd954b63b9f649f28cbc4fc5ce79909e7e76ebf260fa0ba`  
		Last Modified: Wed, 13 Sep 2017 00:08:00 GMT  
		Size: 3.7 MB (3650997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e2653e2b9f6e85aed0c26e6554003da3d25c1415c93bff65746eb5f4bcca3a`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528861eb9fa3f8b9ca920953934b1f8b6ef8ec28307b32b26f0f3d514190a1bb`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
