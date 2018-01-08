## `hello-world:nanoserver-1709`

```console
$ docker pull hello-world@sha256:89870aca3d47de273d3ae1cdd184be91fae18a6152a6c5da57a75a646289b1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.192; amd64

### `hello-world:nanoserver-1709` - windows version 10.0.16299.192; amd64

```console
$ docker pull hello-world@sha256:0583adf9c3d3c52a05a131ad1a868c9e61f550e83444f868d66bd83e1125bdc3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123513057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecea3d792cd143caccdf16935cfa1e4d0ec566a6d9e64eac25dfe9087c806702`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:23:16 GMT
RUN Install update 10.0.16299.192
# Mon, 08 Jan 2018 20:07:42 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Mon, 08 Jan 2018 20:07:42 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:711a33cda32c85e12bb0ef0ed0bec5b4c436ae1659bcb49b518ca84afefcc9c6`  
		Last Modified: Fri, 05 Jan 2018 19:38:01 GMT  
		Size: 42.5 MB (42470724 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f2954926b3d8f04cf97513c488f74a8761ce36fb813ba44ff8b2be5607fcc31e`  
		Last Modified: Mon, 08 Jan 2018 20:07:52 GMT  
		Size: 1.6 KB (1650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6a3aeeca73d279ea3fb0f2aa997d7fbf4a4360840fc2fd5653323b4392d6f5`  
		Last Modified: Mon, 08 Jan 2018 20:07:53 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
