## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:a41e7e3cb29ab48f49fdf1a4bb4ecc4e2f2aec9b60e107918dea6afebb0408fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:08b0ac6d14e231ce9534f09b13463089e6fc94184912b3fcdb9d43a20b70da24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6853491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb7d78083b533200e59ba92eab7c1a91081ba050a830ab93cf69a837cf09fb2`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:21 GMT
EXPOSE 4443/tcp
# Tue, 19 Sep 2017 00:31:48 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:48 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:48 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:49 GMT
WORKDIR /notary/server
# Tue, 19 Sep 2017 00:31:49 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:49 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 19 Sep 2017 00:31:50 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:50 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c45e5b351f1ba6ae47937b7f53fa2e9464bf375746705f65d2d6f477b2b047`  
		Last Modified: Tue, 19 Sep 2017 00:33:11 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c2e21e6a3fec914806b0b202c7e4e529c2650d57671f2ec0572f8cf791c2b`  
		Last Modified: Tue, 19 Sep 2017 00:33:12 GMT  
		Size: 4.9 MB (4861104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc87788f58af1c15e301923b949208463ed11827ff5f0e011e7ab105bdbd3b48`  
		Last Modified: Tue, 19 Sep 2017 00:33:11 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fbb6d080e166043e9057652544bb64861adfd50ae6d383455f15f9c6e1b81e`  
		Last Modified: Tue, 19 Sep 2017 00:33:12 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
