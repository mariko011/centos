## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:7968c858ac702f776d3baabe38da39a262014b77e874b93b17cc4c7e5b147e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull hello-world@sha256:41597e3426c1a3afff9db80549c5b8543e88f06a139fa5c7a8fad414bc4b14db
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (390045424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63522f28d2acef6d794b4e0bbed424677c80f02eb1ee85986809877d5f23226d`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 22:53:35 GMT
RUN cmd /S /C #(nop) COPY file:a5052dbb0d93d3999b3ee937f847dbf9005dbd46508351d1f4316fe2f9adef71 in C: 
# Wed, 09 Aug 2017 22:53:37 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1628e02ffaf161a985116cdaec12efc9af5deeca59107438a6dfb0f901ba3bad`  
		Last Modified: Wed, 09 Aug 2017 22:53:42 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeaed3be9bf13e8778d29e6e0455920c44c11b39c3968261987c7623b53e4ea`  
		Last Modified: Wed, 09 Aug 2017 22:53:42 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
