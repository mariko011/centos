## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:46a1a0b6ce9ef88b0b3a4839cc2fde3577a9a645ae41415dc4b034ffb222a7ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `hola-mundo:nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull hola-mundo@sha256:72f0006f1f79c21ed72604843ae2e37b94225d652f592c025097154d2de885dc
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (390045462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b86442567b78cf2e91deec1a89673fddd7ac1d77e037431a2477a556289aa4`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Thu, 10 Aug 2017 10:44:30 GMT
RUN cmd /S /C #(nop) COPY file:48957c49ccf5e9d348237d6d81ea098df4fd73711be3cfcd43f1d3bc360f67f4 in C: 
# Thu, 10 Aug 2017 10:44:32 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cf3f61a289684e5185e425a0b91d9981d8dc4794407880a07014779b49884824`  
		Last Modified: Thu, 10 Aug 2017 10:44:38 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4515a5478f71ad3822a12a26146b2892fa08fe49b3ceff9097db4151f383564`  
		Last Modified: Thu, 10 Aug 2017 10:44:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
