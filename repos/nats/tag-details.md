<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:1.0.4`](#nats104)
-	[`nats:1.0.4-linux`](#nats104-linux)
-	[`nats:1.0.4-nanoserver`](#nats104-nanoserver)
-	[`nats:1.0.4-windowsservercore`](#nats104-windowsservercore)
-	[`nats:latest`](#natslatest)
-	[`nats:linux`](#natslinux)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:1.0.4`

```console
$ docker pull nats@sha256:61fcb1f40da2111434fc910b0865c54155cd6e5f7c42e56e031c3f35a9998075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2007; amd64

### `nats:1.0.4` - linux; amd64

```console
$ docker pull nats@sha256:7bbc31229601059b39876f74de190d8c91a94993c8f222a7146334abd3857c84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf3ecbf9f39abaea9fc1dcfcb23850b3a655c3970b0f191371c25e20ef8d46`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 03 Nov 2017 23:13:39 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 03 Nov 2017 23:13:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 03 Nov 2017 23:13:39 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f169c9506d7479c0ce61575a67c1639e6dd6fe19ecd9e9280470fa0550ce87d2`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9eff5cafb0142f09f1a6ff709e01b177b4c897ee8d72c7deb2dafe2ee3d084`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.4` - linux; arm variant v7

```console
$ docker pull nats@sha256:6dd43224063e2b9046aa41c50dc9fabe596210af53cd4eabaf41aa226ce9fd11
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a610dcf5cdc0db5d9c5f51ff7396a1427614aa623ecb5d7065d89155aa9d9e6`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:16:10 GMT
COPY file:a0e52c4419ba6ab9831aee70be5514dae9704c507f99b282eb6f96a67f2fb0c9 in /gnatsd 
# Wed, 27 Sep 2017 20:16:11 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:16:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:16:11 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:16:11 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:5f27a895f642168fda2e117c11c900354afc849edd5b10542b6c4a546472297f`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 2.3 MB (2328763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c868785b92f6ccc57fcf787299f2351b7e3282f2766bb6e823a2b39a15ccec7`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.4` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:15398d8c1cd5279965d1e7cfb8b8f99357212fca6cef37ab39723bba3fefe8b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2298238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d8db493ea32959990b0e82a408e747bfa0d59c1858b746898b2bea77676bd2`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:16:22 GMT
COPY file:0574654a2b694a69ffe76698c23bdc7ac70eddfaac103889cb76c06182090230 in /gnatsd 
# Wed, 27 Sep 2017 20:16:23 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:16:23 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:16:24 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:16:24 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:0ee89d93ccad4837696308db9c798da0b48b2d2719093122638db6c2f2116701`  
		Last Modified: Wed, 27 Sep 2017 20:16:41 GMT  
		Size: 2.3 MB (2297761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad3a8332042321eb3560de34c6aa235b6d3368ca9aabcdf41504037e8ad6ced`  
		Last Modified: Wed, 27 Sep 2017 20:16:40 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.4` - windows version 10.0.14393.2007; amd64

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

## `nats:1.0.4-linux`

```console
$ docker pull nats@sha256:7478d6a6f01b03be7827fa1a8a0f2c5b3a353aa1816bf51410d8c5e85d47f59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:1.0.4-linux` - linux; amd64

```console
$ docker pull nats@sha256:7bbc31229601059b39876f74de190d8c91a94993c8f222a7146334abd3857c84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf3ecbf9f39abaea9fc1dcfcb23850b3a655c3970b0f191371c25e20ef8d46`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 03 Nov 2017 23:13:39 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 03 Nov 2017 23:13:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 03 Nov 2017 23:13:39 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f169c9506d7479c0ce61575a67c1639e6dd6fe19ecd9e9280470fa0550ce87d2`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9eff5cafb0142f09f1a6ff709e01b177b4c897ee8d72c7deb2dafe2ee3d084`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.4-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:6dd43224063e2b9046aa41c50dc9fabe596210af53cd4eabaf41aa226ce9fd11
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a610dcf5cdc0db5d9c5f51ff7396a1427614aa623ecb5d7065d89155aa9d9e6`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:16:10 GMT
COPY file:a0e52c4419ba6ab9831aee70be5514dae9704c507f99b282eb6f96a67f2fb0c9 in /gnatsd 
# Wed, 27 Sep 2017 20:16:11 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:16:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:16:11 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:16:11 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:5f27a895f642168fda2e117c11c900354afc849edd5b10542b6c4a546472297f`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 2.3 MB (2328763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c868785b92f6ccc57fcf787299f2351b7e3282f2766bb6e823a2b39a15ccec7`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.4-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:15398d8c1cd5279965d1e7cfb8b8f99357212fca6cef37ab39723bba3fefe8b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2298238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d8db493ea32959990b0e82a408e747bfa0d59c1858b746898b2bea77676bd2`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:16:22 GMT
COPY file:0574654a2b694a69ffe76698c23bdc7ac70eddfaac103889cb76c06182090230 in /gnatsd 
# Wed, 27 Sep 2017 20:16:23 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:16:23 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:16:24 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:16:24 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:0ee89d93ccad4837696308db9c798da0b48b2d2719093122638db6c2f2116701`  
		Last Modified: Wed, 27 Sep 2017 20:16:41 GMT  
		Size: 2.3 MB (2297761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad3a8332042321eb3560de34c6aa235b6d3368ca9aabcdf41504037e8ad6ced`  
		Last Modified: Wed, 27 Sep 2017 20:16:40 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.4-nanoserver`

```console
$ docker pull nats@sha256:eb784e3b56712584bf98d79ca9a9126861812576c3e7cef55f8cdc4c64de6905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats:1.0.4-nanoserver` - windows version 10.0.14393.2007; amd64

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

## `nats:1.0.4-windowsservercore`

```console
$ docker pull nats@sha256:47ab236c744976f9b47414db155d151914fc37cf145740c26d3c0090674f9833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats:1.0.4-windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats@sha256:9e1e6b134acabf5051f5094ccd4ed9b5366ac3e6cefc36d944ef26e3b0ef9f1e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5376495515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede20de7494efe4581c0b19903c1387d7e9c598d3d8d7da9f407a4645266251d`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:35 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Fri, 05 Jan 2018 00:24:51 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Fri, 05 Jan 2018 00:24:52 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Fri, 05 Jan 2018 00:24:54 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 05 Jan 2018 00:24:55 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 05 Jan 2018 00:24:56 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 05 Jan 2018 00:24:56 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:992d160bd07e67042bb0ffc079852f4af6ea6cf64c81787c3b6fc0b14f6060f8`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826864ce1d37d496c6777b14aac93c48f61cedb49188b34b8f75655f10e5c12d`  
		Last Modified: Fri, 05 Jan 2018 00:25:23 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f092dedb2c865da114d761e97a943c905bf74f0bc6618cb7c09d18420b1b58`  
		Last Modified: Fri, 05 Jan 2018 00:25:22 GMT  
		Size: 2.5 MB (2482312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484c3b73da8e038383a0a7b874441e4b5f7344abe4123a0bfaf3f456882280e8`  
		Last Modified: Fri, 05 Jan 2018 00:25:20 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316c5e26f79e1cd1bf2209331e8eba3a29356ea0c528c973e511841b9b023c0c`  
		Last Modified: Fri, 05 Jan 2018 00:25:21 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ca022bf9ad6aff1f0305d84c56d010ed4102b54779131d38b7bc0743bdebaf`  
		Last Modified: Fri, 05 Jan 2018 00:25:21 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdf074ce32bd2c199405ec7eb6bef5c7b525ef38b32a2de11c7913232c97cee`  
		Last Modified: Fri, 05 Jan 2018 00:25:20 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:61fcb1f40da2111434fc910b0865c54155cd6e5f7c42e56e031c3f35a9998075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2007; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:7bbc31229601059b39876f74de190d8c91a94993c8f222a7146334abd3857c84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf3ecbf9f39abaea9fc1dcfcb23850b3a655c3970b0f191371c25e20ef8d46`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 03 Nov 2017 23:13:39 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 03 Nov 2017 23:13:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 03 Nov 2017 23:13:39 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f169c9506d7479c0ce61575a67c1639e6dd6fe19ecd9e9280470fa0550ce87d2`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9eff5cafb0142f09f1a6ff709e01b177b4c897ee8d72c7deb2dafe2ee3d084`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:6dd43224063e2b9046aa41c50dc9fabe596210af53cd4eabaf41aa226ce9fd11
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a610dcf5cdc0db5d9c5f51ff7396a1427614aa623ecb5d7065d89155aa9d9e6`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:16:10 GMT
COPY file:a0e52c4419ba6ab9831aee70be5514dae9704c507f99b282eb6f96a67f2fb0c9 in /gnatsd 
# Wed, 27 Sep 2017 20:16:11 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:16:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:16:11 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:16:11 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:5f27a895f642168fda2e117c11c900354afc849edd5b10542b6c4a546472297f`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 2.3 MB (2328763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c868785b92f6ccc57fcf787299f2351b7e3282f2766bb6e823a2b39a15ccec7`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:15398d8c1cd5279965d1e7cfb8b8f99357212fca6cef37ab39723bba3fefe8b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2298238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d8db493ea32959990b0e82a408e747bfa0d59c1858b746898b2bea77676bd2`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:16:22 GMT
COPY file:0574654a2b694a69ffe76698c23bdc7ac70eddfaac103889cb76c06182090230 in /gnatsd 
# Wed, 27 Sep 2017 20:16:23 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:16:23 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:16:24 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:16:24 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:0ee89d93ccad4837696308db9c798da0b48b2d2719093122638db6c2f2116701`  
		Last Modified: Wed, 27 Sep 2017 20:16:41 GMT  
		Size: 2.3 MB (2297761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad3a8332042321eb3560de34c6aa235b6d3368ca9aabcdf41504037e8ad6ced`  
		Last Modified: Wed, 27 Sep 2017 20:16:40 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.14393.2007; amd64

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

## `nats:linux`

```console
$ docker pull nats@sha256:7478d6a6f01b03be7827fa1a8a0f2c5b3a353aa1816bf51410d8c5e85d47f59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:7bbc31229601059b39876f74de190d8c91a94993c8f222a7146334abd3857c84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf3ecbf9f39abaea9fc1dcfcb23850b3a655c3970b0f191371c25e20ef8d46`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 03 Nov 2017 23:13:39 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 03 Nov 2017 23:13:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 03 Nov 2017 23:13:39 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f169c9506d7479c0ce61575a67c1639e6dd6fe19ecd9e9280470fa0550ce87d2`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9eff5cafb0142f09f1a6ff709e01b177b4c897ee8d72c7deb2dafe2ee3d084`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:6dd43224063e2b9046aa41c50dc9fabe596210af53cd4eabaf41aa226ce9fd11
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a610dcf5cdc0db5d9c5f51ff7396a1427614aa623ecb5d7065d89155aa9d9e6`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:16:10 GMT
COPY file:a0e52c4419ba6ab9831aee70be5514dae9704c507f99b282eb6f96a67f2fb0c9 in /gnatsd 
# Wed, 27 Sep 2017 20:16:11 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:16:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:16:11 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:16:11 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:5f27a895f642168fda2e117c11c900354afc849edd5b10542b6c4a546472297f`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 2.3 MB (2328763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c868785b92f6ccc57fcf787299f2351b7e3282f2766bb6e823a2b39a15ccec7`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:15398d8c1cd5279965d1e7cfb8b8f99357212fca6cef37ab39723bba3fefe8b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2298238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d8db493ea32959990b0e82a408e747bfa0d59c1858b746898b2bea77676bd2`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:16:22 GMT
COPY file:0574654a2b694a69ffe76698c23bdc7ac70eddfaac103889cb76c06182090230 in /gnatsd 
# Wed, 27 Sep 2017 20:16:23 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:16:23 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:16:24 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:16:24 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:0ee89d93ccad4837696308db9c798da0b48b2d2719093122638db6c2f2116701`  
		Last Modified: Wed, 27 Sep 2017 20:16:41 GMT  
		Size: 2.3 MB (2297761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad3a8332042321eb3560de34c6aa235b6d3368ca9aabcdf41504037e8ad6ced`  
		Last Modified: Wed, 27 Sep 2017 20:16:40 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:47ab236c744976f9b47414db155d151914fc37cf145740c26d3c0090674f9833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats@sha256:9e1e6b134acabf5051f5094ccd4ed9b5366ac3e6cefc36d944ef26e3b0ef9f1e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5376495515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede20de7494efe4581c0b19903c1387d7e9c598d3d8d7da9f407a4645266251d`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:35 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Fri, 05 Jan 2018 00:24:51 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Fri, 05 Jan 2018 00:24:52 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Fri, 05 Jan 2018 00:24:54 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 05 Jan 2018 00:24:55 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 05 Jan 2018 00:24:56 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 05 Jan 2018 00:24:56 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:992d160bd07e67042bb0ffc079852f4af6ea6cf64c81787c3b6fc0b14f6060f8`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826864ce1d37d496c6777b14aac93c48f61cedb49188b34b8f75655f10e5c12d`  
		Last Modified: Fri, 05 Jan 2018 00:25:23 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f092dedb2c865da114d761e97a943c905bf74f0bc6618cb7c09d18420b1b58`  
		Last Modified: Fri, 05 Jan 2018 00:25:22 GMT  
		Size: 2.5 MB (2482312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484c3b73da8e038383a0a7b874441e4b5f7344abe4123a0bfaf3f456882280e8`  
		Last Modified: Fri, 05 Jan 2018 00:25:20 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316c5e26f79e1cd1bf2209331e8eba3a29356ea0c528c973e511841b9b023c0c`  
		Last Modified: Fri, 05 Jan 2018 00:25:21 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ca022bf9ad6aff1f0305d84c56d010ed4102b54779131d38b7bc0743bdebaf`  
		Last Modified: Fri, 05 Jan 2018 00:25:21 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdf074ce32bd2c199405ec7eb6bef5c7b525ef38b32a2de11c7913232c97cee`  
		Last Modified: Fri, 05 Jan 2018 00:25:20 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
