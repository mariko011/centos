## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:a8fe290f4a8e741a3e7c2ab6a1bda5bf46b069e41f77d555b9d639926f6b0381
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37284849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a756abdcdbc21fe89e5cfe03695802414a73c04d0019aca983d4b3262390d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:36:14 GMT
ADD file:8279e8646b1f6a71b02a9ed848b7c92f3dedf4406af1babef1518c6b4fed395c in / 
# Mon, 16 Jan 2017 20:36:22 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:36:49 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a85bc269266478467f711558620af700d90c279009d27a9d566fd57fcf7498d3`  
		Last Modified: Mon, 16 Jan 2017 20:46:10 GMT  
		Size: 37.3 MB (37284632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877171316e5bc36d43bb00c0bec5ddfbd2117622262b5f8fb4557535ebfdf6b2`  
		Last Modified: Mon, 16 Jan 2017 20:47:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
