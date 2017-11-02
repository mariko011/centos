## `hello-world:nanoserver1709`

```console
$ docker pull hello-world@sha256:d34387f2d9589b9083b5d0d59fbcf5479c06fff0a63d6bd4073c0a577ad18331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.19; amd64

### `hello-world:nanoserver1709` - windows version 10.0.16299.19; amd64

```console
$ docker pull hello-world@sha256:f6116a71d7d8307cf19655cab16fc3b1b13aa73913bba6fbf758085e61519185
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93176690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb75eccd94f3d1cfefeabd42dc36d75edc04de3cb970fdfa3fa03a0cd9c6beff`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Install update 10.0.16299.19
# Wed, 01 Nov 2017 23:49:33 GMT
RUN cmd /S /C #(nop) COPY file:83ce92863f9128ce438cc9983e3122ba560260e20328cab82d5ee2b618c2d1ac in C: 
# Wed, 01 Nov 2017 23:49:34 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad09b0550b6c41c96a80f476f16b2ad5160d9c10545a05a73b8eece84b5d9d49`  
		Last Modified: Tue, 17 Oct 2017 17:20:51 GMT  
		Size: 12.1 MB (12134341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:36788ec986053c511d145bb86b50516a02c43f1d9ca2d5961301e0be60e17c07`  
		Last Modified: Wed, 01 Nov 2017 23:49:43 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318ec551d46201ada55ef3620be1e7289e94f72b16c0355d00a87948cc51e648`  
		Last Modified: Wed, 01 Nov 2017 23:49:43 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
