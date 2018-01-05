## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:235317e9b17ab351629bd0fcfe8fa1be26e5ae43d7150baef5fce6b1b988f29e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2007; amd64

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
