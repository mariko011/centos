## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:0bb650087a24cd3d8ef1f1e1b7c825acc67c6e8af509c3ce48d456df34aaf1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

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
