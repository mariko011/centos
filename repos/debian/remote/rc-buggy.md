## `debian:rc-buggy`

```console
$ docker pull debian@sha256:021eedcd7eef7e58650d573d5ff0b32d716b8767561f7845e605b94540b4f6d5
```

-	Platforms:
	-	linux; amd64

### `debian:rc-buggy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43262620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2962029d81901923e192e04fb71e50ec410ca668b8251823203f5e493336f26b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:33:37 GMT
RUN awk '$1 ~ "^deb" { $3 = "rc-buggy"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb50b2f2b356318d0216210852b4c80a1f5e880351a271ed5007668b4a5f406`  
		Last Modified: Mon, 07 Nov 2016 20:44:09 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
