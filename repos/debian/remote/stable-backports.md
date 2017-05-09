## `debian:stable-backports`

```console
$ docker pull debian@sha256:5a6dc4fa4ee2494d84935beddae7b9051ef0632abd5207230c80ab68662b7f8e
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52585429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4858797dbb9839f5f239e74fa12ac590c968cb7827bc15a8547ae6b749cad5d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:33:51 GMT
ADD file:0a99c5dbba8ab024c2149af5e94947c1cc51ddbc7478484b68e28278be5278ec in / 
# Mon, 08 May 2017 23:34:05 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:35:08 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5a53d3589c5f9002d3ba66c45d314b1f9e3b91654dfbdc07d64f2a86bdf5bb0c`  
		Last Modified: Mon, 08 May 2017 23:49:53 GMT  
		Size: 52.6 MB (52585213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96304f07a192ff17e921c2876a5279747b06d3ed6cad709f4cb6c4b9cd097cc7`  
		Last Modified: Mon, 08 May 2017 23:50:57 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
