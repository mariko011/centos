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
$ docker pull nats@sha256:db4c75befa5d163cd6e018c72b517c35f194c0637da42d01f90d0eebb893d130
```

-	Platforms:
	-	windows; amd64

### `nats:1.0.2-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.0 MB (384985767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b583ba20de70b76b4555a62c7e0e1394cd5ed9caaefabcd6823827f40605693`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 19:02:54 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Fri, 28 Jul 2017 19:02:56 GMT
RUN cmd /S /C #(nop)  WORKDIR C:\gnatsd
# Fri, 28 Jul 2017 19:02:59 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Fri, 28 Jul 2017 19:03:02 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 28 Jul 2017 19:03:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 28 Jul 2017 19:03:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 28 Jul 2017 19:03:07 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7c016c2c386086fe77c5fe384fc8adab744f2d79b553c8da4344de8225f7ef4`  
		Last Modified: Fri, 28 Jul 2017 19:03:40 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda59bf0dd2dd1bf2e009107f63faba8318ddee15cfa88194c4f81fb392eda64`  
		Last Modified: Fri, 28 Jul 2017 19:03:39 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da327657a43a62bc739836e43f9d3518b914a845de8e235a07f9aa9a5861545`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 2.1 MB (2131036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692427057b6f5b7528eaced3c13823156bed9c630ef5925724e6ac6a323d8af`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043feca9fb5084dd9e1889348cdfed41751a43dc2a7197777f1f1b14e1da4ea4`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3fd2dfcbf5ca1bb2a4676e62cf44804ff82a78fb344a9781bfa98ab448ae7c`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dfd77cf608f29353b368a87158aefb30ed05b042198d5b60a5e2bb49d6c6c4`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:db4c75befa5d163cd6e018c72b517c35f194c0637da42d01f90d0eebb893d130
```

-	Platforms:
	-	windows; amd64

### `nats:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.0 MB (384985767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b583ba20de70b76b4555a62c7e0e1394cd5ed9caaefabcd6823827f40605693`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 19:02:54 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Fri, 28 Jul 2017 19:02:56 GMT
RUN cmd /S /C #(nop)  WORKDIR C:\gnatsd
# Fri, 28 Jul 2017 19:02:59 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Fri, 28 Jul 2017 19:03:02 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 28 Jul 2017 19:03:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 28 Jul 2017 19:03:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 28 Jul 2017 19:03:07 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7c016c2c386086fe77c5fe384fc8adab744f2d79b553c8da4344de8225f7ef4`  
		Last Modified: Fri, 28 Jul 2017 19:03:40 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda59bf0dd2dd1bf2e009107f63faba8318ddee15cfa88194c4f81fb392eda64`  
		Last Modified: Fri, 28 Jul 2017 19:03:39 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da327657a43a62bc739836e43f9d3518b914a845de8e235a07f9aa9a5861545`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 2.1 MB (2131036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692427057b6f5b7528eaced3c13823156bed9c630ef5925724e6ac6a323d8af`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043feca9fb5084dd9e1889348cdfed41751a43dc2a7197777f1f1b14e1da4ea4`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3fd2dfcbf5ca1bb2a4676e62cf44804ff82a78fb344a9781bfa98ab448ae7c`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dfd77cf608f29353b368a87158aefb30ed05b042198d5b60a5e2bb49d6c6c4`  
		Last Modified: Fri, 28 Jul 2017 19:03:36 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.2-windowsservercore`

```console
$ docker pull nats@sha256:9c29094350069b59bc8157531857e3c317e01362444898489a28bbf48fb85b40
```

-	Platforms:
	-	windows; amd64

### `nats:1.0.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5297468880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea47b97a0d404dbc843816b5a414423b6aa65ed0b3ad70c76b394a5a01a378c`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 19:03:11 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Fri, 28 Jul 2017 19:03:14 GMT
RUN cmd /S /C #(nop)  WORKDIR C:\gnatsd
# Fri, 28 Jul 2017 19:03:18 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Fri, 28 Jul 2017 19:03:22 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 28 Jul 2017 19:03:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 28 Jul 2017 19:03:29 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 28 Jul 2017 19:03:31 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:630fe03b69d15fd13cf108836017751399a96df758e8b48497c326928057a51a`  
		Last Modified: Fri, 28 Jul 2017 19:03:52 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03fd591bd36dfac16e98010673dd6f458f2a3ace1bbb53df1be8f094c90faf`  
		Last Modified: Fri, 28 Jul 2017 19:03:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b0756ccd0d0af2d1d7279a3f30cd1378610890806fb8935e3646cd22b02372`  
		Last Modified: Fri, 28 Jul 2017 19:03:50 GMT  
		Size: 2.1 MB (2131344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c639f7bf0c3cdc4200ad0a5517800f777598af16cb636cfb7366a534c8dcca1d`  
		Last Modified: Fri, 28 Jul 2017 19:03:51 GMT  
		Size: 1.9 KB (1916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c54ca2189e88f65349e45443215f6ff2f39682533ae224a4e839d827c119f1`  
		Last Modified: Fri, 28 Jul 2017 19:03:49 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff051ada43c2cc444aceba5aec84d97955fdbf0e16a9661a121ffe322f9ee6bc`  
		Last Modified: Fri, 28 Jul 2017 19:03:49 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ae461fa3994a4f0ecb2dde6d4e04d9690b361a2f0c07f75f7812bae0e22ea7`  
		Last Modified: Fri, 28 Jul 2017 19:03:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:9c29094350069b59bc8157531857e3c317e01362444898489a28bbf48fb85b40
```

-	Platforms:
	-	windows; amd64

### `nats:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5297468880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea47b97a0d404dbc843816b5a414423b6aa65ed0b3ad70c76b394a5a01a378c`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 19:03:11 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Fri, 28 Jul 2017 19:03:14 GMT
RUN cmd /S /C #(nop)  WORKDIR C:\gnatsd
# Fri, 28 Jul 2017 19:03:18 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Fri, 28 Jul 2017 19:03:22 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 28 Jul 2017 19:03:26 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 28 Jul 2017 19:03:29 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 28 Jul 2017 19:03:31 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:630fe03b69d15fd13cf108836017751399a96df758e8b48497c326928057a51a`  
		Last Modified: Fri, 28 Jul 2017 19:03:52 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03fd591bd36dfac16e98010673dd6f458f2a3ace1bbb53df1be8f094c90faf`  
		Last Modified: Fri, 28 Jul 2017 19:03:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b0756ccd0d0af2d1d7279a3f30cd1378610890806fb8935e3646cd22b02372`  
		Last Modified: Fri, 28 Jul 2017 19:03:50 GMT  
		Size: 2.1 MB (2131344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c639f7bf0c3cdc4200ad0a5517800f777598af16cb636cfb7366a534c8dcca1d`  
		Last Modified: Fri, 28 Jul 2017 19:03:51 GMT  
		Size: 1.9 KB (1916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c54ca2189e88f65349e45443215f6ff2f39682533ae224a4e839d827c119f1`  
		Last Modified: Fri, 28 Jul 2017 19:03:49 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff051ada43c2cc444aceba5aec84d97955fdbf0e16a9661a121ffe322f9ee6bc`  
		Last Modified: Fri, 28 Jul 2017 19:03:49 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ae461fa3994a4f0ecb2dde6d4e04d9690b361a2f0c07f75f7812bae0e22ea7`  
		Last Modified: Fri, 28 Jul 2017 19:03:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
