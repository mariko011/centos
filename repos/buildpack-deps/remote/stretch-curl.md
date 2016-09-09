## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:8e39f1e33688715ec30594648b69c16f1dad28ad918d6311ae891e622151090a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62886342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75be62e0904539f360f5d4dc7f1e04493bf8d46afe29c6c30c520da46b09d70d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:19 GMT
ADD file:f4dd1b1b9cc583c29a7f62931be96757f4923749694c91b6fd1fee351b2fb11d in / 
# Tue, 30 Aug 2016 21:01:19 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e00445ae9689f633454e9b0ce6d52e6faffbe7b4f818cc662898864aa663bd96`  
		Last Modified: Tue, 30 Aug 2016 21:04:30 GMT  
		Size: 42.3 MB (42346419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd32f2e8f57fee022056f95a32d7018acaab95964b296d3adc1a0f6b14936b`  
		Last Modified: Tue, 30 Aug 2016 22:03:39 GMT  
		Size: 20.5 MB (20539923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
