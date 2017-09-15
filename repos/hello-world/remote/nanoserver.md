## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:b270774f63865acdb7f7fc49a9f5b8676b1518539ebf89c20c29fd24b878110a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull hello-world@sha256:0fa8590e05b3d819fb0f0fbeeed2e64d5d3f0de79859c5b2b3c9ea7e16a09e63
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.1 MB (393144813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf680dbc0d82b3d1cbc27a0d83149c09c6cede926dfe5710c16b5222124a3b3`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Fri, 15 Sep 2017 16:37:22 GMT
RUN cmd /S /C #(nop) COPY file:83ce92863f9128ce438cc9983e3122ba560260e20328cab82d5ee2b618c2d1ac in C: 
# Fri, 15 Sep 2017 16:37:24 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0de0e3fbc30cd59a77e135cb298aeac4263bdace3897c3379688d44b1757ead1`  
		Last Modified: Fri, 15 Sep 2017 16:37:31 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e650e4c33bd9baa5f763e14f9f4e19d7a0919a6ab007b728c7644e41aae4bc3`  
		Last Modified: Fri, 15 Sep 2017 16:37:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
