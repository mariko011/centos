## `debian:experimental`

```console
$ docker pull debian@sha256:1af60fb6cd04878b490599086058044e2ee9ee57d3bdb456fcb0ec480da98cb2
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43867086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d07439f9992f51c4c34ff9b2318c455ed5e89b14fd83bd47deeb33e8fd656a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:01 GMT
ADD file:ef0f9a63b73347b725851e6b395ac5f271f71e4f94cce099b51929807759f8ae in / 
# Tue, 13 Dec 2016 22:15:06 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:16:03 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:4ae38a256eb11d5f054f0affb2b2dfa82da7c5757abefcba6bde61d82454b551`  
		Last Modified: Tue, 13 Dec 2016 22:25:40 GMT  
		Size: 43.9 MB (43866872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d744d708932302b2f568406b8b41da22a7032bee80b2c2a7d8415004885092`  
		Last Modified: Tue, 13 Dec 2016 22:28:52 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
