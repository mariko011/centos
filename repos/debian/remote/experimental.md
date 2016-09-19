## `debian:experimental`

```console
$ docker pull debian@sha256:c2a7e78539a3f08eb6aa76ccf8572e2aedb7d15b3c65bc66cef91098d7b394d6
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43228820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcfe7ae4445b4f6a56f79bfb13303772460edabe3ec6778a79debc4733e6fa19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:27 GMT
ADD file:6742b17f1f0553c894a8abc583e88cb0b5c4dae86ccec4aea54348fd0e1f22a9 in / 
# Mon, 19 Sep 2016 17:43:27 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:43:38 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:7fefbdea7cc192ab028ed1ec7f7f2f34c6d32a0055bb77a26c9a6dafdbe1dc28`  
		Last Modified: Mon, 19 Sep 2016 17:48:25 GMT  
		Size: 43.2 MB (43228603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd6ccc6749f4f6ccc12c080de82eeb5d75bd2888c6a385b30b4213652faf575`  
		Last Modified: Mon, 19 Sep 2016 17:49:51 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
