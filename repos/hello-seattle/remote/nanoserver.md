## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:154496dcf43c7a5617f5c4fef2f30e80559e4ce0632a8c24883398ee55d1cfa9
```

-	Platforms:
	-	windows; amd64

### `hello-seattle:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343178825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65b4c2895dc93b136d30f1213adfae1a6eaa32e92622ac8731518dbc0f950da`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Mon, 21 Nov 2016 20:24:08 GMT
RUN cmd /S /C #(nop) COPY file:962313e6db9c806f8f753142f1166d471e9f03bba14f92fa90ab5bf971c799cf in C: 
# Mon, 21 Nov 2016 20:24:11 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d78bb9035525fd00205ef02d0ff39f1f3806157525d550223e8529d0c5593b0`  
		Last Modified: Mon, 21 Nov 2016 20:24:16 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00744c19f59d12116b9c991d267bc6f53e91117987bc713a47e56baade922265`  
		Last Modified: Mon, 21 Nov 2016 20:24:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
