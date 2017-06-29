## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:57eb6b1b66ea46e48407b9ce110786d9363578a251bc039c61caa6d152c95614
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec9f4f4e519a4e06b7bf6d60966996ac55abbb492224d4d6ffbf308fa9349d0`
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
# Wed, 28 Jun 2017 20:01:14 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:15 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:16 GMT
WORKDIR /notary/signer
# Wed, 28 Jun 2017 20:01:18 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:01:19 GMT
USER [notary]
# Wed, 28 Jun 2017 20:01:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 28 Jun 2017 20:01:20 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:01:21 GMT
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
	-	`sha256:947d7cc373debb62dd93f04a6643d7726c529f86f5b8057704e62fe85b8e7185`  
		Last Modified: Thu, 29 Jun 2017 22:43:57 GMT  
		Size: 3.7 MB (3650994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e92aff078b678634b07dc9e573b273f2bfeeccca89d63077ca264edf218ced`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71b31ebb1980bc8dddd1feaab3efd8ad84c979d12d963f46bedbc96e39ed64b`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
