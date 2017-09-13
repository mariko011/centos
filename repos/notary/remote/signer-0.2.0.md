## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:a6ea39cf7e8154f411060b01a64e66714de014180f4791aa69bb1ecf42614abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:d967c09d7f040519d5c6bc1a3d37696aee1d152d4784c22eb2797b51995c209d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7535579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5946a54a4977ae1beef8cccedb4004fdb4956120b9bb7477e72c27d09cb1c3c7`
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
# Wed, 13 Sep 2017 00:07:40 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:40 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:41 GMT
WORKDIR /notary/signer
# Wed, 13 Sep 2017 00:07:41 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:41 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 13 Sep 2017 00:07:42 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:42 GMT
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
	-	`sha256:b3f7822d45320490d40970115c2632d4e64d25cfd9ef4910d7348e741de1e304`  
		Last Modified: Wed, 13 Sep 2017 00:08:49 GMT  
		Size: 5.5 MB (5543264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4738683bb394cb6c9c718f5d2a04a4fb0a9466f6723ef348f5639b0c09af4eb`  
		Last Modified: Wed, 13 Sep 2017 00:08:47 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda493b93bdff7831e99f87d0be7fd70b33d701b3bcb81ba9d9bcddfb6a03662`  
		Last Modified: Wed, 13 Sep 2017 00:08:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
