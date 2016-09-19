## `debian:stable-backports`

```console
$ docker pull debian@sha256:7df8b68152aad98c4ae47ab7583447bc61a44f0f96bb9f013d1181de1e50a347
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51354796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7322062ecf6b5cdb55ece22f44f3bb41d8c0717714704bb32c69aeaa4f7cd06b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:03 GMT
ADD file:27fe96b732c560bd7af4b291f7675933ba5498904dc643e5cb1321b774519b08 in / 
# Mon, 19 Sep 2016 17:43:04 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:43:05 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f1ecba1f8c443d51dc56669afe59665919f7c8a8b7c0d23a0b5ee8fb43aa1366`  
		Last Modified: Mon, 19 Sep 2016 17:46:41 GMT  
		Size: 51.4 MB (51354577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a37929d8b08c8adf2bc0a7301b1e22587d92bb60c51e330bf13cc3364fff9d`  
		Last Modified: Mon, 19 Sep 2016 17:46:58 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
