## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:7379f3705103334922a01da451a2290234e1ec6dd80c54942ea2201419dcd74b
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6568279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e64a876b1f90e33c9855e8e97b8523c689b9c2b16f01b714dea560427aee659`
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
# Wed, 28 Jun 2017 20:02:22 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:23 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:24 GMT
WORKDIR /notary/signer
# Wed, 28 Jun 2017 20:02:26 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:02:27 GMT
USER [notary]
# Wed, 28 Jun 2017 20:02:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 28 Jun 2017 20:02:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:02:29 GMT
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
	-	`sha256:08fbcc7947e97f685ef8469131006565f91f2bedc93922413d1e7bce420b0ef2`  
		Last Modified: Thu, 29 Jun 2017 22:46:52 GMT  
		Size: 4.6 MB (4575961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5337fbece0b88a4660b82baf6c0295b46ca6c67ede1d1128c8214b2ce32e3c`  
		Last Modified: Thu, 29 Jun 2017 22:46:51 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8792bd5f2b735bf78d18d21a2c5467378692e57f44c970a82f320fbed87c78d7`  
		Last Modified: Thu, 29 Jun 2017 22:46:51 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
