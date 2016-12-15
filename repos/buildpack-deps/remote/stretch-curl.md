## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:c4e861ad511fe9a835f9ee184f2f48ca1ba07bcc299728df3e2ab4c7f8a73470
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64534684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0480845d4f411c505b700c6fa4b05109a7a051ee562d644bcf2b679de1cb63ae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:13:38 GMT
ADD file:b8661e5bd7179ac7b23f0013637df93301390246609d446f45217ead261c33bf in / 
# Tue, 13 Dec 2016 22:13:43 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ca67a6a92c6d53b4eea40b8e1f63130784c8751379ffdc08b680768c57e510bc`  
		Last Modified: Tue, 13 Dec 2016 22:23:25 GMT  
		Size: 43.7 MB (43673589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a9ffe9d75cfda065f757fa9081dbf0712e0713f4e61b82e1f9ef1e832cf23`  
		Last Modified: Thu, 15 Dec 2016 19:38:38 GMT  
		Size: 20.9 MB (20861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
