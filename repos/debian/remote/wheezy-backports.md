## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:4240af7f4dac037e4dbc764b8b05367eb0931dd259e26d36dbd756e79a87caef
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37284928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da50eff64f9f8a7cef8c9888a8ff577c87f67df3938543028d4544a036a0134`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:39:45 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6fe8b1bb60c0b6b2a771db6ecef0f7cc3afb6efaf1ae790f9410023ceea49d`  
		Last Modified: Mon, 27 Feb 2017 20:51:36 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
