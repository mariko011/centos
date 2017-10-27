## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:cbfe798b2b43fc0b9c96b614282e48ace74d08e355d5179878c46582aee7192b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats-streaming@sha256:4e9ddf0f741f3740b26796f21255bc820bba9d534449771d97751f60ddd18d9b
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.6 MB (397616901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b572418bb87134c4340d9aaf8080a3a3100066be15efd32103df966208f17df`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Tue, 10 Oct 2017 23:34:22 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 26 Oct 2017 23:22:36 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 26 Oct 2017 23:22:39 GMT
RUN cmd /S /C #(nop) COPY file:c656ebbfbb58cb37d445aa025a3f93117bfda2b77866533dfe567a67a4a71e01 in nats-streaming-server.exe 
# Thu, 26 Oct 2017 23:22:40 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 26 Oct 2017 23:22:42 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0c298e0d90d212bef2886ad3f661e0abcaffe81f9f80d461f8e77ed1cdfe68f`  
		Last Modified: Tue, 10 Oct 2017 23:35:14 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4623d9d53af9c169ebdf9cc28dc4b8b0f5f4e7c3a1eb1e5bc2419f46288ef12b`  
		Last Modified: Thu, 26 Oct 2017 23:23:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5db3556a393416d7c38872502388c07be2855aed8883f4af07c70a97d116972`  
		Last Modified: Thu, 26 Oct 2017 23:23:06 GMT  
		Size: 3.2 MB (3163718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ef354f9d5abf95ac61f17bdfd0c66c2d8897fa0c65ba46dd8f6922fd529b13`  
		Last Modified: Thu, 26 Oct 2017 23:23:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620cd414d5a041a1ed65ea427eb656d7a66c28e04b6297a4c5aaa39a0be1422f`  
		Last Modified: Thu, 26 Oct 2017 23:23:06 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
