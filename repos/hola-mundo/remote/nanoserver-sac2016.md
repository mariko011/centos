## `hola-mundo:nanoserver-sac2016`

```console
$ docker pull hola-mundo@sha256:de6ddc0bd844eac32a10c6725586bb37469db9660b1c75a5dd3c0cb960761feb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `hola-mundo:nanoserver-sac2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull hola-mundo@sha256:26a38313f68b9510acb213c3a90441c8cf8ca10d269b2599ef30bcbbecf13fe2
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.7 MB (398717305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae60f8c3eac23a5ec948896ddf00073c4abe2fa32ea6ea051b06b4f0fefa8ba8`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 19 Dec 2017 11:46:04 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Tue, 19 Dec 2017 11:46:05 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4806a44e00a0febaf206c2414777a070782c559757658199cf5e0d8f0ead2bba`  
		Last Modified: Mon, 11 Dec 2017 21:42:41 GMT  
		Size: 146.0 MB (146023673 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7d9a2b0fa4328514c7cfd72a9cd24d24b68b574e1add2b8c147c2273e375719`  
		Last Modified: Tue, 19 Dec 2017 11:46:19 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda6369c9cb164288650e462218f96d4643f673e99309d3779b1a1e14978dcb2`  
		Last Modified: Tue, 19 Dec 2017 11:46:19 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
