## `debian:rc-buggy`

```console
$ docker pull debian@sha256:e6feebace0864f27ea80dd3a7e31db0176220273d585ef57d7eaca79d0d56214
```

-	Platforms:
	-	linux; amd64

### `debian:rc-buggy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43867157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8fffbea6f5cd379e80ccc268e8968846d2fe2fe21b1d4904459c15caf31c04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:16:02 GMT
RUN awk '$1 ~ "^deb" { $3 = "rc-buggy"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7c7c1de4c5dda4ea621dba07fd13002ac7cd5a0d7e25bc5cc90bbdfb0c6ac5`  
		Last Modified: Tue, 13 Dec 2016 22:28:32 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
