## `debian:experimental`

```console
$ docker pull debian@sha256:af85e830919ca6b024aa202649fe38095a6ed8939226110a24443f3518a6f8c3
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45254597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe7763514669aa12eb9c8d2d3634bec7d74dd46b4235242a25fb221cc4a58d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:39:21 GMT
ADD file:55cdc6e18d79e2292ed8068241b6aa37425fb93b97496dc84617410655d00dc2 in / 
# Mon, 08 May 2017 23:39:36 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:43:02 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2b776633ca15b4fb2b92dfee39343359977b46e073ffcf15adb82d55aae88e29`  
		Last Modified: Mon, 08 May 2017 23:56:09 GMT  
		Size: 45.3 MB (45254383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9175ecb1a361419d5102667bf9e98039ff06d187653c92f5993331a85a3f74b`  
		Last Modified: Tue, 09 May 2017 00:02:35 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
