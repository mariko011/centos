## `debian:experimental`

```console
$ docker pull debian@sha256:1680614ba3117a92b120a731b23258e1f23511e620a456b4b0f8e963838baae6
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44268248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188558bfc749e72d0cc6fd661e3d1c370d5efca531a9e577dc8090cc185f247c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:35:28 GMT
ADD file:5398ad08c5b089f9e02521ab8de2bb9ee705045fbe829bbc7fca4402d88cbf60 in / 
# Tue, 21 Mar 2017 18:35:29 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:37:17 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:cbcd63f65a0d6e0a3b6c97f08275adebc497bed144001b3e20571d41ee494fe0`  
		Last Modified: Tue, 21 Mar 2017 18:51:45 GMT  
		Size: 44.3 MB (44268035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3639f83aa8b16c1de14e127697c68e712542c39db7c2bee74cb85ad20334de`  
		Last Modified: Tue, 21 Mar 2017 18:55:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
