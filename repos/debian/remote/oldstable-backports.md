## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:88c46d4daee6004048ed00075add485dd7b281b49252a0652373669a9ffb0e8e
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37284878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7feb06fa6b3586a6856458839597fb92e90937f3c9c8b544641ecf09910e9092`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:35:19 GMT
ADD file:f837096aa62ba45fc70e8f62b0e43e5bcd3e6a35c5d9fd862781af71de967db5 in / 
# Mon, 27 Feb 2017 20:35:19 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:35:40 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7140f11045f2d42303ec62f3fd06c70a54abb6790f42b9e02a62df01bb0377b9`  
		Last Modified: Mon, 27 Feb 2017 20:42:44 GMT  
		Size: 37.3 MB (37284659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ee2478ce0de43cd6af7de47c7059caecfe9cff4b8e485a4e2d249505731405`  
		Last Modified: Mon, 27 Feb 2017 20:43:37 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
