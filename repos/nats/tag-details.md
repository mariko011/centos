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
$ docker pull nats@sha256:0a28de713795e327d00c29b29f8349b56b1e2127e24102678340e358b83a3ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1715; amd64

### `nats:1.0.4` - linux; amd64

```console
$ docker pull nats@sha256:679f979cd94dcfbce9b671175acba1dfa43034bb3d7d63a83da3c465c64b2e5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094fbf6a6b7ff0ebd402db79ceac723c22f799b23e9408d921e4451f7c055241`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:20:10 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Wed, 27 Sep 2017 20:20:11 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:20:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:20:11 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:20:11 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:98b76eda0d209e3b6318a1ba63735790bcd3f70bf810d1104e97e5eb4aec5870`  
		Last Modified: Wed, 27 Sep 2017 20:20:21 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a79532b04141e25c6ad032b22f952d1c5a9093a38e087a14c1e4f6775c6e41`  
		Last Modified: Wed, 27 Sep 2017 20:20:20 GMT  
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

### `nats:1.0.4` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:640978df9e54e33c33b4b67106c40f781d0126337d57d7481a410cfdf0cda9bb
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395631033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0988c29432e800807722e504642d133c214aa6b8c7b96158f2f133108f2c424`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 23:53:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 14 Sep 2017 23:53:32 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 27 Sep 2017 20:18:19 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 27 Sep 2017 20:18:22 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:18:24 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:18:26 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 27 Sep 2017 20:18:28 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5a21de8b6a4157b2ce0c824ffadc7540a632e6820dc451fccbdfd83ad9cf26aa`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc9d9dab6ac959723444514c7f92fd81f36d493fb9a1df9acd342fa4efac436`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8472b8b720dfaa148aae44d6d3d6634e1873f88569be6845c3ad9f2b9931434`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 2.5 MB (2482111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fe2a1a68f7baf8059123c2148ba5432ab57b1af66cc980e488626b41549e7d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06c5ac24217c45c645d1e7bbdcd604d3dc139b4d42841c054715c5a8606a06d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ed0875219882619c1bcd9cc924c249cea53816d0dc36bdbf10500e062ad9d3`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05552ecbc4a7a24aa097c7f9382ca35f01e168bfdb4a4c41b28d6593eb3a74d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.4-linux`

```console
$ docker pull nats@sha256:c2142faca06e546db6ed4c569b11d2bfacb0e5a48a3d6cbf0abe19704da00e91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:1.0.4-linux` - linux; amd64

```console
$ docker pull nats@sha256:679f979cd94dcfbce9b671175acba1dfa43034bb3d7d63a83da3c465c64b2e5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094fbf6a6b7ff0ebd402db79ceac723c22f799b23e9408d921e4451f7c055241`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:20:10 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Wed, 27 Sep 2017 20:20:11 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:20:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:20:11 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:20:11 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:98b76eda0d209e3b6318a1ba63735790bcd3f70bf810d1104e97e5eb4aec5870`  
		Last Modified: Wed, 27 Sep 2017 20:20:21 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a79532b04141e25c6ad032b22f952d1c5a9093a38e087a14c1e4f6775c6e41`  
		Last Modified: Wed, 27 Sep 2017 20:20:20 GMT  
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
$ docker pull nats@sha256:757da6ea7b5f7b4130620057db2b84f5c4a5284f7ab4d1180b5d1ee638c0bb00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `nats:1.0.4-nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:640978df9e54e33c33b4b67106c40f781d0126337d57d7481a410cfdf0cda9bb
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395631033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0988c29432e800807722e504642d133c214aa6b8c7b96158f2f133108f2c424`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 23:53:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 14 Sep 2017 23:53:32 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 27 Sep 2017 20:18:19 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 27 Sep 2017 20:18:22 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:18:24 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:18:26 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 27 Sep 2017 20:18:28 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5a21de8b6a4157b2ce0c824ffadc7540a632e6820dc451fccbdfd83ad9cf26aa`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc9d9dab6ac959723444514c7f92fd81f36d493fb9a1df9acd342fa4efac436`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8472b8b720dfaa148aae44d6d3d6634e1873f88569be6845c3ad9f2b9931434`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 2.5 MB (2482111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fe2a1a68f7baf8059123c2148ba5432ab57b1af66cc980e488626b41549e7d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06c5ac24217c45c645d1e7bbdcd604d3dc139b4d42841c054715c5a8606a06d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ed0875219882619c1bcd9cc924c249cea53816d0dc36bdbf10500e062ad9d3`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05552ecbc4a7a24aa097c7f9382ca35f01e168bfdb4a4c41b28d6593eb3a74d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.4-windowsservercore`

```console
$ docker pull nats@sha256:c167741e28dadb7c33432118460c39d4f18a7a94e5cb0b4e270712f625dc0916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `nats:1.0.4-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:ad19a49e2afb33f4ee7b89c765c8893fd67aa22c0ce991ef0bc0743b2606dc88
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5338298989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf55b09c7a37e15214b71a60a9e264bef1f0923d8d4a7b9f5b210a7216e29995`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 23:53:50 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 14 Sep 2017 23:53:54 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 27 Sep 2017 20:18:35 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 27 Sep 2017 20:18:39 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:18:42 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:18:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 27 Sep 2017 20:18:50 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a43ac1bf86a2806f6b3ea678de0556b4d4abefde4ff1daa217d58245966cd792`  
		Last Modified: Thu, 14 Sep 2017 23:54:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3817b383ff4bab348ffa960cb525689977711efa1b34d1decef3d69b8ee365fd`  
		Last Modified: Thu, 14 Sep 2017 23:54:46 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874685deea14d4d56b6df7af5edd661d9788c8f484677b67487b5f226117a28a`  
		Last Modified: Wed, 27 Sep 2017 20:19:14 GMT  
		Size: 2.5 MB (2482357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622fe9b14d31257e9e6d0792901b1bd35b7be485cd24befe415c21049ae77c90`  
		Last Modified: Wed, 27 Sep 2017 20:19:14 GMT  
		Size: 1.9 KB (1915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8622227bd56054114f940b795ae8b50006c0a47d2773243fe69bf04f109787`  
		Last Modified: Wed, 27 Sep 2017 20:19:13 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73d3e7dbd0925e1ecf74ddd4082e650fef15c4141826525776ede5e0f6a0678`  
		Last Modified: Wed, 27 Sep 2017 20:19:14 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1ae5fea6b968218d64a81e367f57641ef2403145c29fce81cc71a6250f4fc5`  
		Last Modified: Wed, 27 Sep 2017 20:19:13 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:0a28de713795e327d00c29b29f8349b56b1e2127e24102678340e358b83a3ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1715; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:679f979cd94dcfbce9b671175acba1dfa43034bb3d7d63a83da3c465c64b2e5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094fbf6a6b7ff0ebd402db79ceac723c22f799b23e9408d921e4451f7c055241`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:20:10 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Wed, 27 Sep 2017 20:20:11 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:20:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:20:11 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:20:11 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:98b76eda0d209e3b6318a1ba63735790bcd3f70bf810d1104e97e5eb4aec5870`  
		Last Modified: Wed, 27 Sep 2017 20:20:21 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a79532b04141e25c6ad032b22f952d1c5a9093a38e087a14c1e4f6775c6e41`  
		Last Modified: Wed, 27 Sep 2017 20:20:20 GMT  
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

### `nats:latest` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:640978df9e54e33c33b4b67106c40f781d0126337d57d7481a410cfdf0cda9bb
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395631033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0988c29432e800807722e504642d133c214aa6b8c7b96158f2f133108f2c424`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 23:53:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 14 Sep 2017 23:53:32 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 27 Sep 2017 20:18:19 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 27 Sep 2017 20:18:22 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:18:24 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:18:26 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 27 Sep 2017 20:18:28 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5a21de8b6a4157b2ce0c824ffadc7540a632e6820dc451fccbdfd83ad9cf26aa`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc9d9dab6ac959723444514c7f92fd81f36d493fb9a1df9acd342fa4efac436`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8472b8b720dfaa148aae44d6d3d6634e1873f88569be6845c3ad9f2b9931434`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 2.5 MB (2482111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fe2a1a68f7baf8059123c2148ba5432ab57b1af66cc980e488626b41549e7d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06c5ac24217c45c645d1e7bbdcd604d3dc139b4d42841c054715c5a8606a06d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ed0875219882619c1bcd9cc924c249cea53816d0dc36bdbf10500e062ad9d3`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05552ecbc4a7a24aa097c7f9382ca35f01e168bfdb4a4c41b28d6593eb3a74d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:c2142faca06e546db6ed4c569b11d2bfacb0e5a48a3d6cbf0abe19704da00e91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:679f979cd94dcfbce9b671175acba1dfa43034bb3d7d63a83da3c465c64b2e5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094fbf6a6b7ff0ebd402db79ceac723c22f799b23e9408d921e4451f7c055241`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:20:10 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Wed, 27 Sep 2017 20:20:11 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:20:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:20:11 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:20:11 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:98b76eda0d209e3b6318a1ba63735790bcd3f70bf810d1104e97e5eb4aec5870`  
		Last Modified: Wed, 27 Sep 2017 20:20:21 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a79532b04141e25c6ad032b22f952d1c5a9093a38e087a14c1e4f6775c6e41`  
		Last Modified: Wed, 27 Sep 2017 20:20:20 GMT  
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
$ docker pull nats@sha256:757da6ea7b5f7b4130620057db2b84f5c4a5284f7ab4d1180b5d1ee638c0bb00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `nats:nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:640978df9e54e33c33b4b67106c40f781d0126337d57d7481a410cfdf0cda9bb
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395631033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0988c29432e800807722e504642d133c214aa6b8c7b96158f2f133108f2c424`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 23:53:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 14 Sep 2017 23:53:32 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 27 Sep 2017 20:18:19 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 27 Sep 2017 20:18:22 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:18:24 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:18:26 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 27 Sep 2017 20:18:28 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5a21de8b6a4157b2ce0c824ffadc7540a632e6820dc451fccbdfd83ad9cf26aa`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc9d9dab6ac959723444514c7f92fd81f36d493fb9a1df9acd342fa4efac436`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8472b8b720dfaa148aae44d6d3d6634e1873f88569be6845c3ad9f2b9931434`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 2.5 MB (2482111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fe2a1a68f7baf8059123c2148ba5432ab57b1af66cc980e488626b41549e7d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06c5ac24217c45c645d1e7bbdcd604d3dc139b4d42841c054715c5a8606a06d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ed0875219882619c1bcd9cc924c249cea53816d0dc36bdbf10500e062ad9d3`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05552ecbc4a7a24aa097c7f9382ca35f01e168bfdb4a4c41b28d6593eb3a74d`  
		Last Modified: Wed, 27 Sep 2017 20:19:01 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:c167741e28dadb7c33432118460c39d4f18a7a94e5cb0b4e270712f625dc0916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `nats:windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:ad19a49e2afb33f4ee7b89c765c8893fd67aa22c0ce991ef0bc0743b2606dc88
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5338298989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf55b09c7a37e15214b71a60a9e264bef1f0923d8d4a7b9f5b210a7216e29995`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 23:53:50 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 14 Sep 2017 23:53:54 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 27 Sep 2017 20:18:35 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 27 Sep 2017 20:18:39 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:18:42 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:18:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 27 Sep 2017 20:18:50 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a43ac1bf86a2806f6b3ea678de0556b4d4abefde4ff1daa217d58245966cd792`  
		Last Modified: Thu, 14 Sep 2017 23:54:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3817b383ff4bab348ffa960cb525689977711efa1b34d1decef3d69b8ee365fd`  
		Last Modified: Thu, 14 Sep 2017 23:54:46 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874685deea14d4d56b6df7af5edd661d9788c8f484677b67487b5f226117a28a`  
		Last Modified: Wed, 27 Sep 2017 20:19:14 GMT  
		Size: 2.5 MB (2482357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622fe9b14d31257e9e6d0792901b1bd35b7be485cd24befe415c21049ae77c90`  
		Last Modified: Wed, 27 Sep 2017 20:19:14 GMT  
		Size: 1.9 KB (1915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8622227bd56054114f940b795ae8b50006c0a47d2773243fe69bf04f109787`  
		Last Modified: Wed, 27 Sep 2017 20:19:13 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73d3e7dbd0925e1ecf74ddd4082e650fef15c4141826525776ede5e0f6a0678`  
		Last Modified: Wed, 27 Sep 2017 20:19:14 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1ae5fea6b968218d64a81e367f57641ef2403145c29fce81cc71a6250f4fc5`  
		Last Modified: Wed, 27 Sep 2017 20:19:13 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
