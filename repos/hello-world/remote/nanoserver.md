## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:774a6df5741c7c1fd945d8583d6309c9d5f60da3638c2f009b69d9bec5131d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull hello-world@sha256:63a4c76d0eb3aa5fe3bf04ba1baca63f320e4bf9e82b4f81797307b5ecf9281a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400686884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14262c9a790e87c9bd626e3df4dafa0df9c89f702af4cc460aa47d8c083b72a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 21 Nov 2017 05:13:44 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Tue, 21 Nov 2017 05:13:45 GMT
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
	-	`sha256:c670cf2136e6cbaeb0433243f7676f94a5d657f7859647d2670f99f7324df45d`  
		Last Modified: Tue, 21 Nov 2017 05:13:56 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f90690e9a8d94d44d47c7c7beca7b1a7c29365264634a4226859f2609a516b8`  
		Last Modified: Tue, 21 Nov 2017 05:13:57 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-world:nanoserver` - windows version 10.0.16299.64; amd64

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
