## `hello-world:nanoserver1709`

```console
$ docker pull hello-world@sha256:d3c6a3bee6fd76f5fe2b05968bf3a70ec75a0d26fbf98d2429d824b5b0192f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `hello-world:nanoserver1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull hello-world@sha256:786a29974908551335f379b744438f25de0a57e907358d430e8cf85be5fc1464
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99068846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6bb16eb0d9fc61a8a54fca9d09bc7be5caacc85ea8e0e5f4378e6b13390523`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:08:00 GMT
RUN Install update 10.0.16299.64
# Tue, 21 Nov 2017 05:13:48 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Tue, 21 Nov 2017 05:13:49 GMT
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
	-	`sha256:3c724c51de90feb0ca9901bc0d1d4786c245f6d096a3d13060bd610f72728ef3`  
		Last Modified: Tue, 21 Nov 2017 05:14:06 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9094c6c3b94ce603a48753129ba706d948082fa118f2850a43e7fe6f71aeea`  
		Last Modified: Tue, 21 Nov 2017 05:14:06 GMT  
		Size: 909.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
