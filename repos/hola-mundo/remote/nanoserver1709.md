## `hola-mundo:nanoserver1709`

```console
$ docker pull hola-mundo@sha256:dea5952f022b45e92ee933802398f00da2717ce00f100eb615783f6e5b719992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `hola-mundo:nanoserver1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull hola-mundo@sha256:32a6ee0cb19d1ce673e99201144cabb70d043e2cdfcf745b215a2ca6f5a419c2
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99068930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ecd8c08f0c4625069f9f573dd8baf678213a73663ad6f7d4454f2141f845803`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:08:00 GMT
RUN Install update 10.0.16299.64
# Tue, 21 Nov 2017 11:45:47 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Tue, 21 Nov 2017 11:45:47 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b7914a074279e6771c0cc3c7adec5267d94f7b13e92dedb272a5515fe5dfdb82`  
		Last Modified: Tue, 14 Nov 2017 18:59:00 GMT  
		Size: 18.0 MB (18026557 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:60f9578742060cf1282ca7a6dde8ec7bbef13961889430a3f80cc48a97c8fcfd`  
		Last Modified: Tue, 21 Nov 2017 11:46:05 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b4dc995bde03dec196053c30e653de875d8cdab9bc876210cb2cd83267318`  
		Last Modified: Tue, 21 Nov 2017 11:46:05 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
