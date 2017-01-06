## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:db1d9acd58e8541dda74bb4dcfc4faad7bf27e4d7253111accb7cf4e55621a9c
```

-	Platforms:
	-	windows; amd64

### `hello-seattle:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312446072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c80d8d1eff07822d57e050e34e4fea7da91ac4b15320f09eb788f20c3cbe1bb`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 06 Jan 2017 23:26:54 GMT
RUN cmd /S /C #(nop) COPY file:962313e6db9c806f8f753142f1166d471e9f03bba14f92fa90ab5bf971c799cf in C: 
# Fri, 06 Jan 2017 23:26:55 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:644e121e254d062b3145e383f00e7805d86aa1839cc15ad01c65afc4fa226a36`  
		Last Modified: Fri, 06 Jan 2017 23:27:00 GMT  
		Size: 1.7 KB (1668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa110de35154a9e8c1b4308fe27ff0b5340d1423177e99b98b99141c5fae31b9`  
		Last Modified: Fri, 06 Jan 2017 23:27:00 GMT  
		Size: 970.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
