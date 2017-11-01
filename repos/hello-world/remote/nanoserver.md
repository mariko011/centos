## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:12da8e6f5c99cb8ac24e3f570429587fea34d5995e323b772e8085cea6edcee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull hello-world@sha256:07a67a2a43aab3d698e4a92094396d681dd25e9a92e6271703999cfa26b7a4b2
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394451741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc65290fbd99d8bd6940e592b7ddcd9a68c4b666821c68191d528fadc7c7505`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:17:48 GMT
RUN cmd /S /C #(nop) COPY file:83ce92863f9128ce438cc9983e3122ba560260e20328cab82d5ee2b618c2d1ac in C: 
# Wed, 01 Nov 2017 18:17:49 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bd724d8ee9cb6d6c672486a52454800bdc02588a85b7d0598c8c9868b4cf66c6`  
		Last Modified: Wed, 01 Nov 2017 18:17:56 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f5ec99d77329495cde6c234139f50c416d1b84e7da2a66ed37c491d32530e0`  
		Last Modified: Wed, 01 Nov 2017 18:17:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
