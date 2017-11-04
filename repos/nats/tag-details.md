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
$ docker pull nats@sha256:94438ecd6a284f80d859cc6309b7624b51912b8516f3f4d06c3553fcbe75449e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1770; amd64

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

### `nats:1.0.4` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats@sha256:7e43d0fab5866827a39b96b0f79422d954ea38d1840e482ad4ca6c3156539215
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.9 MB (396937784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d201bd817e16fa73fc8b9d1876cf5845c09f8cfd9375ac673457fe715c27c2b7`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:43:03 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 01 Nov 2017 18:43:04 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 01 Nov 2017 18:43:06 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 01 Nov 2017 18:43:07 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 01 Nov 2017 18:43:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 01 Nov 2017 18:43:08 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 01 Nov 2017 18:43:09 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:f376dbff981915709dbfd85dd9664fc703f8c085360f2a70c308f5866f9038aa`  
		Last Modified: Wed, 01 Nov 2017 18:43:33 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554b73ad489cf0fb7772da3056c2fa55d797dddcafd0d23d987c6ded42013ef8`  
		Last Modified: Wed, 01 Nov 2017 18:43:31 GMT  
		Size: 2.5 MB (2482098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc9a80cf24e2bf891d4cad009190e26a0c9f08700bd88687f8e6db74a0870c1`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e818c2926489fa46276c310953ad4499bc11443e6915a33bfedfe6bd5ede3a4`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3893a8cfd774d863989608c693cf5d98def0306b222d0221df76bc189b8d79a5`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0450fafa1ff6fccdf029ce6e658c2bc9eb99b00132f4c9e39f14947a8eae7dac`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 919.0 B  
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
$ docker pull nats@sha256:39fdebbb47bc844d3f8ad3b0e68a90fb9d6a229a9d217107b8f3790b583a0dc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `nats:1.0.4-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats@sha256:7e43d0fab5866827a39b96b0f79422d954ea38d1840e482ad4ca6c3156539215
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.9 MB (396937784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d201bd817e16fa73fc8b9d1876cf5845c09f8cfd9375ac673457fe715c27c2b7`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:43:03 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 01 Nov 2017 18:43:04 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 01 Nov 2017 18:43:06 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 01 Nov 2017 18:43:07 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 01 Nov 2017 18:43:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 01 Nov 2017 18:43:08 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 01 Nov 2017 18:43:09 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:f376dbff981915709dbfd85dd9664fc703f8c085360f2a70c308f5866f9038aa`  
		Last Modified: Wed, 01 Nov 2017 18:43:33 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554b73ad489cf0fb7772da3056c2fa55d797dddcafd0d23d987c6ded42013ef8`  
		Last Modified: Wed, 01 Nov 2017 18:43:31 GMT  
		Size: 2.5 MB (2482098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc9a80cf24e2bf891d4cad009190e26a0c9f08700bd88687f8e6db74a0870c1`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e818c2926489fa46276c310953ad4499bc11443e6915a33bfedfe6bd5ede3a4`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3893a8cfd774d863989608c693cf5d98def0306b222d0221df76bc189b8d79a5`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0450fafa1ff6fccdf029ce6e658c2bc9eb99b00132f4c9e39f14947a8eae7dac`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.4-windowsservercore`

```console
$ docker pull nats@sha256:05e04d8f9a90a147a093410bd87e1c2bf8afc64d4e1e9246b2cd7c9a12d5fc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `nats:1.0.4-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats@sha256:41a8fdb9df51979f5f9fb450066804470135ef02318d9ff9f3bd2c08e1e5e24b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5352997422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a1c8f805cfe678520bc2c381983075624ed56c29f1d8922b95261c3180f087`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:43:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 01 Nov 2017 18:43:13 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 01 Nov 2017 18:43:15 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 01 Nov 2017 18:43:16 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 01 Nov 2017 18:43:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 01 Nov 2017 18:43:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 01 Nov 2017 18:43:18 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:560588cec88cfe346ccddcff7e035ffffef9246a74e152c048512977e6bfe3b7`  
		Last Modified: Wed, 01 Nov 2017 18:43:57 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5480238d355c01fa7602eff8564de0552f6aef5546c35e375e89d88b63f78fe1`  
		Last Modified: Wed, 01 Nov 2017 18:43:54 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05028ce2a3aa1fafda217211e28877c44b45046f46c599425c5634af11abafdf`  
		Last Modified: Wed, 01 Nov 2017 18:43:53 GMT  
		Size: 2.5 MB (2482285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f9c6124b2d8702778890a954d9c9541fda40cc3d52f2fc19b217f3e7d52a6e`  
		Last Modified: Wed, 01 Nov 2017 18:43:51 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a16d8982d43fabeffa9435fc1de1feeb708a4555b48a7c9c99d71fda0a6c41`  
		Last Modified: Wed, 01 Nov 2017 18:43:51 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff6880bdc20297fd9c73ac5e502cfb905b862e2f5339657a3e6ec02f48da150`  
		Last Modified: Wed, 01 Nov 2017 18:43:51 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f35fc76bcc6194c2a2df48e86172d592c27da5994ecbc6c275195369487d3c6`  
		Last Modified: Wed, 01 Nov 2017 18:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:94438ecd6a284f80d859cc6309b7624b51912b8516f3f4d06c3553fcbe75449e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1770; amd64

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

### `nats:latest` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats@sha256:7e43d0fab5866827a39b96b0f79422d954ea38d1840e482ad4ca6c3156539215
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.9 MB (396937784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d201bd817e16fa73fc8b9d1876cf5845c09f8cfd9375ac673457fe715c27c2b7`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:43:03 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 01 Nov 2017 18:43:04 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 01 Nov 2017 18:43:06 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 01 Nov 2017 18:43:07 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 01 Nov 2017 18:43:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 01 Nov 2017 18:43:08 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 01 Nov 2017 18:43:09 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:f376dbff981915709dbfd85dd9664fc703f8c085360f2a70c308f5866f9038aa`  
		Last Modified: Wed, 01 Nov 2017 18:43:33 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554b73ad489cf0fb7772da3056c2fa55d797dddcafd0d23d987c6ded42013ef8`  
		Last Modified: Wed, 01 Nov 2017 18:43:31 GMT  
		Size: 2.5 MB (2482098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc9a80cf24e2bf891d4cad009190e26a0c9f08700bd88687f8e6db74a0870c1`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e818c2926489fa46276c310953ad4499bc11443e6915a33bfedfe6bd5ede3a4`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3893a8cfd774d863989608c693cf5d98def0306b222d0221df76bc189b8d79a5`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0450fafa1ff6fccdf029ce6e658c2bc9eb99b00132f4c9e39f14947a8eae7dac`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 919.0 B  
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
$ docker pull nats@sha256:39fdebbb47bc844d3f8ad3b0e68a90fb9d6a229a9d217107b8f3790b583a0dc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `nats:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats@sha256:7e43d0fab5866827a39b96b0f79422d954ea38d1840e482ad4ca6c3156539215
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.9 MB (396937784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d201bd817e16fa73fc8b9d1876cf5845c09f8cfd9375ac673457fe715c27c2b7`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:43:03 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 01 Nov 2017 18:43:04 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 01 Nov 2017 18:43:06 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 01 Nov 2017 18:43:07 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 01 Nov 2017 18:43:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 01 Nov 2017 18:43:08 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 01 Nov 2017 18:43:09 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:f376dbff981915709dbfd85dd9664fc703f8c085360f2a70c308f5866f9038aa`  
		Last Modified: Wed, 01 Nov 2017 18:43:33 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554b73ad489cf0fb7772da3056c2fa55d797dddcafd0d23d987c6ded42013ef8`  
		Last Modified: Wed, 01 Nov 2017 18:43:31 GMT  
		Size: 2.5 MB (2482098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc9a80cf24e2bf891d4cad009190e26a0c9f08700bd88687f8e6db74a0870c1`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e818c2926489fa46276c310953ad4499bc11443e6915a33bfedfe6bd5ede3a4`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3893a8cfd774d863989608c693cf5d98def0306b222d0221df76bc189b8d79a5`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0450fafa1ff6fccdf029ce6e658c2bc9eb99b00132f4c9e39f14947a8eae7dac`  
		Last Modified: Wed, 01 Nov 2017 18:43:30 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:05e04d8f9a90a147a093410bd87e1c2bf8afc64d4e1e9246b2cd7c9a12d5fc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `nats:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats@sha256:41a8fdb9df51979f5f9fb450066804470135ef02318d9ff9f3bd2c08e1e5e24b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5352997422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a1c8f805cfe678520bc2c381983075624ed56c29f1d8922b95261c3180f087`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:43:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 01 Nov 2017 18:43:13 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 01 Nov 2017 18:43:15 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 01 Nov 2017 18:43:16 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 01 Nov 2017 18:43:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 01 Nov 2017 18:43:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 01 Nov 2017 18:43:18 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:560588cec88cfe346ccddcff7e035ffffef9246a74e152c048512977e6bfe3b7`  
		Last Modified: Wed, 01 Nov 2017 18:43:57 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5480238d355c01fa7602eff8564de0552f6aef5546c35e375e89d88b63f78fe1`  
		Last Modified: Wed, 01 Nov 2017 18:43:54 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05028ce2a3aa1fafda217211e28877c44b45046f46c599425c5634af11abafdf`  
		Last Modified: Wed, 01 Nov 2017 18:43:53 GMT  
		Size: 2.5 MB (2482285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f9c6124b2d8702778890a954d9c9541fda40cc3d52f2fc19b217f3e7d52a6e`  
		Last Modified: Wed, 01 Nov 2017 18:43:51 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a16d8982d43fabeffa9435fc1de1feeb708a4555b48a7c9c99d71fda0a6c41`  
		Last Modified: Wed, 01 Nov 2017 18:43:51 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff6880bdc20297fd9c73ac5e502cfb905b862e2f5339657a3e6ec02f48da150`  
		Last Modified: Wed, 01 Nov 2017 18:43:51 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f35fc76bcc6194c2a2df48e86172d592c27da5994ecbc6c275195369487d3c6`  
		Last Modified: Wed, 01 Nov 2017 18:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
