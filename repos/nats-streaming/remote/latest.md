## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:c612e46691b41f8fde9c09dde0906815d151cad41b35cae09cf9455083a336fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:05ded20d349a0b42e121c31fb15a7826b41678cd72475ee8d7ef30e90dcdc282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3408359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8eafe26d51758993e4a64dc14e04b8682ad1a92824fb20b4dcbca70cecf9d0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 19 Dec 2017 18:59:56 GMT
COPY file:0eb5f0998e5218da31d53f7e49b5b4aae6e2b715282ddb388dc5236127def4df in /nats-streaming-server 
# Tue, 19 Dec 2017 18:59:56 GMT
EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 18:59:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 19 Dec 2017 18:59:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:fc1eced9799119b6b7e9e9c0cb15273eb1d5cec6f9f4ba8599a8886b7ba979e9`  
		Last Modified: Tue, 19 Dec 2017 19:00:10 GMT  
		Size: 3.4 MB (3408359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:57c3aa6818243a81fe585bb58ad054a5588b1fa9b708a48013df7c515b1249c7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7151602c5f8cb4b1d1e7abdae578c52b8ee4a25fa8e883535e1e258f11b45b7`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 20 Dec 2017 00:27:24 GMT
COPY file:c3ac650d6c5b53052faa9d9aeec05315822a8e432bc2555e2b88a3075fcb58cb in /nats-streaming-server 
# Wed, 20 Dec 2017 00:27:25 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 20 Dec 2017 00:27:25 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 20 Dec 2017 00:27:25 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:59a7098e2e4f6e1dee1b73ad44d54b5c378ad5c53fa9f6fe6d9cd25880173665`  
		Last Modified: Wed, 20 Dec 2017 00:27:35 GMT  
		Size: 3.2 MB (3186691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:adfd8d361e9e012fcc6e8f27a15551461f1eea611cf5f0d9ca29846284f45666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3106974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64efc89b1ad1d9f833ef04a4aaab8a54f776b0d8148deb4d9954ca41480025b`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 20 Dec 2017 01:27:31 GMT
COPY file:dad2b1cae21d39f28b583601a7e37358571746398cc01bb64d04e0b97df1fdb4 in /nats-streaming-server 
# Wed, 20 Dec 2017 01:27:31 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 20 Dec 2017 01:27:32 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 20 Dec 2017 01:27:33 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:2d99707846ff6807246e5a6f54ae8d815580f96497913f49617d1501293bd885`  
		Last Modified: Wed, 20 Dec 2017 01:27:46 GMT  
		Size: 3.1 MB (3106974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats-streaming@sha256:64cb4f85a2f475dc557cc2678dbf1742e78547ade717d1cbb13d55efdd255774
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.5 MB (406504823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a1ff4021a4bc3e5059b6048b58c72b3fdeb6d9e87f8fdcdf37dfefa6b9152f`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:26 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 04 Jan 2018 23:30:27 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 04 Jan 2018 23:30:29 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Thu, 04 Jan 2018 23:30:30 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 04 Jan 2018 23:30:30 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:764aee428c28f0935a6ded2a2730509373e1357648795b609b911dd46aa06257`  
		Last Modified: Thu, 04 Jan 2018 20:07:02 GMT  
		Size: 150.4 MB (150357748 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:17dbcc3dc4bd52b77b681666085b3fcd9ee5fc59df7d486ba54e0867c1b24971`  
		Last Modified: Thu, 04 Jan 2018 23:30:50 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8743e28281d5bf7f7de45ffdd8357deae9ae6c82bcf382acbef032b82f36adc1`  
		Last Modified: Thu, 04 Jan 2018 23:30:50 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a1b9eef451bca8eddebb55de2f7af1ecb602a6d56f7ca6fc538bac37ed4630`  
		Last Modified: Thu, 04 Jan 2018 23:30:52 GMT  
		Size: 3.5 MB (3452089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dac6e11df08fd37b4d9172ef212aa7dbdd1fb797ba525f9d03d6ac6313a059f`  
		Last Modified: Thu, 04 Jan 2018 23:30:50 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05261ebfd201ecc3a097cf404395d52af974ee537a013c7a54ce8f5ccdb7e41e`  
		Last Modified: Thu, 04 Jan 2018 23:30:51 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
