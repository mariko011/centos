## `nats:windowsservercore`

```console
$ docker pull nats@sha256:b4a59de986866582e12c518ef5d9264c5085660ffe35d50ec57b8249c40408da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `nats:windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull nats@sha256:6b60eff70be47bf599b3efbf8b3e72b81faa31a5fba4884a8ccd14121e3ccdf2
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5329823730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2d06bfc5a4ceb21f3fc17bfb439b7e0602498dae1984deae214059e81af019`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Sun, 20 Aug 2017 23:38:44 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sun, 20 Aug 2017 23:38:47 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Sun, 20 Aug 2017 23:38:51 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Sun, 20 Aug 2017 23:38:54 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sun, 20 Aug 2017 23:38:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sun, 20 Aug 2017 23:39:00 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Sun, 20 Aug 2017 23:39:03 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6c16e7c398e688fa25aa935a68e09188e5f2a1c7da0bba61046a8c1ead439e04`  
		Last Modified: Sun, 20 Aug 2017 23:39:23 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32eb2b2b640b9fc4baafed149776b8e6a70fefd42fbce77edae52c94503dc1d`  
		Last Modified: Sun, 20 Aug 2017 23:39:22 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca0feb28d0d3eb7bd25ad33ae832302c77b4b8810102879204b2d4d24c08e4e`  
		Last Modified: Sun, 20 Aug 2017 23:39:21 GMT  
		Size: 2.1 MB (2131351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fc75ddbcab920f34fcb5b1aa466116ad5fdc564bf5f2248f32f5ebeaa85975`  
		Last Modified: Sun, 20 Aug 2017 23:39:20 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ccfd9b19ae10e9e907e4dc80eb88ad0e7e36c5009e331723501e8f95d9be2d`  
		Last Modified: Sun, 20 Aug 2017 23:39:20 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e084bd3d87c5d34eb57a3f5acc36aeda2c78f7e2ac81b72905424d76e5f30c`  
		Last Modified: Sun, 20 Aug 2017 23:39:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c81bb651827251f106fd4f409defa2c179e18d1778bff9c7f5a0303b280ef13`  
		Last Modified: Sun, 20 Aug 2017 23:39:20 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
