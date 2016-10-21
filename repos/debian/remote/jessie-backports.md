## `debian:jessie-backports`

```console
$ docker pull debian@sha256:047b72169a8bdad614f66977b0a47663c5776e2a50ae8e96cb5b1e8f39b23b72
```

-	Platforms:
	-	linux; amd64

### `debian:jessie-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51353342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaef3f5ef5d41c9e49d2931e3948c2696a49717ffc2ecf2f96bad599eb71aae1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
