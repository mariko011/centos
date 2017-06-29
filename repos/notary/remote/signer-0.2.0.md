## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:48cfee7f61582909ad9334546e6d2190a9963f038a3c41cc129df1777fa789c1
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7535577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f14a5bda1418ac01151443e6d7184ed5a58c4b96ab2769b5d84123fa7e833596`
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
# Wed, 28 Jun 2017 20:01:48 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:49 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:50 GMT
WORKDIR /notary/signer
# Wed, 28 Jun 2017 20:01:52 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:01:53 GMT
USER [notary]
# Wed, 28 Jun 2017 20:01:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 28 Jun 2017 20:01:54 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:01:55 GMT
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
	-	`sha256:89132301698dda3b64ffc5490ad077170ba10767cde95d34c6daa15d19f5cdd1`  
		Last Modified: Thu, 29 Jun 2017 22:46:02 GMT  
		Size: 5.5 MB (5543261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c423daf23f0318c42813bf28e57aa872da29da1497b5af6688065b59daa704`  
		Last Modified: Thu, 29 Jun 2017 22:46:00 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a61cffe61d71ad718f3a02c7917666f520337fc74dd3720ddfb6a511d16af97`  
		Last Modified: Thu, 29 Jun 2017 22:46:00 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
