## `hello-seattle:nanoserver1709`

```console
$ docker pull hello-seattle@sha256:b00a9c7e087de0f90d51158fb816feb01fecb53835ece21f5bf70661ff8dfc26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `hello-seattle:nanoserver1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull hello-seattle@sha256:3f1e2bbcf290ba39a519fe62667c2a0ddcebcb689193689bcfa43477c0c61737
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99068917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cad22d89e5aad87e736d693c0ceb4d5b3852584acc682187a875541b28e043a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:08:00 GMT
RUN Install update 10.0.16299.64
# Tue, 14 Nov 2017 22:13:19 GMT
RUN cmd /S /C #(nop) COPY file:a4d78d9e836b5b6546d702c20894a99a4a0a1e8ca838ba1335d3f265635ed0a6 in C: 
# Tue, 14 Nov 2017 22:13:20 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b7914a074279e6771c0cc3c7adec5267d94f7b13e92dedb272a5515fe5dfdb82`  
		Last Modified: Tue, 14 Nov 2017 18:59:00 GMT  
		Size: 18.0 MB (18026557 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f1c0632563a83c78c7aeda48cc3545a25c503a7049072c40efe08ff59f45858d`  
		Last Modified: Tue, 14 Nov 2017 22:13:34 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec606b616f015a30318e0ef6fdb6df1d0c16a00fc0cf0bab923a293486a7d8f8`  
		Last Modified: Tue, 14 Nov 2017 22:13:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
