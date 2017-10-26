## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:6effcfc4384f97d0eeda6351fca3ec2637ba4cf1d5f7bbcc732b313d6ee5bceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull hello-seattle@sha256:92b865c9e424c1489cfae49c837686d71a706aa15b2e4c7a47d512391c2b2ed3
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394451769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d0d58b3a63ad1287d19a5e13e2772f6ab613d4d2732812c551807100ad84f7`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Tue, 10 Oct 2017 21:11:12 GMT
RUN cmd /S /C #(nop) COPY file:a4d78d9e836b5b6546d702c20894a99a4a0a1e8ca838ba1335d3f265635ed0a6 in C: 
# Tue, 10 Oct 2017 21:11:14 GMT
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
	-	`sha256:30bc9f2d2de587f8602d2340f59aa16f8146024671e5023a29948a0154b8b689`  
		Last Modified: Tue, 10 Oct 2017 21:11:20 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b17be8f5d2c36be7eb78db96d720f0bce0ef3a428131b08abf6bc0d6d0a4aeb`  
		Last Modified: Tue, 10 Oct 2017 21:11:20 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
