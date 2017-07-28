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
$ docker pull hola-mundo@sha256:801a719263737cf19ffe6157120233b37351cda8d78be7b2e4ac317204416f1d
```

-	Platforms:
	-	windows; amd64

### `hola-mundo:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.9 MB (382850866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde5a8a95d4e3e888fc8b7f4f3f46e63892ce5a00527396d89c7b85d9f60ed6a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:46 GMT
RUN cmd /S /C #(nop) COPY file:48957c49ccf5e9d348237d6d81ea098df4fd73711be3cfcd43f1d3bc360f67f4 in C: 
# Fri, 28 Jul 2017 18:55:48 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8dd25c926dfc8402f0aba762853cdfeff242c6b928d1dc6154de0b7de893b824`  
		Last Modified: Fri, 28 Jul 2017 18:55:52 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa4869e711aa0c217a1909e52b9d0a14e70902783b93539f0d96a6def6d84b4`  
		Last Modified: Fri, 28 Jul 2017 18:55:51 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
