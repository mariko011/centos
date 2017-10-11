## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:09084a40d44e22bd468beb17ca48a85f7b23c1ee07e68e7ea1df6827e38205f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull hello-world@sha256:6168e1e1f8cd1388c34aa53e1095cb6f1e51960f27e9b091e7160b70591fac21
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394451752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cd2c7dc23a8ac2258f081d6fb3858debdd178341ab8d51ef8acc622127b6fd`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 04:12:32 GMT
RUN cmd /S /C #(nop) COPY file:83ce92863f9128ce438cc9983e3122ba560260e20328cab82d5ee2b618c2d1ac in C: 
# Wed, 11 Oct 2017 04:12:33 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87377cdc7dd13b955024f290de8aa6606f7ce958a72091495e3c258c800bdaf5`  
		Last Modified: Wed, 11 Oct 2017 04:12:40 GMT  
		Size: 1.7 KB (1660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d840042f15f5e431f1d62b2337774f2a41dfe0303c87fce3692fecc998a4f87`  
		Last Modified: Wed, 11 Oct 2017 04:12:40 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
