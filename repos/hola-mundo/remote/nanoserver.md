## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:f406c406615d06f0836614f3aed118e8ee006739b6c248ea2653b147e71bdca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `hola-mundo:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull hola-mundo@sha256:14d2179fc0027efe14be44b294ec8799fa80fd0a1c30bce59fc9d9fd590f7692
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394451762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9a40775cf08e38b8f64e30cd4ee47651a93161a15ef902c96f4fdb2b71bb0a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 16:41:48 GMT
RUN cmd /S /C #(nop) COPY file:1a441dc870c06ac6b91e9df29b1d7fb3b77715bff83f8ec58db6425948a5afcd in C: 
# Wed, 01 Nov 2017 16:41:49 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f87c033c759933e5f55fd6cf51bdf5d931bfe655827d115dd57b1acfe21c4731`  
		Last Modified: Wed, 01 Nov 2017 16:41:57 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3668c56d674ce2728b923632de9d4e3d110fa7f88bc0c509943c7c53b091d9`  
		Last Modified: Wed, 01 Nov 2017 16:41:58 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
