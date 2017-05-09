## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:0ecf84ea549cf219f92bb22db54b2e1f63c1a4d2c0cba1b3587209e7b351743f
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66339028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:444acb4af228415feeed8cc2cbc031a27f0e6f5b96c3238e533a6687fc59a50c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
