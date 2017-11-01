## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:4d76d6d5310b0287e35f9f5433b1fbf6608d07b2a8d5c13dce8d1b3f495e3a07
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
$ docker pull nats-streaming@sha256:17686573e8144b57a1d2d023c9da098b2f84f0f9c59f32426894c401d2378896
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.6 MB (397616844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d3bfec2ce054040080567d535f4fccc1d57599112b11c88c529719002db78b1`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:43:03 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 01 Nov 2017 18:44:34 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Wed, 01 Nov 2017 18:44:35 GMT
RUN cmd /S /C #(nop) COPY file:c656ebbfbb58cb37d445aa025a3f93117bfda2b77866533dfe567a67a4a71e01 in nats-streaming-server.exe 
# Wed, 01 Nov 2017 18:44:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Wed, 01 Nov 2017 18:44:37 GMT
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
	-	`sha256:8a141f084399191aed2f8b1e63e7490b3d9fcf07f25d411fef57045f1e14e886`  
		Last Modified: Wed, 01 Nov 2017 18:43:33 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb5f5cf738a6cbf1214426f5a6771b19d929dd3ecc766f73915437b7430f03f`  
		Last Modified: Wed, 01 Nov 2017 18:44:54 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4f712ffb44b154e307936700914ddafd80300370c9d9d52003bcb10da6c6c0`  
		Last Modified: Wed, 01 Nov 2017 18:44:57 GMT  
		Size: 3.2 MB (3163704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1655b2a2d1fcb5474a3b167492819081f2ee87c0e993dd05cbb9576a399424`  
		Last Modified: Wed, 01 Nov 2017 18:44:55 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c18f6747b164682661f43ec5aa36b01812a5093ba23d1c53a143036e980815`  
		Last Modified: Wed, 01 Nov 2017 18:44:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
