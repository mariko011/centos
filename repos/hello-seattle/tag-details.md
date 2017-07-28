<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hello-seattle`

-	[`hello-seattle:latest`](#hello-seattlelatest)
-	[`hello-seattle:nanoserver`](#hello-seattlenanoserver)

## `hello-seattle:latest`

```console
$ docker pull hello-seattle@sha256:0583b4d9b6983f1387e0deed4d64181fa861fedc667f065034ccabbb9c3ac1ce
```

-	Platforms:
	-	linux; amd64

### `hello-seattle:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **991.0 B**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0089b734b973787b38d7129c02b5a06dad7fc402da6f682b2b89098d3231be7c`
-	Default Command: `["\/hello"]`

```dockerfile
# Wed, 14 Jun 2017 19:22:30 GMT
COPY file:758e9f3fd367544b4fb39e144027a3e9224260f5a1f326c8a2394b386afd2d98 in / 
# Wed, 14 Jun 2017 19:23:39 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:f2a6df82152e8affe67f637816528901fa19af0efbe6521cbda8c6832354c259`  
		Last Modified: Wed, 14 Jun 2017 19:25:38 GMT  
		Size: 991.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:1b76821538834a408b82d7d1028e6e9ccc3ce0ea4406c5590948549a473f060f
```

-	Platforms:
	-	windows; amd64

### `hello-seattle:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.9 MB (382850844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7607e7bcf4321f42c4ec0d6a5eb7a10b3763c4073633fee33051fd2abdd86b55`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:25 GMT
RUN cmd /S /C #(nop) COPY file:73331af5616ef632d0fa354ceef92ad3a5e561c12c4d53320cdd17c39a4e4b3f in C: 
# Fri, 28 Jul 2017 18:55:27 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ccd854067e7649d06752227133563456d19691f2ffc1b7840ff4efb536765f42`  
		Last Modified: Fri, 28 Jul 2017 18:55:30 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f278f35338af3ff6c4ae0ff888ee80e1fd777e771f3c24068485a6bc0902ec5`  
		Last Modified: Fri, 28 Jul 2017 18:55:30 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
