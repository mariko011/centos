<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hola-mundo`

-	[`hola-mundo:latest`](#hola-mundolatest)
-	[`hola-mundo:nanoserver`](#hola-mundonanoserver)

## `hola-mundo:latest`

```console
$ docker pull hola-mundo@sha256:535f669f2a8d1c668bc2e1b93aae7fa0da3e583171bc61e079896ac22434ca9b
```

-	Platforms:
	-	linux; amd64

### `hola-mundo:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **995.0 B**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d0d25f0b815a7faf6234a6c5f2c8722d7f9565f419d36d11fc526f10c0e8e5`
-	Default Command: `["\/hello"]`

```dockerfile
# Wed, 14 Jun 2017 19:31:40 GMT
COPY file:21941039480eaff933100a82a3602521f0d4d546525bc175d7e25e8efce2cab1 in / 
# Wed, 14 Jun 2017 19:32:03 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:c0a67178da45ee5fd14406dec16c68e5ee83d2b4dba804ecc63397ce27dcf648`  
		Last Modified: Wed, 14 Jun 2017 19:32:30 GMT  
		Size: 995.0 B  
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
