## `notary:signer`

```console
$ docker pull notary@sha256:ca6a53284aaa7e518d39c834165a2cb941dcce52f06044bd2f143704e84f308f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:22e4cd305397ddd68d23dc90795b83cc006c1b7f1dcf7accf813e301d5a63523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df63f28cc44cbab685cb0928be67df9697bd3d8d22d1b49f9d5f88431b6bd1b`
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
# Tue, 19 Sep 2017 00:31:29 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:30 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:30 GMT
WORKDIR /notary/signer
# Tue, 19 Sep 2017 00:31:30 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:31 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 19 Sep 2017 00:31:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:31 GMT
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
	-	`sha256:f4009e9682c4bf2611331f65eda28cd8e856bfb9d659e099ef8644755cde78a8`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 3.7 MB (3650996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3be99792bdba396a1a6fcc8d2df2a737278c4d84e803aef22a0921ff4cd087f`  
		Last Modified: Tue, 19 Sep 2017 00:32:34 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadfc892323f304b10a2980c7111080b30f47e1402d617bbfe18d03acb5ba644`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
