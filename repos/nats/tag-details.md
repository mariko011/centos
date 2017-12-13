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
$ docker pull nats@sha256:51ab7790f4b8e625e3b9404520971abdbe9bc342b9e0736a05d4d934988727f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1944; amd64

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

### `nats:1.0.4` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats@sha256:1508d4c3be06bf8efc4ae27fdcb9d5792e1193fe1f129bde0867bb2e1813717a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.2 MB (401203320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a24ffe0f651fd1f2dbd9510044ea090a31fb8d046696dd9e9dd92ae18a0231b`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 13 Dec 2017 00:25:28 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 13 Dec 2017 00:25:30 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 13 Dec 2017 00:25:31 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 13 Dec 2017 00:25:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 13 Dec 2017 00:25:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 13 Dec 2017 00:25:34 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4806a44e00a0febaf206c2414777a070782c559757658199cf5e0d8f0ead2bba`  
		Last Modified: Mon, 11 Dec 2017 21:42:41 GMT  
		Size: 146.0 MB (146023673 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2735b5da9778b2ec6c898da8d2a6d18ea0847d7829b0dfeb84c4984ff081b6b2`  
		Last Modified: Tue, 12 Dec 2017 23:30:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5a770da952530b8cf459eb92abf45386051025458e4aa2e35735d568c2b63a`  
		Last Modified: Wed, 13 Dec 2017 00:25:57 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda44e6e21b2c8db683aee15d6b5a2b817625d55f4c493d750d0924d92aa03`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 2.5 MB (2482070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6309656ff58879b80114413cd5827e7b32087417d5cd2071a41c7083cd0d924e`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7aa0937c05897e60155c6cd04cb89de1f59e947e579f78e6f2e53dcbdb373a`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31eae37ef312d505257ca2310fee79f3bce22b337f32e2af828c6217bd8fe8c4`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a437f06e46fe0bd18433f5a5e18f8644fa74a576a3aaa24271394e3c6128819`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 944.0 B  
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
$ docker pull nats@sha256:96e8ff622c2328951e215c18e332ca8203bce8cf30159ddf7e2aca0869e33cb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats:1.0.4-nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats@sha256:1508d4c3be06bf8efc4ae27fdcb9d5792e1193fe1f129bde0867bb2e1813717a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.2 MB (401203320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a24ffe0f651fd1f2dbd9510044ea090a31fb8d046696dd9e9dd92ae18a0231b`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 13 Dec 2017 00:25:28 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 13 Dec 2017 00:25:30 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 13 Dec 2017 00:25:31 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 13 Dec 2017 00:25:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 13 Dec 2017 00:25:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 13 Dec 2017 00:25:34 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4806a44e00a0febaf206c2414777a070782c559757658199cf5e0d8f0ead2bba`  
		Last Modified: Mon, 11 Dec 2017 21:42:41 GMT  
		Size: 146.0 MB (146023673 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2735b5da9778b2ec6c898da8d2a6d18ea0847d7829b0dfeb84c4984ff081b6b2`  
		Last Modified: Tue, 12 Dec 2017 23:30:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5a770da952530b8cf459eb92abf45386051025458e4aa2e35735d568c2b63a`  
		Last Modified: Wed, 13 Dec 2017 00:25:57 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda44e6e21b2c8db683aee15d6b5a2b817625d55f4c493d750d0924d92aa03`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 2.5 MB (2482070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6309656ff58879b80114413cd5827e7b32087417d5cd2071a41c7083cd0d924e`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7aa0937c05897e60155c6cd04cb89de1f59e947e579f78e6f2e53dcbdb373a`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31eae37ef312d505257ca2310fee79f3bce22b337f32e2af828c6217bd8fe8c4`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a437f06e46fe0bd18433f5a5e18f8644fa74a576a3aaa24271394e3c6128819`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.4-windowsservercore`

```console
$ docker pull nats@sha256:1aeb9cd972770e83797abe898aaa513ef85deb7347a8edd984bfe6e1b2d11c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats:1.0.4-windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats@sha256:4e907e268f93d856517f266224399691fb0102848c886986acf2e25bae44d461
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5364305385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3870ee8af5c03e586273d227da1f80461d13686deab0107d72a8f00467881e`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:30:05 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 13 Dec 2017 00:25:40 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 13 Dec 2017 00:25:41 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 13 Dec 2017 00:25:43 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 13 Dec 2017 00:25:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 13 Dec 2017 00:25:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 13 Dec 2017 00:25:45 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f003d10ec430dbd4cbb310f041110a49399acb839a58bbf90e01385955ddab9`  
		Last Modified: Tue, 12 Dec 2017 23:30:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9967aec178db631b0d50c242e33a59fc39e0040d2db3c5225909fb24d4ed5747`  
		Last Modified: Wed, 13 Dec 2017 00:26:10 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d758f3af264344aa75c889c3f2d12c095139a756a9414e9057b1a3e8d9f77d88`  
		Last Modified: Wed, 13 Dec 2017 00:26:11 GMT  
		Size: 2.5 MB (2482310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f82b4b37f49bd3f092bf0b85c444c57169c6683eeebbe577e9e0bcde9f40c0`  
		Last Modified: Wed, 13 Dec 2017 00:26:08 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b34e7f2866326c5f21cb6ae65972786d2c4115b4d75b9c0c2642ec1efeb721f`  
		Last Modified: Wed, 13 Dec 2017 00:26:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b911a531e19b146ffd338a23e0b3314eba79c73c53d99a2cc6152714804e839a`  
		Last Modified: Wed, 13 Dec 2017 00:26:09 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4660d85aa2c9060e099b7a0ed9cfaacd7db6740f283789bf39597a8b6b162f`  
		Last Modified: Wed, 13 Dec 2017 00:26:08 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:51ab7790f4b8e625e3b9404520971abdbe9bc342b9e0736a05d4d934988727f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1944; amd64

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

### `nats:latest` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats@sha256:1508d4c3be06bf8efc4ae27fdcb9d5792e1193fe1f129bde0867bb2e1813717a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.2 MB (401203320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a24ffe0f651fd1f2dbd9510044ea090a31fb8d046696dd9e9dd92ae18a0231b`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 13 Dec 2017 00:25:28 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 13 Dec 2017 00:25:30 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 13 Dec 2017 00:25:31 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 13 Dec 2017 00:25:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 13 Dec 2017 00:25:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 13 Dec 2017 00:25:34 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4806a44e00a0febaf206c2414777a070782c559757658199cf5e0d8f0ead2bba`  
		Last Modified: Mon, 11 Dec 2017 21:42:41 GMT  
		Size: 146.0 MB (146023673 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2735b5da9778b2ec6c898da8d2a6d18ea0847d7829b0dfeb84c4984ff081b6b2`  
		Last Modified: Tue, 12 Dec 2017 23:30:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5a770da952530b8cf459eb92abf45386051025458e4aa2e35735d568c2b63a`  
		Last Modified: Wed, 13 Dec 2017 00:25:57 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda44e6e21b2c8db683aee15d6b5a2b817625d55f4c493d750d0924d92aa03`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 2.5 MB (2482070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6309656ff58879b80114413cd5827e7b32087417d5cd2071a41c7083cd0d924e`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7aa0937c05897e60155c6cd04cb89de1f59e947e579f78e6f2e53dcbdb373a`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31eae37ef312d505257ca2310fee79f3bce22b337f32e2af828c6217bd8fe8c4`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a437f06e46fe0bd18433f5a5e18f8644fa74a576a3aaa24271394e3c6128819`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 944.0 B  
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
$ docker pull nats@sha256:96e8ff622c2328951e215c18e332ca8203bce8cf30159ddf7e2aca0869e33cb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats:nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats@sha256:1508d4c3be06bf8efc4ae27fdcb9d5792e1193fe1f129bde0867bb2e1813717a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.2 MB (401203320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a24ffe0f651fd1f2dbd9510044ea090a31fb8d046696dd9e9dd92ae18a0231b`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 13 Dec 2017 00:25:28 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 13 Dec 2017 00:25:30 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 13 Dec 2017 00:25:31 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 13 Dec 2017 00:25:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 13 Dec 2017 00:25:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 13 Dec 2017 00:25:34 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4806a44e00a0febaf206c2414777a070782c559757658199cf5e0d8f0ead2bba`  
		Last Modified: Mon, 11 Dec 2017 21:42:41 GMT  
		Size: 146.0 MB (146023673 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2735b5da9778b2ec6c898da8d2a6d18ea0847d7829b0dfeb84c4984ff081b6b2`  
		Last Modified: Tue, 12 Dec 2017 23:30:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5a770da952530b8cf459eb92abf45386051025458e4aa2e35735d568c2b63a`  
		Last Modified: Wed, 13 Dec 2017 00:25:57 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda44e6e21b2c8db683aee15d6b5a2b817625d55f4c493d750d0924d92aa03`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 2.5 MB (2482070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6309656ff58879b80114413cd5827e7b32087417d5cd2071a41c7083cd0d924e`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7aa0937c05897e60155c6cd04cb89de1f59e947e579f78e6f2e53dcbdb373a`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31eae37ef312d505257ca2310fee79f3bce22b337f32e2af828c6217bd8fe8c4`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a437f06e46fe0bd18433f5a5e18f8644fa74a576a3aaa24271394e3c6128819`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:1aeb9cd972770e83797abe898aaa513ef85deb7347a8edd984bfe6e1b2d11c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats@sha256:4e907e268f93d856517f266224399691fb0102848c886986acf2e25bae44d461
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5364305385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3870ee8af5c03e586273d227da1f80461d13686deab0107d72a8f00467881e`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:30:05 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 13 Dec 2017 00:25:40 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 13 Dec 2017 00:25:41 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 13 Dec 2017 00:25:43 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 13 Dec 2017 00:25:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 13 Dec 2017 00:25:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 13 Dec 2017 00:25:45 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f003d10ec430dbd4cbb310f041110a49399acb839a58bbf90e01385955ddab9`  
		Last Modified: Tue, 12 Dec 2017 23:30:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9967aec178db631b0d50c242e33a59fc39e0040d2db3c5225909fb24d4ed5747`  
		Last Modified: Wed, 13 Dec 2017 00:26:10 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d758f3af264344aa75c889c3f2d12c095139a756a9414e9057b1a3e8d9f77d88`  
		Last Modified: Wed, 13 Dec 2017 00:26:11 GMT  
		Size: 2.5 MB (2482310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f82b4b37f49bd3f092bf0b85c444c57169c6683eeebbe577e9e0bcde9f40c0`  
		Last Modified: Wed, 13 Dec 2017 00:26:08 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b34e7f2866326c5f21cb6ae65972786d2c4115b4d75b9c0c2642ec1efeb721f`  
		Last Modified: Wed, 13 Dec 2017 00:26:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b911a531e19b146ffd338a23e0b3314eba79c73c53d99a2cc6152714804e839a`  
		Last Modified: Wed, 13 Dec 2017 00:26:09 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4660d85aa2c9060e099b7a0ed9cfaacd7db6740f283789bf39597a8b6b162f`  
		Last Modified: Wed, 13 Dec 2017 00:26:08 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
