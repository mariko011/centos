## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:a8f147e980eaebf3baa030f684950a13f7be786607326d17d09999ded28ae4d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull hello-seattle@sha256:447f9a76f25d903976e7faba84bdccbf2c3e3ed3a1e751b24c12187299bb3be6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394451733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a49e14768088cbe42714429ea153e5d9b044595ef2fc0dae5d8aed691c8c0a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:18:36 GMT
RUN cmd /S /C #(nop) COPY file:a4d78d9e836b5b6546d702c20894a99a4a0a1e8ca838ba1335d3f265635ed0a6 in C: 
# Wed, 01 Nov 2017 18:18:37 GMT
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
	-	`sha256:0223e57c11eb883b152db74e8ffda02ee107d182410077f9158be6fceadea064`  
		Last Modified: Wed, 01 Nov 2017 18:18:45 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2128dc0c4adc72004630a2edd00ab293d3def4f5e07bb46af42e1e954b5a4787`  
		Last Modified: Wed, 01 Nov 2017 18:18:45 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
