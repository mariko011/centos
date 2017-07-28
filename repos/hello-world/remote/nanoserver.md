## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:36dbfeca7e5feed424efd0a92dfe29f073bebe92e8aaaf0a49d0a58868b5ed00
```

-	Platforms:
	-	windows; amd64

### `hello-world:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.9 MB (382850830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82cd661f5da1a3c09636d5116735dfcd10bfc80f79c5acc92e97caafdcd382b1`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:35 GMT
RUN cmd /S /C #(nop) COPY file:a5052dbb0d93d3999b3ee937f847dbf9005dbd46508351d1f4316fe2f9adef71 in C: 
# Fri, 28 Jul 2017 18:55:37 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87b9648c93f5c084e8e2c0b913cc7a354da97a9201a2debeb7534744f59c1b38`  
		Last Modified: Fri, 28 Jul 2017 18:55:40 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cc2f3a7373d1ce31d6569eb25d5ab149c8df3b267947dae5be2e3256428824`  
		Last Modified: Fri, 28 Jul 2017 18:55:41 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
