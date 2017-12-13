## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:655244e9d993af8100e8c49fa252fb7a86dd332f69006decf561d5cc0297fad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:0a79622d3f549331b325faba9919c2a83a8647f7e6cd07765854371475c3d12d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.9 MB (401882277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f26378bd722b56e83203c8887670d0f8707711ece02173ec8a50272c12df94`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 12 Dec 2017 23:29:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 12 Dec 2017 23:29:58 GMT
RUN cmd /S /C #(nop) COPY file:c656ebbfbb58cb37d445aa025a3f93117bfda2b77866533dfe567a67a4a71e01 in nats-streaming-server.exe 
# Tue, 12 Dec 2017 23:29:59 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 12 Dec 2017 23:30:00 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
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
	-	`sha256:2735b5da9778b2ec6c898da8d2a6d18ea0847d7829b0dfeb84c4984ff081b6b2`  
		Last Modified: Tue, 12 Dec 2017 23:30:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffdeb52d1d9a81b52afe50aed5444de9bbe059e24e2fd279c8e8709a61609cb`  
		Last Modified: Tue, 12 Dec 2017 23:30:20 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b214d68cd5e79a2bd3d0a254f6da0046099ff905e23eebe6999e43589bdb72b`  
		Last Modified: Tue, 12 Dec 2017 23:30:21 GMT  
		Size: 3.2 MB (3163707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d1d803b2f843e1767f017b6cc6fa50a568ac47594d5e6111f7daf2ce787f08`  
		Last Modified: Tue, 12 Dec 2017 23:30:20 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1563b2da4754c386f09fbc3317a213e53a16ee6727a8867e47e11ff3e66845e7`  
		Last Modified: Tue, 12 Dec 2017 23:30:20 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
