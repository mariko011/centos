## `hola-mundo:nanoserver1709`

```console
$ docker pull hola-mundo@sha256:b0834a9f7900a8db5196e2949f9be92b1ef9f39591011ae72894f66f61f491b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.19; amd64

### `hola-mundo:nanoserver1709` - windows version 10.0.16299.19; amd64

```console
$ docker pull hola-mundo@sha256:a4494f53129b806ad55ab4f3f87980e72da22d4f74ebdc02c7ef8142e5f61f51
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93176708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1ad169bf2425585f7d98cb0dd766c8d559ccd6b9789530e2c8ebe92e4fff03`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Install update 10.0.16299.19
# Wed, 01 Nov 2017 23:48:51 GMT
RUN cmd /S /C #(nop) COPY file:1a441dc870c06ac6b91e9df29b1d7fb3b77715bff83f8ec58db6425948a5afcd in C: 
# Wed, 01 Nov 2017 23:48:51 GMT
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
	-	`sha256:f6544187c3ab4be9fef4c943c4db8cc66cda7d6100bd4fe0876b2262bce7eda8`  
		Last Modified: Wed, 01 Nov 2017 23:49:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0bac768d541ff7a215e80782e5c2dd0f142c64865f9f8f952575b8a599e09`  
		Last Modified: Wed, 01 Nov 2017 23:49:01 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
