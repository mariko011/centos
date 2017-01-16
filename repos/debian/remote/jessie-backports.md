## `debian:jessie-backports`

```console
$ docker pull debian@sha256:66784a3af6f29e400ed6d95d680409f675fc4a1bac6b8977a91f784e79bbca5f
```

-	Platforms:
	-	linux; amd64

### `debian:jessie-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51361426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b033ac5d8780ddf4ddcb399c4113fe39af35321f33278ae14dab90e17d7d1506`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
