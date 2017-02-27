## `debian:rc-buggy`

```console
$ docker pull debian@sha256:3e65b532b51d44f99d14ca7d76d80bf3248a1633986f47056f48d4e6d5155be4
```

-	Platforms:
	-	linux; amd64

### `debian:rc-buggy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44250994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00eee425df78ff3e9542a18df44ea6d7e1c80f3b95db6d78396d889b0371d0f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:39:46 GMT
RUN awk '$1 ~ "^deb" { $3 = "rc-buggy"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f918ef318bdc2a9839b56e6b91b1d3d87fd615326a29c619ef672b96bdc2ac8`  
		Last Modified: Mon, 27 Feb 2017 20:51:57 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
