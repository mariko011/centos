## `hello-seattle:nanoserver-1709`

```console
$ docker pull hello-seattle@sha256:1ad0a63b8f0c67d5a7d649211667c196b2f41f0e4abde726205d879c6239838e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.192; amd64

### `hello-seattle:nanoserver-1709` - windows version 10.0.16299.192; amd64

```console
$ docker pull hello-seattle@sha256:f59e854027fc35dc397da023fd25dadd3e8606aaa3c962c06f55661e9c5dbc17
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123513100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3515d67b12b059bb0b8b5607ca846872d5da7e0ce10cb059671f758a834b40`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:23:16 GMT
RUN Install update 10.0.16299.192
# Fri, 05 Jan 2018 22:09:40 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Fri, 05 Jan 2018 22:09:41 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:711a33cda32c85e12bb0ef0ed0bec5b4c436ae1659bcb49b518ca84afefcc9c6`  
		Last Modified: Fri, 05 Jan 2018 19:38:01 GMT  
		Size: 42.5 MB (42470724 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34007bbfbd73d588a7bd7dc49e9aa74e32acbb7617b7f440f0b21a2e040ef16b`  
		Last Modified: Fri, 05 Jan 2018 22:09:52 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb1a2295e7a0139c00df94a32742a4273fdff2a308f82ec795bb03020d2ce12`  
		Last Modified: Fri, 05 Jan 2018 22:09:52 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
