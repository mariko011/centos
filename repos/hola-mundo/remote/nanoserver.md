## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:801a719263737cf19ffe6157120233b37351cda8d78be7b2e4ac317204416f1d
```

-	Platforms:
	-	windows; amd64

### `hola-mundo:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.9 MB (382850866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde5a8a95d4e3e888fc8b7f4f3f46e63892ce5a00527396d89c7b85d9f60ed6a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:46 GMT
RUN cmd /S /C #(nop) COPY file:48957c49ccf5e9d348237d6d81ea098df4fd73711be3cfcd43f1d3bc360f67f4 in C: 
# Fri, 28 Jul 2017 18:55:48 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8dd25c926dfc8402f0aba762853cdfeff242c6b928d1dc6154de0b7de893b824`  
		Last Modified: Fri, 28 Jul 2017 18:55:52 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa4869e711aa0c217a1909e52b9d0a14e70902783b93539f0d96a6def6d84b4`  
		Last Modified: Fri, 28 Jul 2017 18:55:51 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
