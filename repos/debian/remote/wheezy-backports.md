## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:778bfdb8656395b0971e1ea8e41c625d6199f9aac79c48bbe847ddab27dcf7ef
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37284704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebb4fc6f6dc591bcc4659397013ddde8c4411e22e03fd40eb4e4497703f69d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:42:27 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1881d0713841ab1a6efb872cbfab1c51b23af64edee40238885287dae0bb9bd6`  
		Last Modified: Mon, 16 Jan 2017 20:57:51 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
