## `debian:experimental`

```console
$ docker pull debian@sha256:1aacc56d8d428e94a0571c8d2a351445c98770eef55ec255dd309e6a8ff61d2f
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42455377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9a0d18abda276c1363b5c6e6db2901200aea11856b9ebac5c3a0025f8579a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:32 GMT
ADD file:31cd20f8d8e802a3a2ea8b88a0916a07e7a84dad589a774b7072b87e4e50502c in / 
# Tue, 30 Aug 2016 21:01:32 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:01:42 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e5f609fe1ef557dd24c98c990186f4f9d23340e98caf075f0cdaf8fc48fafb48`  
		Last Modified: Tue, 30 Aug 2016 21:05:24 GMT  
		Size: 42.5 MB (42455161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10976cd4ed2fb63517f1919caa5fd1ee5ed8b10ec8aa46cccd8b6329f217f67`  
		Last Modified: Tue, 30 Aug 2016 21:06:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
