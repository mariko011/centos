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
$ docker pull hello-seattle@sha256:f2713b39adfff1c67c7a3bf8a1e5207cd95315b6dfed29ae4162f87699ef62f1
```

-	Platforms:
	-	windows; amd64

### `hello-seattle:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 MB (368730878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d12691d3519756361384bf71232cedee48eef1ab08bd4974cdff161f06751e7`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 14 Jun 2017 19:29:42 GMT
RUN cmd /S /C #(nop) COPY file:73331af5616ef632d0fa354ceef92ad3a5e561c12c4d53320cdd17c39a4e4b3f in C: 
# Wed, 14 Jun 2017 19:29:43 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4ac082e431e7e2badb3b74ec410540a910f4b9e1b7aa134fa1a4b933837cf46e`  
		Last Modified: Wed, 14 Jun 2017 19:29:48 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58eeb849a7c2b0fa35b4625f83ddce1dccd3c7b4707fa759e6ad9f5a9312353`  
		Last Modified: Wed, 14 Jun 2017 19:29:48 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
