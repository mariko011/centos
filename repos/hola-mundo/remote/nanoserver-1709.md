## `hola-mundo:nanoserver-1709`

```console
$ docker pull hola-mundo@sha256:2ae0ddaa9e042de225ecf6e7163a31315d284e528cc5ecf0a12f5a3f66541e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `hola-mundo:nanoserver-1709` - windows version 10.0.16299.125; amd64

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
