## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:2c47167a2b3588a56ab513bb5e9b85e79c769f518377cc16218552e36d8b8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull hello-world@sha256:63a4c76d0eb3aa5fe3bf04ba1baca63f320e4bf9e82b4f81797307b5ecf9281a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400686884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14262c9a790e87c9bd626e3df4dafa0df9c89f702af4cc460aa47d8c083b72a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 21 Nov 2017 05:13:44 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Tue, 21 Nov 2017 05:13:45 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:53a0ccfb7e6fe326c54359c802287bbe5435ac269242e4883f85a1f305e1d0cb`  
		Last Modified: Mon, 13 Nov 2017 21:41:41 GMT  
		Size: 148.0 MB (147993264 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c670cf2136e6cbaeb0433243f7676f94a5d657f7859647d2670f99f7324df45d`  
		Last Modified: Tue, 21 Nov 2017 05:13:56 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f90690e9a8d94d44d47c7c7beca7b1a7c29365264634a4226859f2609a516b8`  
		Last Modified: Tue, 21 Nov 2017 05:13:57 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
