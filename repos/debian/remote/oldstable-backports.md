## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:da6f2679629e4aa4b335b0e1ee7e2f2d20be3c8b770dba13031aa43106896066
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38117139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15756a3d43bb7ebaf108ae6f25e1cdb36eaebd005cdefc0858f090ecba9cf2c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:22:13 GMT
ADD file:3f041948b56d0399684aa56da4f9e887fa0763eccee821cc3290753b84e41d03 in / 
# Mon, 24 Apr 2017 19:22:14 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:23:06 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a434b6ef7d13dcb331485f5c82923012b6389457e1da11237e552f66caef5936`  
		Last Modified: Mon, 24 Apr 2017 19:34:24 GMT  
		Size: 38.1 MB (38116921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416536816cb1eb5edb200d12f43838223f699a2d1b9adfa32b3136a8431365ac`  
		Last Modified: Mon, 24 Apr 2017 19:35:14 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
