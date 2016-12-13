## `debian:stable-backports`

```console
$ docker pull debian@sha256:7fd7d479712793ae108ae192efb7e7f568533e6fd2ed11b8d0813baea29400cb
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51364127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf548f4bc2ffed95bd78ff683fbe8fd2528830a5b4ca5fac965380a5916d7b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:59 GMT
ADD file:830c4afcf371ce728b9dfaa8427c8a83f088eab5c0ca71bfe7e79b0fc2969cca in / 
# Tue, 13 Dec 2016 22:13:04 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:13:21 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4dc59461993bd8bad1f33d5922f6e6e5456bc69172811440e3fa42675c5701c2`  
		Last Modified: Tue, 13 Dec 2016 22:21:51 GMT  
		Size: 51.4 MB (51363912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af38340df5791e0099f9440d8ed15a21bf12691bd27149f75930e0fda1cee2a`  
		Last Modified: Tue, 13 Dec 2016 22:22:48 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
