<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hola-mundo`

-	[`hola-mundo:latest`](#hola-mundolatest)
-	[`hola-mundo:nanoserver`](#hola-mundonanoserver)

## `hola-mundo:latest`

```console
$ docker pull hola-mundo@sha256:732dccc1c150dc5e1eb68b0c617e64f76e2d7fbed87d5d22b9006487f8ce581d
```

-	Platforms:
	-	linux; amd64

### `hola-mundo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **994.0 B**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad229f1e53393e58333d5bb3b399d5a347def859522b5d42f4e6057f98ba3b19`
-	Default Command: `["\/hello"]`

```dockerfile
# Fri, 13 Jan 2017 22:51:29 GMT
COPY file:ce3119f96fca4f659fcb4b63a28e983e01ee52568920d7a5b39068519a0d2f82 in / 
# Fri, 13 Jan 2017 22:51:29 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:4adf37d16c31d4240e13d5deb52f4580b4470c2dbd08eb4dc04b98a8f09ad290`  
		Last Modified: Fri, 13 Jan 2017 22:51:45 GMT  
		Size: 994.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:92960d45938558e25af8f8548387104a7d79e8f14f93dae70adf1e79c879ce71
```

-	Platforms:
	-	windows; amd64

### `hola-mundo:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 MB (368730881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80cdd261047d2933d1f2478fe579641e9b03d925ca0bbf62f16236bb4e87506f`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 14 Jun 2017 19:30:07 GMT
RUN cmd /S /C #(nop) COPY file:48957c49ccf5e9d348237d6d81ea098df4fd73711be3cfcd43f1d3bc360f67f4 in C: 
# Wed, 14 Jun 2017 19:30:09 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ab100ffd9827946d7a4aece8bafc2b26d4b50a58acd6e86a9155b252f7b3bb0e`  
		Last Modified: Wed, 14 Jun 2017 19:30:13 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67962bfdf15002def72ca37151653c6877db69ff7b7faa578067ea615c06ea13`  
		Last Modified: Wed, 14 Jun 2017 19:30:14 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
