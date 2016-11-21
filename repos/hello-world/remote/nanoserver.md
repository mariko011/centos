## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:3f5a4d0983b0cf36db8b767a25b0db6e4ae3e5abec8831dc03fe773c58ee404a
```

-	Platforms:
	-	windows; amd64

### `hello-world:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343178826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64385142d4dc5ad057d07fdc20859cbeabce75d2a9df8b03c11679cce43b6ab2`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Mon, 21 Nov 2016 20:24:22 GMT
RUN cmd /S /C #(nop) COPY file:9341009dbfcf24e5ece855cc7a1f9ae5c60019d9d57ac3254d48defda0555271 in C: 
# Mon, 21 Nov 2016 20:24:24 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4256836bcaf82f57c8f86ff5544a2561e2a2a6801dd11685ed07bcce5e28bd0d`  
		Last Modified: Mon, 21 Nov 2016 20:24:28 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5abeff4046896b79b05966f62694bcd8393cbe34a59752da498814e3b2299`  
		Last Modified: Mon, 21 Nov 2016 20:24:29 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
