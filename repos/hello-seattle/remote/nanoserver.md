## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:57a0a9ce93107a7e95a810e7d67cfb78e1b76ead98b00624611f374503cb16da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull hello-seattle@sha256:553134e72be99e3fd333ebc80b69cea35c645b3e5de61fa5b983a1ba3e10ff18
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400686885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606bf80dd661124fa7d68a18773341e44ba96c991721f7f95202343dec0038a3`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 21 Nov 2017 22:09:43 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Tue, 21 Nov 2017 22:09:43 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:53a0ccfb7e6fe326c54359c802287bbe5435ac269242e4883f85a1f305e1d0cb`  
		Last Modified: Mon, 13 Nov 2017 21:41:41 GMT  
		Size: 148.0 MB (147993264 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d55a4e879d810b2bc5b5531615eff2b4cc687c0910865e0cf0fbd77418d1d943`  
		Last Modified: Tue, 21 Nov 2017 22:09:56 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8f1cf7b118ecb28c0706bf21f3a666e27265c360e22b21c8351c21618c37f4`  
		Last Modified: Tue, 21 Nov 2017 22:09:55 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-seattle:nanoserver` - windows version 10.0.16299.64; amd64

```console
$ docker pull hello-seattle@sha256:e319359e4a03c409511d07191e81d5ce9af9a6d7d7c00c2ee2b50e188a76b436
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99068915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45139d27d09e8bae91fbfce6fb375a644d2161750b9857bbb68f65fc2d61ad1`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:08:00 GMT
RUN Install update 10.0.16299.64
# Tue, 21 Nov 2017 22:09:47 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Tue, 21 Nov 2017 22:09:48 GMT
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
	-	`sha256:60e0f086c6258a74697288e92384f9ae327b841917959bd18d00d49a03fab0da`  
		Last Modified: Tue, 21 Nov 2017 22:10:03 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185b408b0c8f95d41c66da1acb0b60127991ec5c88629a898913884a892f810f`  
		Last Modified: Tue, 21 Nov 2017 22:10:03 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
