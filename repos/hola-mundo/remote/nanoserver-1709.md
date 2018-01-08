## `hola-mundo:nanoserver-1709`

```console
$ docker pull hola-mundo@sha256:9f5219d22c9f04624f6605521f3be4da6a9468f2d3b11c3408d07752f6d3936f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.192; amd64

### `hola-mundo:nanoserver-1709` - windows version 10.0.16299.192; amd64

```console
$ docker pull hola-mundo@sha256:1c404790141ebaa8982c19faa6c8bee477b19beaad205fecf31cdc8e231041ca
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123513099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a70bae588937d9bc35456824204aa940630ff64b5fcb38c7bc5c52a6fc23080`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:23:16 GMT
RUN Install update 10.0.16299.192
# Mon, 08 Jan 2018 17:36:33 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Mon, 08 Jan 2018 17:36:34 GMT
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
	-	`sha256:b76748695918969b4435c267f0903f0ab3a975be6a77cb6ad63482d35bf970d9`  
		Last Modified: Mon, 08 Jan 2018 17:36:45 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd18869676371abdd014e4612eab3539c7e91c7d6c4fb8ec50132493ffab509`  
		Last Modified: Mon, 08 Jan 2018 17:36:44 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
