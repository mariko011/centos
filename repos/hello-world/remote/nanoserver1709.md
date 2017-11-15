## `hello-world:nanoserver1709`

```console
$ docker pull hello-world@sha256:d93ba83c9ee211aca24f556bc66d8b235faa12ece5dc9e61cf3d5fb98e3f7e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `hello-world:nanoserver1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull hello-world@sha256:a95125a56a18d8695af850d43694f2f0b813a9f58e9618c28e6e4daaff609e6d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99068877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601fa601e584e1a2b16dee740299ba6db29825db9c1260632a746d393e8280ed`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:08:00 GMT
RUN Install update 10.0.16299.64
# Wed, 15 Nov 2017 05:15:59 GMT
RUN cmd /S /C #(nop) COPY file:83ce92863f9128ce438cc9983e3122ba560260e20328cab82d5ee2b618c2d1ac in C: 
# Wed, 15 Nov 2017 05:15:59 GMT
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
	-	`sha256:10ff24e4029f55728552003231b04ede630d2aa84c220e9998433b9314d1a90d`  
		Last Modified: Wed, 15 Nov 2017 05:16:14 GMT  
		Size: 1.6 KB (1637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0158539cc82f4c042ff3980dca44c8393cc0ed50a7b48ed7a1cd1a3036dc89c`  
		Last Modified: Wed, 15 Nov 2017 05:16:14 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
