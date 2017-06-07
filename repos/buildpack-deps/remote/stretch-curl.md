## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:08630eb1de6f651b3c4d8a8de4d4697677ff3ea028c93fff88aac6d6df602a86
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56235479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57444976b9b7a723044d39765c1a9679b0b0203a7ef020670edb8fa853c4f847`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:49:26 GMT
ADD file:212fe5c6a3f3d10b0f5fc59f2019d5a12f266ff74b289f3ccc87bb878b01a437 in / 
# Wed, 07 Jun 2017 17:49:27 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:31a23e80b5c0100547b74b78634277f56239d4207fa7ea4f0540148525dbff03`  
		Last Modified: Wed, 07 Jun 2017 18:09:21 GMT  
		Size: 45.1 MB (45127747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5310eb3880dd8b025df521d43d0c3d3b1cebb727f0c9a297591fd50045e40ee0`  
		Last Modified: Wed, 07 Jun 2017 20:11:52 GMT  
		Size: 11.1 MB (11107732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
