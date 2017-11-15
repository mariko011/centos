## `hola-mundo:nanoserver1709`

```console
$ docker pull hola-mundo@sha256:10c6dac1b6b985f379a6b6fb5cffd17a7f56584e2c4b240b2bdf2f9e2e71abb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `hola-mundo:nanoserver1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull hola-mundo@sha256:d59e219c0fd38b5e3fd3ad7a27de83dc76ce35ed1f6f50c9f7b9905f147f2616
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99068919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3b5e978b8ac2dcdf964d1e0533fced6510e42963dd5c731d06009fb8025fd0`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:08:00 GMT
RUN Install update 10.0.16299.64
# Wed, 15 Nov 2017 11:47:50 GMT
RUN cmd /S /C #(nop) COPY file:1a441dc870c06ac6b91e9df29b1d7fb3b77715bff83f8ec58db6425948a5afcd in C: 
# Wed, 15 Nov 2017 11:47:50 GMT
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
	-	`sha256:3da1c3032c9820c08b58867b50d97605c4f754649de26241396ae785e22389f7`  
		Last Modified: Wed, 15 Nov 2017 11:48:06 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed448a08422d29678a0f81686244e0ab9b8d56b05553fe3b6ef6aeb74ffea603`  
		Last Modified: Wed, 15 Nov 2017 11:48:06 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
