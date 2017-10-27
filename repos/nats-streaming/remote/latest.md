## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:b4d5f149185b343ba66e79889146931a8dc1f6c8fc5319424b0878ab3a370fe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1770; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:c6562f71ad50278b1655c017bc6affb4a2751c0e10cdc06df49877ea1109327d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adcabc934647370d67a598e615881f54ce4bb6b6dd7e3061aabece832a4128f2`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 27 Oct 2017 00:24:13 GMT
COPY file:6733e752178c9eb51ed9be40e23ad9c2baf82e81f06b968c37b5037f4155c90a in /nats-streaming-server 
# Fri, 27 Oct 2017 00:24:14 GMT
EXPOSE 4222/tcp 8222/tcp
# Fri, 27 Oct 2017 00:24:14 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 27 Oct 2017 00:24:14 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:6bc5623d46eeedca137ba7b692234af7c629329ca71736cd1eab0671b4e5d546`  
		Last Modified: Fri, 27 Oct 2017 00:24:29 GMT  
		Size: 3.1 MB (3137283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:665e9c4feee905561dc2151d581c906ada4135e5c0f1ea8247f2192ddfd28f77
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2930162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2892d7c4c79f9dfe833d7c8a11f0d0fa34fe75331588bf75f1c2d7b20ad57e58`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 26 Oct 2017 23:21:37 GMT
COPY file:db1f14e5f219544bf853ff8f6d124d9cdb5ae365abe4eea2ddc40c637cc744cf in /nats-streaming-server 
# Thu, 26 Oct 2017 23:21:41 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 26 Oct 2017 23:21:42 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 26 Oct 2017 23:21:42 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:ef57d0a0fc94ba76cee1cf4aef257b25281b5878f54670e3949e06708c61f1dc`  
		Last Modified: Thu, 26 Oct 2017 23:21:56 GMT  
		Size: 2.9 MB (2930162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:8765379e4036f079e01402360593cf6dc4f3cd22dc49c0c029cb39319621637b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2858116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f983a020a24093a446dae4f55b4031b23c6562b97bc1b6c4bb901c31a50bda`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 26 Oct 2017 23:21:50 GMT
COPY file:2b535dfbe081857e0adf5bc3d51034789b9b521c31cc24343bc98b5ade496456 in /nats-streaming-server 
# Thu, 26 Oct 2017 23:21:51 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 26 Oct 2017 23:21:52 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 26 Oct 2017 23:21:52 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:243b2fc29f0e9e0072b212560f12e46ab13fa534fc834be479df46017fa9e3a5`  
		Last Modified: Thu, 26 Oct 2017 23:22:22 GMT  
		Size: 2.9 MB (2858116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.1770; amd64

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
