<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:1.0.2`](#nats102)
-	[`nats:1.0.2-nanoserver`](#nats102-nanoserver)
-	[`nats:1.0.2-windowsservercore`](#nats102-windowsservercore)
-	[`nats:latest`](#natslatest)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:1.0.2`

```console
$ docker pull nats@sha256:4b0edace2daf8dfd6d7b93addff9eabd4a89a398c51a9930263fb9e0ad938d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats:1.0.2` - linux; amd64

```console
$ docker pull nats@sha256:62eeee7a6b391d60ed4c8a808733867b6c7024a4eedf01cf3688ed4f30e2609d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2126459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5d0988d1236bfeb5680ea6c3bc2b5c61b8fc94539dd228b3dc9ce867c4f730`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 13 Sep 2017 10:22:17 GMT
COPY file:8328e71a6e7f74003ba186b6557bdeff4587b91b09e1617cb5aa65dac4682108 in /gnatsd 
# Wed, 13 Sep 2017 10:22:17 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 13 Sep 2017 10:22:17 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 13 Sep 2017 10:22:17 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 13 Sep 2017 10:22:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:700f0111179bbb06d1b4437274a22231315203a64b216aee19bbc5323f50f730`  
		Last Modified: Wed, 13 Sep 2017 10:22:24 GMT  
		Size: 2.1 MB (2125981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f18ebfeb0687d398f682bd15c5e8abfa2c27fafcf9d52c2bdbea1a36a61f05e`  
		Last Modified: Wed, 13 Sep 2017 10:22:23 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.2-nanoserver`

```console
$ docker pull nats@sha256:4737aeeb74d35030550bef5676ccb2b527601470d34b8ba484d0411e2420c652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `nats:1.0.2-nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:a7e3f314b976cdf26de5f8ab4a3cdd9fe4b0e91e48a463cb8bfce95f354c78cf
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395279958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1efbf5d3022fe7336283f35e3771dcaad4fa6fc43c59f85c3dd1ba6b290c28e`
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
# Thu, 14 Sep 2017 23:53:35 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Thu, 14 Sep 2017 23:53:37 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Thu, 14 Sep 2017 23:53:39 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Thu, 14 Sep 2017 23:53:41 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Thu, 14 Sep 2017 23:53:42 GMT
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
	-	`sha256:7dcfccd3b8edea836dfad425edfb391292302450bad111767ebb7f8ac18a9308`  
		Last Modified: Thu, 14 Sep 2017 23:54:31 GMT  
		Size: 2.1 MB (2131058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9cdcbe027d88a356a1308357306de55462e4a40a681a9ff41773c53635284a`  
		Last Modified: Thu, 14 Sep 2017 23:54:30 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc4a7027f096d170c1766831e47fb9a2d22878cce26f461c29143a339c4e465`  
		Last Modified: Thu, 14 Sep 2017 23:54:29 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7450eb4e63847244c5d3db25c7389584dd8094f04b752faac0fc934be6e3ee08`  
		Last Modified: Thu, 14 Sep 2017 23:54:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6ddc1450e1bfdb83fe5ce492263f2262b07e4f8053a82e030969ab3e5b4b3`  
		Last Modified: Thu, 14 Sep 2017 23:54:29 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.2-windowsservercore`

```console
$ docker pull nats@sha256:1a274384d3ac58a09dc33f6c57f575f038bb29fbb3e75c991ee769e4e6e52ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `nats:1.0.2-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:0998c79ee7da7c1d9d5652885c31502569fa5aec888da6f85338d102a05bcc6e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5337947979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c03298d85444abc37b9e473602b90e5f1896c41ff3e1c70fdb2576f0056519`
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
# Thu, 14 Sep 2017 23:53:57 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Thu, 14 Sep 2017 23:54:00 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Thu, 14 Sep 2017 23:54:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Thu, 14 Sep 2017 23:54:06 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Thu, 14 Sep 2017 23:54:18 GMT
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
	-	`sha256:90c8a4747ce33d14d4eb29536a7e958791272c8699b1860f6bcb1df04f1bd990`  
		Last Modified: Thu, 14 Sep 2017 23:54:44 GMT  
		Size: 2.1 MB (2131352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdd639821b1f6170e8ff22a864bf8ca4c2bc3e0cc763192953e7b634228f54e`  
		Last Modified: Thu, 14 Sep 2017 23:54:45 GMT  
		Size: 1.9 KB (1918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f05c4a2d78402084308d6afe892226aaa60f087e25c841a6423edc3c7439edb`  
		Last Modified: Thu, 14 Sep 2017 23:54:44 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ddd9553a408ffdd6e6060077a710ffa42e666079131188fc0a63bbf2111dcc`  
		Last Modified: Thu, 14 Sep 2017 23:54:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762bd8e76394f14aee89136bdc140d9a71962047eba88ece2e8c7dc362dff853`  
		Last Modified: Thu, 14 Sep 2017 23:54:43 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:4b0edace2daf8dfd6d7b93addff9eabd4a89a398c51a9930263fb9e0ad938d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:62eeee7a6b391d60ed4c8a808733867b6c7024a4eedf01cf3688ed4f30e2609d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2126459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5d0988d1236bfeb5680ea6c3bc2b5c61b8fc94539dd228b3dc9ce867c4f730`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 13 Sep 2017 10:22:17 GMT
COPY file:8328e71a6e7f74003ba186b6557bdeff4587b91b09e1617cb5aa65dac4682108 in /gnatsd 
# Wed, 13 Sep 2017 10:22:17 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 13 Sep 2017 10:22:17 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 13 Sep 2017 10:22:17 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 13 Sep 2017 10:22:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:700f0111179bbb06d1b4437274a22231315203a64b216aee19bbc5323f50f730`  
		Last Modified: Wed, 13 Sep 2017 10:22:24 GMT  
		Size: 2.1 MB (2125981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f18ebfeb0687d398f682bd15c5e8abfa2c27fafcf9d52c2bdbea1a36a61f05e`  
		Last Modified: Wed, 13 Sep 2017 10:22:23 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:4737aeeb74d35030550bef5676ccb2b527601470d34b8ba484d0411e2420c652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `nats:nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:a7e3f314b976cdf26de5f8ab4a3cdd9fe4b0e91e48a463cb8bfce95f354c78cf
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395279958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1efbf5d3022fe7336283f35e3771dcaad4fa6fc43c59f85c3dd1ba6b290c28e`
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
# Thu, 14 Sep 2017 23:53:35 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Thu, 14 Sep 2017 23:53:37 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Thu, 14 Sep 2017 23:53:39 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Thu, 14 Sep 2017 23:53:41 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Thu, 14 Sep 2017 23:53:42 GMT
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
	-	`sha256:7dcfccd3b8edea836dfad425edfb391292302450bad111767ebb7f8ac18a9308`  
		Last Modified: Thu, 14 Sep 2017 23:54:31 GMT  
		Size: 2.1 MB (2131058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9cdcbe027d88a356a1308357306de55462e4a40a681a9ff41773c53635284a`  
		Last Modified: Thu, 14 Sep 2017 23:54:30 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc4a7027f096d170c1766831e47fb9a2d22878cce26f461c29143a339c4e465`  
		Last Modified: Thu, 14 Sep 2017 23:54:29 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7450eb4e63847244c5d3db25c7389584dd8094f04b752faac0fc934be6e3ee08`  
		Last Modified: Thu, 14 Sep 2017 23:54:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6ddc1450e1bfdb83fe5ce492263f2262b07e4f8053a82e030969ab3e5b4b3`  
		Last Modified: Thu, 14 Sep 2017 23:54:29 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:1a274384d3ac58a09dc33f6c57f575f038bb29fbb3e75c991ee769e4e6e52ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `nats:windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:0998c79ee7da7c1d9d5652885c31502569fa5aec888da6f85338d102a05bcc6e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5337947979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c03298d85444abc37b9e473602b90e5f1896c41ff3e1c70fdb2576f0056519`
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
# Thu, 14 Sep 2017 23:53:57 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Thu, 14 Sep 2017 23:54:00 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Thu, 14 Sep 2017 23:54:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Thu, 14 Sep 2017 23:54:06 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Thu, 14 Sep 2017 23:54:18 GMT
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
	-	`sha256:90c8a4747ce33d14d4eb29536a7e958791272c8699b1860f6bcb1df04f1bd990`  
		Last Modified: Thu, 14 Sep 2017 23:54:44 GMT  
		Size: 2.1 MB (2131352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdd639821b1f6170e8ff22a864bf8ca4c2bc3e0cc763192953e7b634228f54e`  
		Last Modified: Thu, 14 Sep 2017 23:54:45 GMT  
		Size: 1.9 KB (1918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f05c4a2d78402084308d6afe892226aaa60f087e25c841a6423edc3c7439edb`  
		Last Modified: Thu, 14 Sep 2017 23:54:44 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ddd9553a408ffdd6e6060077a710ffa42e666079131188fc0a63bbf2111dcc`  
		Last Modified: Thu, 14 Sep 2017 23:54:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762bd8e76394f14aee89136bdc140d9a71962047eba88ece2e8c7dc362dff853`  
		Last Modified: Thu, 14 Sep 2017 23:54:43 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
