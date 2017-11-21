## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:cc643cad28ecb188e1ab4b1ee7cd022c9b79b616d4798de3c41aa7fc2cbd7b87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `hola-mundo:nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull hola-mundo@sha256:e3efda727351bc25a109b0e11d87c46fe22cc42c1ea92c1524b58fda0c9c26d5
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400686877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e2dc4403de9a059e1e669a8d28c0e8d8783ae54208946e61ecc5f383f029ff7`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 21 Nov 2017 11:45:43 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Tue, 21 Nov 2017 11:45:43 GMT
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
	-	`sha256:cf3dd3226d39e78b4cca4e3b3f9c7bea80a8a6dfd1ad46a6870d761bd0851630`  
		Last Modified: Tue, 21 Nov 2017 11:45:57 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9800d2e260f5faeb074cd8c3afc99ec6f4b2f7633bf78a77115c99dc23d69eb`  
		Last Modified: Tue, 21 Nov 2017 11:45:55 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
