## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:d511a2bf4c54500d7f8868556507e7fe7bdad1bc7086a50257441213aa47789d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:e9646cbd41e0312cc39a21a1fcc386e7b5d2b5f73213561d8bf4f8d11e84118f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6568283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1516fd107b8b1eea1c38dae627f5b1f601930b4aa1d6aebace184d8fadf66200`
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
# Tue, 19 Sep 2017 00:31:54 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:54 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:54 GMT
WORKDIR /notary/signer
# Tue, 19 Sep 2017 00:31:55 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:55 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 19 Sep 2017 00:31:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:56 GMT
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
	-	`sha256:6aef2dc7a014b4e802c2d1d6f534ea0e2dd0cd0e64c3da042afe9fffaa3416f3`  
		Last Modified: Tue, 19 Sep 2017 00:33:22 GMT  
		Size: 4.6 MB (4575962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abdfdacb085b1da28c20d3b6fbf1b195a5802bfdc9bc4665e08a44bf500ca37`  
		Last Modified: Tue, 19 Sep 2017 00:33:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30726e9f802e16e7875d32208181ea998b6228fc43cdaffca1f60d38e584bbc`  
		Last Modified: Tue, 19 Sep 2017 00:33:21 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
