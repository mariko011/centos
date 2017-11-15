## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:4e17e5f4a1880ff135eb76810a940d451e14f964542c660d7e85ee72a5406b1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `hola-mundo:nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull hola-mundo@sha256:a563fc8e99d68355006857d1ef87de43d6d365633e7ec574ff30cf0da6e57be1
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400686843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fc5f4f2d25ef74acc6e35f72ac5383bdde434c27e1ab06c4f318c7ef22b83a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 11:47:46 GMT
RUN cmd /S /C #(nop) COPY file:1a441dc870c06ac6b91e9df29b1d7fb3b77715bff83f8ec58db6425948a5afcd in C: 
# Wed, 15 Nov 2017 11:47:46 GMT
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
	-	`sha256:4b163728857eea9bc36ce1900e60ec22e1d11ca732a0c79375d625d1c514c365`  
		Last Modified: Wed, 15 Nov 2017 11:47:59 GMT  
		Size: 1.6 KB (1635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dfcdcfb1ca57a3f46fe1aaed66cae522897f35af2c0f983ece9f83a12f03d9`  
		Last Modified: Wed, 15 Nov 2017 11:47:57 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
