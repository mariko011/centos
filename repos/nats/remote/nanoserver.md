## `nats:nanoserver`

```console
$ docker pull nats@sha256:eb784e3b56712584bf98d79ca9a9126861812576c3e7cef55f8cdc4c64de6905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats:nanoserver` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats@sha256:f5031b7368e40be8cddc251d9a31c4e0cc968ad6d707cac870801f10370d1f68
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.5 MB (405537452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c51bca79ca6e7c0acf1e30d42e12d814693556a0dedb456845b309a2b1c64f3`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:26 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Fri, 05 Jan 2018 00:24:40 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Fri, 05 Jan 2018 00:24:42 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Fri, 05 Jan 2018 00:24:43 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 05 Jan 2018 00:24:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 05 Jan 2018 00:24:45 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 05 Jan 2018 00:24:45 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:d9f37d7e0e330a1ef88bfc274a7cbc9c82b704e01d058a5bf0ffb4b073b102fb`  
		Last Modified: Fri, 05 Jan 2018 00:25:09 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35a273cba58974bfa533e731adab72146c4283884f27113faa61fd810478d2`  
		Last Modified: Fri, 05 Jan 2018 00:25:07 GMT  
		Size: 2.5 MB (2482094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf235f93e9744d90b4a86be3b6b48a910d25b6cb0fc17fa7bdca83f29c1379e`  
		Last Modified: Fri, 05 Jan 2018 00:25:06 GMT  
		Size: 1.7 KB (1704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdb04a9da635c36aef4629e9708c56b73c2503dad1d3e9cd2bd71e13581371d`  
		Last Modified: Fri, 05 Jan 2018 00:25:06 GMT  
		Size: 931.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace03d1a2e708a1b5c9687daeb8edf1ab6663ac8a6816605f9b56ac71f50186b`  
		Last Modified: Fri, 05 Jan 2018 00:25:06 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f4b7908fdfdf07703d5ae9516da870b55711b5e07318cc93f4f0e2df06fd29`  
		Last Modified: Fri, 05 Jan 2018 00:25:06 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
