## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:3904c9f988c465acc1f271e45f617160f1c298abdc68ae307dad681a882e58ce
```

-	Platforms:
	-	windows; amd64

### `hola-mundo:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312446061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b4f98bd88370328250b91ea7921fcbe9fdb2ac1c3a5f4a769308a7e0152253`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:19 GMT
RUN cmd /S /C #(nop) COPY file:8782f5dbf383aa126556f4d5860e14f79fbb620fadebd9f62a6146a178c74d6d in C: 
# Fri, 06 Jan 2017 23:27:21 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da0333f424097c2785ec37d5ea5883f010d0a3e8e79c26e97e51a32032e9a067`  
		Last Modified: Fri, 06 Jan 2017 23:27:27 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a9311d2ed1de591177f98db10ea821f8f0335b3a487d83d1a5925a510c9e9b`  
		Last Modified: Fri, 06 Jan 2017 23:27:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
