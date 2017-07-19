<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:1.0.2`](#nats102)
-	[`nats:latest`](#natslatest)
-	[`nats:1.0.2-nanoserver`](#nats102-nanoserver)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:1.0.2-windowsservercore`](#nats102-windowsservercore)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:1.0.2`

```console
$ docker pull nats@sha256:8e238e67f69c4a23bbfdbe26a3e47af47346ca65d91b58c8ae2453613777a6f4
```

-	Platforms:
	-	linux; amd64

### `nats:1.0.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2126459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24d4c38858c9e6de4938b5a278842d737db0317b8dc3a671723a63fd370b017`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 19 Jul 2017 20:39:10 GMT
COPY file:8328e71a6e7f74003ba186b6557bdeff4587b91b09e1617cb5aa65dac4682108 in /gnatsd 
# Wed, 19 Jul 2017 20:39:10 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 19 Jul 2017 20:39:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 19 Jul 2017 20:39:12 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 19 Jul 2017 20:39:12 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:82d4a6042d83a3674b5129c8f65de81b81c1d3b571b8c1e73fb851bd5134d62f`  
		Last Modified: Wed, 19 Jul 2017 20:39:24 GMT  
		Size: 2.1 MB (2125982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece582085605790e485b6fa2ebee1af5249139add60529e28f3e1ce33aacd35b`  
		Last Modified: Wed, 19 Jul 2017 20:39:26 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:8e238e67f69c4a23bbfdbe26a3e47af47346ca65d91b58c8ae2453613777a6f4
```

-	Platforms:
	-	linux; amd64

### `nats:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2126459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24d4c38858c9e6de4938b5a278842d737db0317b8dc3a671723a63fd370b017`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 19 Jul 2017 20:39:10 GMT
COPY file:8328e71a6e7f74003ba186b6557bdeff4587b91b09e1617cb5aa65dac4682108 in /gnatsd 
# Wed, 19 Jul 2017 20:39:10 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 19 Jul 2017 20:39:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 19 Jul 2017 20:39:12 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 19 Jul 2017 20:39:12 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:82d4a6042d83a3674b5129c8f65de81b81c1d3b571b8c1e73fb851bd5134d62f`  
		Last Modified: Wed, 19 Jul 2017 20:39:24 GMT  
		Size: 2.1 MB (2125982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece582085605790e485b6fa2ebee1af5249139add60529e28f3e1ce33aacd35b`  
		Last Modified: Wed, 19 Jul 2017 20:39:26 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.2-nanoserver`

```console
$ docker pull nats@sha256:b343214257c4faa34712c513a63ac725dd3faf682a987d2905c56624e85b3f00
```

-	Platforms:
	-	windows; amd64

### `nats:1.0.2-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.9 MB (370865798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa4244bb7a2f23d02c1dba924b5471ab094946e4cace72ba7fe20b06d0d8099`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 19 Jul 2017 20:38:45 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 19 Jul 2017 20:38:47 GMT
RUN cmd /S /C #(nop)  WORKDIR C:\gnatsd
# Wed, 19 Jul 2017 20:38:50 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Wed, 19 Jul 2017 20:38:52 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 19 Jul 2017 20:38:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 19 Jul 2017 20:38:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 19 Jul 2017 20:38:57 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f4fd5574b24fcd855b4e6ffc048f9cd3479d300901f0c4268f9359df32c5fa0d`  
		Last Modified: Wed, 19 Jul 2017 20:39:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c3c1c588aab114a3c045c5b1bdc17a1f71cf8facea5378c352226183d1c98`  
		Last Modified: Wed, 19 Jul 2017 20:39:25 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e08be9dbf1625215a58dbcb0ceec83fe6be373e0b2622d7499c6298f48e8c0`  
		Last Modified: Wed, 19 Jul 2017 20:39:23 GMT  
		Size: 2.1 MB (2131054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab9cd19c967ed530998772255009a8272296c5908d4a76381f89025fb8378cb`  
		Last Modified: Wed, 19 Jul 2017 20:39:22 GMT  
		Size: 1.7 KB (1723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eefc5fb717c5a609cf8a5ca73f5d7b498d4311d2a8881bc2532b018eb64c8df`  
		Last Modified: Wed, 19 Jul 2017 20:39:23 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244f3604678b9c2af4459b9016ff78320de3264f0ada7064ee594479fafc2a02`  
		Last Modified: Wed, 19 Jul 2017 20:39:22 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b9e7a8d07a8b55a3f81e4ee23a8849b78c548819b57dd0b298d345c9154a1c`  
		Last Modified: Wed, 19 Jul 2017 20:39:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:b343214257c4faa34712c513a63ac725dd3faf682a987d2905c56624e85b3f00
```

-	Platforms:
	-	windows; amd64

### `nats:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.9 MB (370865798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa4244bb7a2f23d02c1dba924b5471ab094946e4cace72ba7fe20b06d0d8099`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 19 Jul 2017 20:38:45 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 19 Jul 2017 20:38:47 GMT
RUN cmd /S /C #(nop)  WORKDIR C:\gnatsd
# Wed, 19 Jul 2017 20:38:50 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Wed, 19 Jul 2017 20:38:52 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 19 Jul 2017 20:38:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 19 Jul 2017 20:38:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 19 Jul 2017 20:38:57 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f4fd5574b24fcd855b4e6ffc048f9cd3479d300901f0c4268f9359df32c5fa0d`  
		Last Modified: Wed, 19 Jul 2017 20:39:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c3c1c588aab114a3c045c5b1bdc17a1f71cf8facea5378c352226183d1c98`  
		Last Modified: Wed, 19 Jul 2017 20:39:25 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e08be9dbf1625215a58dbcb0ceec83fe6be373e0b2622d7499c6298f48e8c0`  
		Last Modified: Wed, 19 Jul 2017 20:39:23 GMT  
		Size: 2.1 MB (2131054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab9cd19c967ed530998772255009a8272296c5908d4a76381f89025fb8378cb`  
		Last Modified: Wed, 19 Jul 2017 20:39:22 GMT  
		Size: 1.7 KB (1723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eefc5fb717c5a609cf8a5ca73f5d7b498d4311d2a8881bc2532b018eb64c8df`  
		Last Modified: Wed, 19 Jul 2017 20:39:23 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244f3604678b9c2af4459b9016ff78320de3264f0ada7064ee594479fafc2a02`  
		Last Modified: Wed, 19 Jul 2017 20:39:22 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b9e7a8d07a8b55a3f81e4ee23a8849b78c548819b57dd0b298d345c9154a1c`  
		Last Modified: Wed, 19 Jul 2017 20:39:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.2-windowsservercore`

```console
$ docker pull nats@sha256:cb3f1574db588067ac2dca4e4589ebb8144d69a1182b5dbc7ff8a11cdb66dd45
```

-	Platforms:
	-	windows; amd64

### `nats:1.0.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 GB (5234027261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1edf8f0f5d75aa3e9c8568326c992f915b1faaf7a7caf2fd980b08fdf8df66da`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 19 Jul 2017 20:39:00 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 19 Jul 2017 20:39:03 GMT
RUN cmd /S /C #(nop)  WORKDIR C:\gnatsd
# Wed, 19 Jul 2017 20:39:07 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Wed, 19 Jul 2017 20:39:09 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 19 Jul 2017 20:39:12 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 19 Jul 2017 20:39:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 19 Jul 2017 20:39:18 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:13be22719e88d28dd3625da663acdc075d8a70c0db3a0ddf9f24c470b4dfd928`  
		Last Modified: Wed, 19 Jul 2017 20:39:37 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cd12f5aa304275255e0062d106ddf909223884d17d968894b36f79732fcca6`  
		Last Modified: Wed, 19 Jul 2017 20:39:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c100a732a97d1ab0897a3b0c7171b852e341e35b97abce4f1c810215fb92bd`  
		Last Modified: Wed, 19 Jul 2017 20:39:35 GMT  
		Size: 2.1 MB (2131337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d07a91e40519d611fb4912bca830f88d6e34f6c46e3e5ea3bd2728f5e395198`  
		Last Modified: Wed, 19 Jul 2017 20:39:35 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d318adf4305fe66195eccc3293c631f5d5fc57853119621222c76650c218917b`  
		Last Modified: Wed, 19 Jul 2017 20:39:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f85f90fc191ac2a91e66c5202aba609be49a9cfb1685fe96bd64050f67fd656`  
		Last Modified: Wed, 19 Jul 2017 20:39:34 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1d3bd942519d9d270b3733e810299b6595febe4355639156a66502bb687305`  
		Last Modified: Wed, 19 Jul 2017 20:39:35 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:cb3f1574db588067ac2dca4e4589ebb8144d69a1182b5dbc7ff8a11cdb66dd45
```

-	Platforms:
	-	windows; amd64

### `nats:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 GB (5234027261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1edf8f0f5d75aa3e9c8568326c992f915b1faaf7a7caf2fd980b08fdf8df66da`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 19 Jul 2017 20:39:00 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 19 Jul 2017 20:39:03 GMT
RUN cmd /S /C #(nop)  WORKDIR C:\gnatsd
# Wed, 19 Jul 2017 20:39:07 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Wed, 19 Jul 2017 20:39:09 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 19 Jul 2017 20:39:12 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 19 Jul 2017 20:39:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 19 Jul 2017 20:39:18 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:13be22719e88d28dd3625da663acdc075d8a70c0db3a0ddf9f24c470b4dfd928`  
		Last Modified: Wed, 19 Jul 2017 20:39:37 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cd12f5aa304275255e0062d106ddf909223884d17d968894b36f79732fcca6`  
		Last Modified: Wed, 19 Jul 2017 20:39:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c100a732a97d1ab0897a3b0c7171b852e341e35b97abce4f1c810215fb92bd`  
		Last Modified: Wed, 19 Jul 2017 20:39:35 GMT  
		Size: 2.1 MB (2131337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d07a91e40519d611fb4912bca830f88d6e34f6c46e3e5ea3bd2728f5e395198`  
		Last Modified: Wed, 19 Jul 2017 20:39:35 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d318adf4305fe66195eccc3293c631f5d5fc57853119621222c76650c218917b`  
		Last Modified: Wed, 19 Jul 2017 20:39:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f85f90fc191ac2a91e66c5202aba609be49a9cfb1685fe96bd64050f67fd656`  
		Last Modified: Wed, 19 Jul 2017 20:39:34 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1d3bd942519d9d270b3733e810299b6595febe4355639156a66502bb687305`  
		Last Modified: Wed, 19 Jul 2017 20:39:35 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
