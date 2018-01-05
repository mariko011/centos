## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:d507c858b69ba12b9014d4bad33b20a72aca6e9c00b47ffc60bf73828a239c5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.192; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.2007; amd64

```console
$ docker pull hello-seattle@sha256:8d555efbdc9a117166502a53e5b69b8d762dc394ef7b2e22f7cca98f4d129440
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.1 MB (403051370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366095300e85069dc4a54349f8faeef94d1c33df6409b47f7cdb750bec96cea`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 22:09:34 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Thu, 04 Jan 2018 22:09:35 GMT
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
	-	`sha256:856d40c17a859390e854f22233a048604a616b256d328ddf4398bafca578a2a1`  
		Last Modified: Thu, 04 Jan 2018 22:09:47 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a88c31b57d3133397972d155f9d413ed9fdc795472a246c415bcd9b41877e21`  
		Last Modified: Thu, 04 Jan 2018 22:09:47 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-seattle:nanoserver` - windows version 10.0.16299.192; amd64

```console
$ docker pull hello-seattle@sha256:f59e854027fc35dc397da023fd25dadd3e8606aaa3c962c06f55661e9c5dbc17
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123513100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3515d67b12b059bb0b8b5607ca846872d5da7e0ce10cb059671f758a834b40`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:23:16 GMT
RUN Install update 10.0.16299.192
# Fri, 05 Jan 2018 22:09:40 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Fri, 05 Jan 2018 22:09:41 GMT
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
	-	`sha256:34007bbfbd73d588a7bd7dc49e9aa74e32acbb7617b7f440f0b21a2e040ef16b`  
		Last Modified: Fri, 05 Jan 2018 22:09:52 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb1a2295e7a0139c00df94a32742a4273fdff2a308f82ec795bb03020d2ce12`  
		Last Modified: Fri, 05 Jan 2018 22:09:52 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
