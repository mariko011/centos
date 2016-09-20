## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:7c60fc0f03a034ceedf92a6033647e29f8a52f481dc3e56e6acfab35d0342c47
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7778087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb3a0b3f99ee143afc739faf0058adf5d364112ea657cad25daa05c167ce40a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:36:08 GMT
EXPOSE 4444/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
EXPOSE 7899/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:10 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:11 GMT
WORKDIR /notary/signer
# Tue, 20 Sep 2016 00:36:12 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:36:13 GMT
USER [notary]
# Tue, 20 Sep 2016 00:36:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 20 Sep 2016 00:36:13 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:36:14 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daabcea5601b5766d048e95ec96e4d4f04fcaf8d2e4b3ecbbf9a0bab7e581ac0`  
		Last Modified: Tue, 20 Sep 2016 00:36:22 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63591b648a8010cde0b041988ed097a8591cb4329174693d6d133e6f1a949ed`  
		Last Modified: Tue, 20 Sep 2016 00:36:25 GMT  
		Size: 5.5 MB (5465106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b00ac5a125c75cd0d385dcb37e81f44be828d04f5b2f042badedc58bfb005`  
		Last Modified: Tue, 20 Sep 2016 00:36:22 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e43c1bacfa26ff9922611e30fa9134e12bc4faad98e24814ac7527c94eef63`  
		Last Modified: Tue, 20 Sep 2016 00:36:21 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
