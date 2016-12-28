## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:5356402b54b095933ebabc9270a35a636924d816d0f215cc05d00d6eff479449
```

-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.5 MB (396460931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfdc5abf680bafd7bafe5012220e84712b80f0666287f4b279691747c1a68b81`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Dec 2016 17:39:12 GMT
ADD file:e294b217c1dfae0777e67c33c8cf8235d3c4c786dae2f51da2b648192c9e59d4 in / 
# Tue, 27 Dec 2016 17:39:16 GMT
CMD ["/bin/bash"]
# Tue, 27 Dec 2016 17:39:52 GMT
RUN curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=IGTZ.Uzl4n4Vmg1z88gcQ0zKpHdgEUIW"  && echo "83e8a2a80e6607e89dc2a7848ccd1e5487970267bd95eb96512c706307092328 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:c9141092a50d58edf9fbf8e34c941a81b1b6f8dccd312534d3cd5503c9a44d44`  
		Last Modified: Tue, 27 Dec 2016 17:40:41 GMT  
		Size: 91.8 MB (91783767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99aa5a5ba4015e1ea0d7d210c6f3877b635618c4df2d1681107cbfe88e59fd4`  
		Last Modified: Tue, 27 Dec 2016 17:42:07 GMT  
		Size: 304.7 MB (304677164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
