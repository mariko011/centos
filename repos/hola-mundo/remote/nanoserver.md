## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:abbea79b7f02d035abd29b3ecae613292969de25425134d7c37618db5d01acc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

### `hola-mundo:nanoserver` - windows version 10.0.14393.1944; amd64

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

### `hola-mundo:nanoserver` - windows version 10.0.16299.125; amd64

```console
$ docker pull hola-mundo@sha256:fb5dec4240ea1a71e1cf7948cb4ccb02f6ff59cbbd97f51e05ea5fa4e2c29b68
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109529323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4efab954afa5e3c9b4949033045eae7ddfea92e26fa18bea713a7ddff352a96`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:24:07 GMT
RUN Install update 10.0.16299.125
# Tue, 19 Dec 2017 11:46:09 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Tue, 19 Dec 2017 11:46:10 GMT
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
	-	`sha256:6b804c8deb5e1f2f23253af1fa8aba59f7f38593e618d1a0b1cde2bf46d89819`  
		Last Modified: Tue, 19 Dec 2017 11:46:26 GMT  
		Size: 1.7 KB (1671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab0f8e0e459c971eb49b31c9aa9e12e47f6a722d3e63d5052863541dd5873`  
		Last Modified: Tue, 19 Dec 2017 11:46:26 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
