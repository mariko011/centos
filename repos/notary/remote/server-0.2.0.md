## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:a4413ca86dabd323fc7d48e04022f0f4b55059a6aee51a3ce288ed8780bd1f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:7485ed50814b0c464edd7d17b31ee4360d80320cd681698e84d1bcbf2d3b7a6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7771511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9690e469f5b4c30fba8ec4c1a9a834f56560b8a5284db4bd9c43622d7e95783`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:20 GMT
EXPOSE 4443/tcp
# Wed, 13 Sep 2017 00:07:32 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:37 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:38 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:38 GMT
WORKDIR /notary/server
# Wed, 13 Sep 2017 00:07:38 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:39 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 13 Sep 2017 00:07:39 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:39 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73db92a9688c04ed57185156ce962334730e796de1c1a422036469c93e4be987`  
		Last Modified: Wed, 13 Sep 2017 00:08:23 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29fbc0cc9a51df5d9b90daf58f0af094cca7052a49c7686283904d753f09e6`  
		Last Modified: Wed, 13 Sep 2017 00:08:41 GMT  
		Size: 5.8 MB (5779121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e6c4284679b0b63c2189372ff9beab779bea9a306633955b2709bfbca84f00`  
		Last Modified: Wed, 13 Sep 2017 00:08:39 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a6689444b34bac51c09e0876e77e0b3f50a7c8ec87f0b4467e80c5f44b6fd8`  
		Last Modified: Wed, 13 Sep 2017 00:08:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
