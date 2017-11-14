## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:f8ae50d79f549f1bae2082b4a426f387647cca865ea12105c3b49b8b61e0f9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull hello-seattle@sha256:733202b130ddc3da82ca0f821d9d4d5dec058e1a03abefcf2e8670b6f3ba5198
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400686890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b376ea4f20a4588826cf802dca9c1cf4ee4e8cd3c7868e8a42a793340140db5`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 14 Nov 2017 22:13:15 GMT
RUN cmd /S /C #(nop) COPY file:a4d78d9e836b5b6546d702c20894a99a4a0a1e8ca838ba1335d3f265635ed0a6 in C: 
# Tue, 14 Nov 2017 22:13:15 GMT
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
	-	`sha256:e8bfe6201d9de9ca75ba6c322dc5c98d3d0112a78d37c27fe9c4af886679dcc1`  
		Last Modified: Tue, 14 Nov 2017 22:13:27 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7682e7ebbed37f2f9bf6fc0235be8277bf9590fc969ca2cec91ab01461b262`  
		Last Modified: Tue, 14 Nov 2017 22:13:27 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
