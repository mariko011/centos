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
$ docker pull nats@sha256:78cf8dbf2f1e1df7889e05e9c4ea13529aa57dbdcabe358fef7b0b6f723cc033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1884; amd64

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

### `nats:1.0.4` - windows version 10.0.14393.1884; amd64

```console
$ docker pull nats@sha256:e1855a8f0f22895c734e2381aaed3c9e33d65d13c66dcd1957cf1f5181f40b19
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.2 MB (403173009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df9a84cfccefc7a510235c71e5b9e2f92549048bbd2267a639c5157f2ca90cd`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 14 Nov 2017 23:32:04 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Nov 2017 00:24:48 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 15 Nov 2017 00:24:49 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 15 Nov 2017 00:24:51 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 15 Nov 2017 00:24:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 15 Nov 2017 00:24:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 15 Nov 2017 00:24:54 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:745f7d66eb4ea53c1de7addc86613869b6e3e5e21f739faf0b99141c42a01ca5`  
		Last Modified: Wed, 15 Nov 2017 00:25:12 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d0842fccb2127a82521aeca86b585abf0de912f27297c93e26ad125348207c`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 2.5 MB (2482095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c54942037fe7960e4a1fc4fea332e0d53cb7592427daa3bcf1ceb948f3f98`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b8d6b7b6d64af454def60d6ab2b2576bfc7263f679591c68bcdab181f41818`  
		Last Modified: Wed, 15 Nov 2017 00:25:10 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9366cf757af7ccd6b6ac53092466b159d7a30375c8074b7196b04448851c3`  
		Last Modified: Wed, 15 Nov 2017 00:25:10 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a65f5b98bb526d97de92d992ca8cac1b129a23a0307b1ab07bdde2a2d034b53`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 947.0 B  
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
$ docker pull nats@sha256:f5128f14c0c2851eaeeb29fb6925acb35e58d5b9ff9cd5e22ab0e7cd0e099f38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `nats:1.0.4-nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull nats@sha256:e1855a8f0f22895c734e2381aaed3c9e33d65d13c66dcd1957cf1f5181f40b19
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.2 MB (403173009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df9a84cfccefc7a510235c71e5b9e2f92549048bbd2267a639c5157f2ca90cd`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 14 Nov 2017 23:32:04 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Nov 2017 00:24:48 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 15 Nov 2017 00:24:49 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 15 Nov 2017 00:24:51 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 15 Nov 2017 00:24:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 15 Nov 2017 00:24:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 15 Nov 2017 00:24:54 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:745f7d66eb4ea53c1de7addc86613869b6e3e5e21f739faf0b99141c42a01ca5`  
		Last Modified: Wed, 15 Nov 2017 00:25:12 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d0842fccb2127a82521aeca86b585abf0de912f27297c93e26ad125348207c`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 2.5 MB (2482095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c54942037fe7960e4a1fc4fea332e0d53cb7592427daa3bcf1ceb948f3f98`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b8d6b7b6d64af454def60d6ab2b2576bfc7263f679591c68bcdab181f41818`  
		Last Modified: Wed, 15 Nov 2017 00:25:10 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9366cf757af7ccd6b6ac53092466b159d7a30375c8074b7196b04448851c3`  
		Last Modified: Wed, 15 Nov 2017 00:25:10 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a65f5b98bb526d97de92d992ca8cac1b129a23a0307b1ab07bdde2a2d034b53`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.4-windowsservercore`

```console
$ docker pull nats@sha256:f34e1040023b4299dd3f668c1fa46a547f00808feb14939306786dc19756d8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `nats:1.0.4-windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull nats@sha256:ab745e120202a3c4c2b0356f262c56bf729b641a1165eb3524033fd6255a92a6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5359469214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a70a7c3125fbc5b54c46faac050a7db0ecffaefbe5e4a240a784180f6424f6f`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Tue, 14 Nov 2017 23:32:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Nov 2017 00:24:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 15 Nov 2017 00:24:58 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 15 Nov 2017 00:25:00 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 15 Nov 2017 00:25:00 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 15 Nov 2017 00:25:01 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 15 Nov 2017 00:25:02 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:139303713dae40ff590b66954070b5354fdf1da3648e90a3888b4c2e9a8a197a`  
		Last Modified: Tue, 14 Nov 2017 23:32:38 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c5a48af7889eb60f20b1263b024aef25c2a274cfeb0b25016537f6a1f85969`  
		Last Modified: Wed, 15 Nov 2017 00:25:24 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d830ff3fda976c1c1e35f39f9a3ff1445cffb2b5136f9eea02108f2aaeff4c`  
		Last Modified: Wed, 15 Nov 2017 00:25:22 GMT  
		Size: 2.5 MB (2482307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fe3d73fa90c13b9b78e44bddb390a0787be8073f7b9e3b28af190f9a81f904`  
		Last Modified: Wed, 15 Nov 2017 00:25:21 GMT  
		Size: 1.9 KB (1856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9a4344df4263899eb4e89730d08bb31fe7f1719fd9b26bd7416fe917d8d5fc`  
		Last Modified: Wed, 15 Nov 2017 00:25:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8564c105386fa8971354829104f18bb3e969eefd47decd406f43d8a3e2df3030`  
		Last Modified: Wed, 15 Nov 2017 00:25:22 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ed1b6549b1da29d43ca17e6ddb6425fd421af32235ab3a72a04a7d93fca2de`  
		Last Modified: Wed, 15 Nov 2017 00:25:21 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:78cf8dbf2f1e1df7889e05e9c4ea13529aa57dbdcabe358fef7b0b6f723cc033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.1884; amd64

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

### `nats:latest` - windows version 10.0.14393.1884; amd64

```console
$ docker pull nats@sha256:e1855a8f0f22895c734e2381aaed3c9e33d65d13c66dcd1957cf1f5181f40b19
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.2 MB (403173009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df9a84cfccefc7a510235c71e5b9e2f92549048bbd2267a639c5157f2ca90cd`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 14 Nov 2017 23:32:04 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Nov 2017 00:24:48 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 15 Nov 2017 00:24:49 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 15 Nov 2017 00:24:51 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 15 Nov 2017 00:24:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 15 Nov 2017 00:24:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 15 Nov 2017 00:24:54 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:745f7d66eb4ea53c1de7addc86613869b6e3e5e21f739faf0b99141c42a01ca5`  
		Last Modified: Wed, 15 Nov 2017 00:25:12 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d0842fccb2127a82521aeca86b585abf0de912f27297c93e26ad125348207c`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 2.5 MB (2482095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c54942037fe7960e4a1fc4fea332e0d53cb7592427daa3bcf1ceb948f3f98`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b8d6b7b6d64af454def60d6ab2b2576bfc7263f679591c68bcdab181f41818`  
		Last Modified: Wed, 15 Nov 2017 00:25:10 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9366cf757af7ccd6b6ac53092466b159d7a30375c8074b7196b04448851c3`  
		Last Modified: Wed, 15 Nov 2017 00:25:10 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a65f5b98bb526d97de92d992ca8cac1b129a23a0307b1ab07bdde2a2d034b53`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 947.0 B  
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
$ docker pull nats@sha256:f5128f14c0c2851eaeeb29fb6925acb35e58d5b9ff9cd5e22ab0e7cd0e099f38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `nats:nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull nats@sha256:e1855a8f0f22895c734e2381aaed3c9e33d65d13c66dcd1957cf1f5181f40b19
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.2 MB (403173009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df9a84cfccefc7a510235c71e5b9e2f92549048bbd2267a639c5157f2ca90cd`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Tue, 14 Nov 2017 23:32:04 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Nov 2017 00:24:48 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 15 Nov 2017 00:24:49 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 15 Nov 2017 00:24:51 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 15 Nov 2017 00:24:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 15 Nov 2017 00:24:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 15 Nov 2017 00:24:54 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:745f7d66eb4ea53c1de7addc86613869b6e3e5e21f739faf0b99141c42a01ca5`  
		Last Modified: Wed, 15 Nov 2017 00:25:12 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d0842fccb2127a82521aeca86b585abf0de912f27297c93e26ad125348207c`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 2.5 MB (2482095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c54942037fe7960e4a1fc4fea332e0d53cb7592427daa3bcf1ceb948f3f98`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b8d6b7b6d64af454def60d6ab2b2576bfc7263f679591c68bcdab181f41818`  
		Last Modified: Wed, 15 Nov 2017 00:25:10 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9366cf757af7ccd6b6ac53092466b159d7a30375c8074b7196b04448851c3`  
		Last Modified: Wed, 15 Nov 2017 00:25:10 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a65f5b98bb526d97de92d992ca8cac1b129a23a0307b1ab07bdde2a2d034b53`  
		Last Modified: Wed, 15 Nov 2017 00:25:11 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:f34e1040023b4299dd3f668c1fa46a547f00808feb14939306786dc19756d8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `nats:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull nats@sha256:ab745e120202a3c4c2b0356f262c56bf729b641a1165eb3524033fd6255a92a6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5359469214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a70a7c3125fbc5b54c46faac050a7db0ecffaefbe5e4a240a784180f6424f6f`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Tue, 14 Nov 2017 23:32:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Nov 2017 00:24:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 15 Nov 2017 00:24:58 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 15 Nov 2017 00:25:00 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 15 Nov 2017 00:25:00 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 15 Nov 2017 00:25:01 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 15 Nov 2017 00:25:02 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:139303713dae40ff590b66954070b5354fdf1da3648e90a3888b4c2e9a8a197a`  
		Last Modified: Tue, 14 Nov 2017 23:32:38 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c5a48af7889eb60f20b1263b024aef25c2a274cfeb0b25016537f6a1f85969`  
		Last Modified: Wed, 15 Nov 2017 00:25:24 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d830ff3fda976c1c1e35f39f9a3ff1445cffb2b5136f9eea02108f2aaeff4c`  
		Last Modified: Wed, 15 Nov 2017 00:25:22 GMT  
		Size: 2.5 MB (2482307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fe3d73fa90c13b9b78e44bddb390a0787be8073f7b9e3b28af190f9a81f904`  
		Last Modified: Wed, 15 Nov 2017 00:25:21 GMT  
		Size: 1.9 KB (1856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9a4344df4263899eb4e89730d08bb31fe7f1719fd9b26bd7416fe917d8d5fc`  
		Last Modified: Wed, 15 Nov 2017 00:25:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8564c105386fa8971354829104f18bb3e969eefd47decd406f43d8a3e2df3030`  
		Last Modified: Wed, 15 Nov 2017 00:25:22 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ed1b6549b1da29d43ca17e6ddb6425fd421af32235ab3a72a04a7d93fca2de`  
		Last Modified: Wed, 15 Nov 2017 00:25:21 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
