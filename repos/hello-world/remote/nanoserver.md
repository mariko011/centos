## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:28cd2774f0fef77300038f8f9556510a5c9ff911de5190ef97de67f2b8f9d457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.125; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.2007; amd64

```console
$ docker pull hello-world@sha256:65b067b5940d834f7534027d90e47c634c4ab0c9d51d9a4a363166bb40787c15
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.1 MB (403051355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20abb0d884145a3bcbbd84ef4d1ed02fd4afb31f88745206a5994f57cc19bf8d`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 05:13:06 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Fri, 05 Jan 2018 05:13:06 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:764aee428c28f0935a6ded2a2730509373e1357648795b609b911dd46aa06257`  
		Last Modified: Thu, 04 Jan 2018 20:07:02 GMT  
		Size: 150.4 MB (150357748 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d7a1e4c3b1f074df9ff7d9c2ab9303507c219099e699d72a6f02a49b833a30a5`  
		Last Modified: Fri, 05 Jan 2018 05:13:19 GMT  
		Size: 1.7 KB (1658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2987502b89ea3ee38ce5932550e740b13a0ba375f429bea1b490778baffafd5f`  
		Last Modified: Fri, 05 Jan 2018 05:13:19 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-world:nanoserver` - windows version 10.0.16299.125; amd64

```console
$ docker pull hello-world@sha256:dd56b9b808e171ad6665aa176147aef27df2c523f85628d4e753b4fe7fc53075
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109529316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29528317da62a27024338f18abf29c992d6cdb4087f7d195cb6725bbe6bd15cc`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:24:07 GMT
RUN Install update 10.0.16299.125
# Tue, 19 Dec 2017 05:13:10 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Tue, 19 Dec 2017 05:13:11 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9c9e16cbf19f9f2cd7a68672c3b0f2bb6301ded0747dc10e594adc0b28842b94`  
		Last Modified: Mon, 11 Dec 2017 22:06:05 GMT  
		Size: 28.5 MB (28486968 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2cb715c550645d8f9ed115b87dc0724584056143704bbed1a6de1d11419b6f91`  
		Last Modified: Tue, 19 Dec 2017 05:13:28 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990867d1296d79dfec6ed47b629fb48eb841e13837b82bfd03cd06c327849d84`  
		Last Modified: Tue, 19 Dec 2017 05:13:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
