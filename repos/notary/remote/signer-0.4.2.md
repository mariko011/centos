## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:0988119d9a3e4d5ccb9d1c3337edee06f121eec1b5bf16dab68ab1f5f1aa78d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:e09e8b96071040732e18bdfe7e1915709c1e304f67525a266c7b0ffbf930495b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5562906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c24d02127127ac23ee13ed82c67e2a29f65f47a9cf05ed708be9efd860980f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 4444/tcp
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 7899/tcp
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:10 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:11 GMT
WORKDIR /notary/signer
# Thu, 26 Oct 2017 01:10:11 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:10:12 GMT
USER [notary]
# Thu, 26 Oct 2017 01:10:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 26 Oct 2017 01:10:12 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:10:12 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d8635b62360ece74a1d9ecd1d18b82238ce4278f51e586fb0251fbbeea4fb3`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeab4d540886e0fe5b060ce91df881fe3306a03bc8e8740427005d19e75d4de7`  
		Last Modified: Thu, 26 Oct 2017 01:21:36 GMT  
		Size: 3.6 MB (3569555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a676d7c3eb86a75cf25e0d0cdaef6ee284018be338052b5c6ae5598d8e24db`  
		Last Modified: Thu, 26 Oct 2017 01:21:35 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90173dc481cb9b6b6ea6fb31ad4ac9d7dba0ba64fccd7fae9de591840049359`  
		Last Modified: Thu, 26 Oct 2017 01:21:35 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
