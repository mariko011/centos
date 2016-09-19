## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:e51e33103e2308b9b22586189707da802e8a07d2b6aa74c2241a8c7ee2193705
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37214813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c21c5b41212e6615ecac7e1962c1cde96f4c0a844f0438e1a860a045383ffb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:46 GMT
ADD file:ca1b2e757bad42bc767a110c41f0aed349f1aa7e653fba5d4f7f3ee1f837e5eb in / 
# Mon, 19 Sep 2016 17:42:46 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:47 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b4821cbc85929832c9673733fce1111e9dc2e2892ccaf6b853d9e27f438d4767`  
		Last Modified: Mon, 19 Sep 2016 17:45:28 GMT  
		Size: 37.2 MB (37214592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81812662d0a160b29cc87c5ec19af69399a6bf2dbd0695e6cb36e6007051564b`  
		Last Modified: Mon, 19 Sep 2016 17:45:47 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
