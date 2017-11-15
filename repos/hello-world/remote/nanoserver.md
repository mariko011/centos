## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:3674ce8f30777aac4480fa0c5fdd5e09b3632d4b924dae7eccb837541b7bfd6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull hello-world@sha256:7841bb0fe2a0f7a187ffc013b1ee6c70e4100724fb700c3e4d5b43bb4ed60609
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400686840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04f75086c5ca8406ebf05d78cf747b4394d36da8177807ee4db4a57090103cc`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 05:15:53 GMT
RUN cmd /S /C #(nop) COPY file:83ce92863f9128ce438cc9983e3122ba560260e20328cab82d5ee2b618c2d1ac in C: 
# Wed, 15 Nov 2017 05:15:55 GMT
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
	-	`sha256:9987039f7f4c9eda72e34e948db9ce3fb76872285a990f987964700d323a440d`  
		Last Modified: Wed, 15 Nov 2017 05:16:08 GMT  
		Size: 1.6 KB (1629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c485fed54b6d91a0adbafdd9b84edb2015d2dc4e00ecb51dfdc42b72a6796c`  
		Last Modified: Wed, 15 Nov 2017 05:16:07 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
