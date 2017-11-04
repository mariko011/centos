## `notary:signer`

```console
$ docker pull notary@sha256:a6122d79b1e74f70b5dd933b18a6d1f99329a4728011079f06b245205f158fe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:2388fd72f69140efb15746a23bdf4290cff9ea8892ccd072a4929e6300945035
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5644330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898046ce82ea442256a4721ab531123da97a2f2b62d5dec60277de623abd27d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 4444/tcp
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 7899/tcp
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:22 GMT
WORKDIR /notary/signer
# Sat, 04 Nov 2017 13:09:22 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:22 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 04 Nov 2017 13:09:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:23 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ddb0438272f33d92ca5aeb4c40c377441b3990238a71e242a79521af2e08a5`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3155f8bde90a7292f138eed1f70a2cf113feff516e69bbbeaed2aa27abba40`  
		Last Modified: Sat, 04 Nov 2017 13:10:24 GMT  
		Size: 3.7 MB (3650987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a6e498f0be1f1affdbc9f3042dc88de1067560a06b2babbf8f3b113f67b79`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6e0d404237b950d92bb240a2ca259af07eb543c346052392c2d2ff2e347cab`  
		Last Modified: Sat, 04 Nov 2017 13:10:24 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
