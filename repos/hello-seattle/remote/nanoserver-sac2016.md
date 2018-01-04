## `hello-seattle:nanoserver-sac2016`

```console
$ docker pull hello-seattle@sha256:f8fcd1efd766615e9a0e40ca147003258b24829a062aeb763553044954f2b297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `hello-seattle:nanoserver-sac2016` - windows version 10.0.14393.2007; amd64

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
