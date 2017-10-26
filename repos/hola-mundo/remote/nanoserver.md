## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:ed856d2d65eb06d3d491aabfc32f8440e368966e8cb1b7a54389463d0b2c7e29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `hola-mundo:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull hola-mundo@sha256:b98a757f29869e376449819a1bd4deb1587a889d9d52da85156fefb715317d17
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394451781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da062ce419e45e270a21db2015be020436fa062ede89b108e84ecc045e86d7c`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 10:45:32 GMT
RUN cmd /S /C #(nop) COPY file:1a441dc870c06ac6b91e9df29b1d7fb3b77715bff83f8ec58db6425948a5afcd in C: 
# Wed, 11 Oct 2017 10:45:34 GMT
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
	-	`sha256:e310fb1e2bbf83820dcdb27a69246c1f0ebf793adcdad09747bbc5822c4620a1`  
		Last Modified: Wed, 11 Oct 2017 10:45:41 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679873665a2119038d09d8a071f541b78ceb4366ce9b33542fc4d3e598e1b04a`  
		Last Modified: Wed, 11 Oct 2017 10:45:40 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
