## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:41428d67e8e463b21a4fe269e72cc5fcab153ec99364ddef90de01d91ff34978
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62987647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba47e3b75d9fb5f6b6fc6a17a58bdeed3757b14ae27470e20bf91b445330ac73`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:12 GMT
ADD file:aa371a6a9864ba179f42eeddca63e5f6f43762fe3f027c4bbb813d767ffcbe99 in / 
# Mon, 19 Sep 2016 17:43:12 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6dba5ad0625e5a3b8bb5f58cfa8219b78c0d14d0ddc49bdefd3c520e3fd035c`  
		Last Modified: Mon, 19 Sep 2016 17:47:24 GMT  
		Size: 42.4 MB (42440104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa81a2a42fb74655b655f517192140b20313fea81c14f5422aa60a73507b3cc`  
		Last Modified: Mon, 19 Sep 2016 18:00:01 GMT  
		Size: 20.5 MB (20547543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
