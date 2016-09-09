## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:56cd3b6ff22c202bf2c976a77630a672addaa6fc8936219741b3896de338a3d7
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7777314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06eda3b91b0adce9b155863eaaf1b14fea0c01df8bbe288a492da845cf42f89a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:27 GMT
EXPOSE 4444/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
EXPOSE 7899/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:35 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:35 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:36 GMT
WORKDIR /notary/signer
# Tue, 30 Aug 2016 16:28:37 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:37 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 30 Aug 2016 16:28:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ad878eb1805fc907585c252fb75def27f64acef39ee34d1b339493d128d2db`  
		Last Modified: Thu, 08 Sep 2016 18:06:21 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03b809d6ecfde10e096ba6907ee939768aa00e86be67ef98265c93e5b03c358`  
		Last Modified: Thu, 08 Sep 2016 18:06:59 GMT  
		Size: 5.5 MB (5465097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fe1c622f1368581e63559d677e83710ad9b036c74a0de3e5885b4b0c172660`  
		Last Modified: Thu, 08 Sep 2016 18:06:56 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bdceaba58fda76d8370f75d971b7bca4eee5567b8df9ec2adf9f4466fea647`  
		Last Modified: Thu, 08 Sep 2016 18:06:56 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
