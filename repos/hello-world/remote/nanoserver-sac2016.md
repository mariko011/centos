## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:98138f21519645fdc4ca020efec955f2c1ca7dc01c89d50f3680f01f90817187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.2007; amd64

```console
$ docker pull hello-world@sha256:65b067b5940d834f7534027d90e47c634c4ab0c9d51d9a4a363166bb40787c15
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.1 MB (403051355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20abb0d884145a3bcbbd84ef4d1ed02fd4afb31f88745206a5994f57cc19bf8d`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 05:13:06 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Fri, 05 Jan 2018 05:13:06 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:764aee428c28f0935a6ded2a2730509373e1357648795b609b911dd46aa06257`  
		Last Modified: Thu, 04 Jan 2018 20:07:02 GMT  
		Size: 150.4 MB (150357748 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d7a1e4c3b1f074df9ff7d9c2ab9303507c219099e699d72a6f02a49b833a30a5`  
		Last Modified: Fri, 05 Jan 2018 05:13:19 GMT  
		Size: 1.7 KB (1658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2987502b89ea3ee38ce5932550e740b13a0ba375f429bea1b490778baffafd5f`  
		Last Modified: Fri, 05 Jan 2018 05:13:19 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
