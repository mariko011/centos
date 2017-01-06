<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hello-world`

-	[`hello-world:latest`](#hello-worldlatest)
-	[`hello-world:nanoserver`](#hello-worldnanoserver)

## `hello-world:latest`

```console
$ docker pull hello-world@sha256:0256e8a36e2070f7bf2d0b0763dbabdd67798512411de4cdcf9431a1feb60fd9
```

-	Platforms:
	-	linux; amd64

### `hello-world:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **974.0 B**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54a2cc56cbb2f04003c1cd4507e118af7c0d340fe7e2720f70976c4b75237dc`
-	Default Command: `["\/hello"]`

```dockerfile
# Fri, 01 Jul 2016 19:39:26 GMT
COPY file:21fb0ede514e588c72071bfbd3c577e2f6a669db9351d1a435e21baf895efcd6 in /
# Fri, 01 Jul 2016 19:39:27 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:c04b14da8d1441880ed3fe6106fb2cc6fa1c9661846ac0266b8a5ec8edf37b7c`  
		Last Modified: Fri, 01 Jul 2016 19:39:34 GMT  
		Size: 974.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:de8f15c1ad50b552f3f9423d53e70795b6dc5c934714f6cc2a9081c6a4ce37a1
```

-	Platforms:
	-	windows; amd64

### `hello-world:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312446054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6a279ec00e96593d53c896af7f250c917db902e5c697b5c2a8aa4fe02c05da`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:06 GMT
RUN cmd /S /C #(nop) COPY file:9341009dbfcf24e5ece855cc7a1f9ae5c60019d9d57ac3254d48defda0555271 in C: 
# Fri, 06 Jan 2017 23:27:08 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d3e1acf238887b01bb8fd819675dcad9cd2bb12de6fe941c3acfdccc61ea1fdf`  
		Last Modified: Fri, 06 Jan 2017 23:27:12 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca4b27b3236a71756264fc9b109967519b3cf52afc2d1942ad9577d0d644969`  
		Last Modified: Fri, 06 Jan 2017 23:27:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
