## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:26aa0ee32c898ef7d9f472c2b449b4efd8f815ce42e2cb0afd4ef60ec65fa6b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1884; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:97279123669f461b236a4fee74aeb8d2de0de64b1877989657c5c040e77becf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a221f0c6efc47b8078d6d23eceaba9d5c9cb439c1cd8fa3f9ebf0699ce5f07c`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 04 Nov 2017 09:22:24 GMT
COPY file:6733e752178c9eb51ed9be40e23ad9c2baf82e81f06b968c37b5037f4155c90a in /nats-streaming-server 
# Sat, 04 Nov 2017 09:22:24 GMT
EXPOSE 4222/tcp 8222/tcp
# Sat, 04 Nov 2017 09:22:25 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Sat, 04 Nov 2017 09:22:25 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:34f141cd5c7a0c9644d7a3bd20e3adb472b632551c5a151e8b206be369d5967f`  
		Last Modified: Sat, 04 Nov 2017 09:22:33 GMT  
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

### `nats-streaming:latest` - windows version 10.0.14393.1884; amd64

```console
$ docker pull nats-streaming@sha256:78fdcc69f25db348188f21698ee48cf12ac90d24edd83734773ea09accee134c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.9 MB (403851865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466c3b97e4ed477f64f9a3e6401f78416a78de5210719181aa2ff75e2be5ff42`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 14 Nov 2017 23:32:04 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 14 Nov 2017 23:32:05 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 14 Nov 2017 23:32:08 GMT
RUN cmd /S /C #(nop) COPY file:c656ebbfbb58cb37d445aa025a3f93117bfda2b77866533dfe567a67a4a71e01 in nats-streaming-server.exe 
# Tue, 14 Nov 2017 23:32:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 14 Nov 2017 23:32:10 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
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
	-	`sha256:257e2c8165f44302fd8136185d3b740bd13c09d084394ed68443f2efd5008feb`  
		Last Modified: Tue, 14 Nov 2017 23:32:28 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75409312506ae65421384287b63e8a43b5dc41b8d221bba08e89caa44311c04c`  
		Last Modified: Tue, 14 Nov 2017 23:32:29 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8508a1759bea1cc8f00f526e7891d5003d15a450979563eda16f687e3abfe29b`  
		Last Modified: Tue, 14 Nov 2017 23:32:29 GMT  
		Size: 3.2 MB (3163710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f99c7d2a42c1799d99489a497a86d651674d0fc6174bc35c85471a0921f0131`  
		Last Modified: Tue, 14 Nov 2017 23:32:27 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8792e80aef9f8e6def16d177909c887e06d1a5301543ea9e3a457a05863361f8`  
		Last Modified: Tue, 14 Nov 2017 23:32:28 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
