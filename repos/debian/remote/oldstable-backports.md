## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:d537dd588a0915fe68b7305f271eea58f93871540e1c65bd2292b3c84d2ead04
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37208997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756384c4dd80e61a153b7b398c922264f659bf0b5b629ef37f92ba1b30d6777d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:51 GMT
ADD file:5cb57636633eb980eae3fca07f0eb3e78694ae6bbe387584f256759cdb58996e in / 
# Mon, 07 Nov 2016 20:30:52 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:31:04 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a17eaf840845c4875dccc0970ffb9a4f604e176b6ef64025398510a7f3afca2a`  
		Last Modified: Mon, 07 Nov 2016 20:35:55 GMT  
		Size: 37.2 MB (37208780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd541be7064f72e5a611127da0bf5905125524920e82b05d081aa99c1f617521`  
		Last Modified: Mon, 07 Nov 2016 20:36:40 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
