## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:ce111283dea6e6625971d4668ef6b948783616f6a7e7033de783efc3dbd761ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `hola-mundo:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull hola-mundo@sha256:c0e129db1a7314819126172efb36364f3d7657a440b5a0cb83cbfd48ad51747c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394451761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7fae030cb2791d7e4602d44e9cbe2d8f2833319b9d35e721834aff5e96ccd39`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:15:40 GMT
RUN cmd /S /C #(nop) COPY file:1a441dc870c06ac6b91e9df29b1d7fb3b77715bff83f8ec58db6425948a5afcd in C: 
# Wed, 01 Nov 2017 18:15:41 GMT
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
	-	`sha256:6895c9609017ca0399babcb3355915fdce9e7e10ac04c0dc9e63da6c0825e809`  
		Last Modified: Wed, 01 Nov 2017 18:15:50 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fc7f95c0c01d404fed53b3995b2b8d1b7786110f7fd2c288ea15e9a8475358`  
		Last Modified: Wed, 01 Nov 2017 18:15:56 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
