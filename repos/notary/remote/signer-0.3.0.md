## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:0fff7b7c3b91cf3d6de5e3a6596225eb35b0f77186ef52261aa8e4e643ac11d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:9c76859fabd155541bfba0ef445656cfbb49fba8346768e77cf38a2e9cad6a6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6568285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f88c12cf12a95f1c9ec8fe522f8a256b9354205dcb97540fe1a1052e4501573`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 4444/tcp
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 7899/tcp
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:35 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:35 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:35 GMT
WORKDIR /notary/signer
# Wed, 13 Sep 2017 00:07:36 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:36 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 13 Sep 2017 00:07:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:36 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e97421a11f4d6e11074c6b113874ca39cdf1de5c00a0bdcd6d9ef7fc218ea`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020602951d76d2272e09f1c2eb4a95ca69c283ffd16d633e3d3db9492df79c2b`  
		Last Modified: Wed, 13 Sep 2017 00:08:32 GMT  
		Size: 4.6 MB (4575964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8d2d93288975a7402c9eb3d8ef99aee3e3cf787587d7e6df4c63cfdb64651d`  
		Last Modified: Wed, 13 Sep 2017 00:08:31 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40524846c39a935391075495d709abc607df8197e473d2b2dd3d1f0954e2291`  
		Last Modified: Wed, 13 Sep 2017 00:08:31 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
