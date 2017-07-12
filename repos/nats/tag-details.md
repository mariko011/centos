<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:1.0.0`](#nats100)
-	[`nats:latest`](#natslatest)
-	[`nats:1.0.0-nanoserver`](#nats100-nanoserver)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:1.0.0-windowsservercore`](#nats100-windowsservercore)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:1.0.0`

```console
$ docker pull nats@sha256:35a8c43414d7fd8708f91189c36986e7a0ff0ef3c9bdd98b8df3809e2a2dc306
```

-	Platforms:
	-	linux; amd64

### `nats:1.0.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2126270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38392fde50d1238e3dd90ed011b295c385808ecfc6aff376763ed7a2056ba3a0`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 12 Jul 2017 18:15:40 GMT
COPY file:c5686fac7f4ad91ec55c739846b96452c076bee875ca3bb86fe55af8b4816765 in /gnatsd 
# Wed, 12 Jul 2017 18:15:40 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 12 Jul 2017 18:15:41 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 12 Jul 2017 18:15:41 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 12 Jul 2017 18:15:42 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:56c2b61b95baf93d3770b1b159d8f0f358312d8cbece76db755852a0a51adc9d`  
		Last Modified: Wed, 12 Jul 2017 18:15:52 GMT  
		Size: 2.1 MB (2125793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7062007f05903e2cf2b07e6e6ae5bec252ad556b023103ba018fb52bb2d03db5`  
		Last Modified: Wed, 12 Jul 2017 18:15:52 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:35a8c43414d7fd8708f91189c36986e7a0ff0ef3c9bdd98b8df3809e2a2dc306
```

-	Platforms:
	-	linux; amd64

### `nats:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2126270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38392fde50d1238e3dd90ed011b295c385808ecfc6aff376763ed7a2056ba3a0`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 12 Jul 2017 18:15:40 GMT
COPY file:c5686fac7f4ad91ec55c739846b96452c076bee875ca3bb86fe55af8b4816765 in /gnatsd 
# Wed, 12 Jul 2017 18:15:40 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 12 Jul 2017 18:15:41 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 12 Jul 2017 18:15:41 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 12 Jul 2017 18:15:42 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:56c2b61b95baf93d3770b1b159d8f0f358312d8cbece76db755852a0a51adc9d`  
		Last Modified: Wed, 12 Jul 2017 18:15:52 GMT  
		Size: 2.1 MB (2125793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7062007f05903e2cf2b07e6e6ae5bec252ad556b023103ba018fb52bb2d03db5`  
		Last Modified: Wed, 12 Jul 2017 18:15:52 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.0-nanoserver`

```console
$ docker pull nats@sha256:a41a406be1d24833447caf706a3fc1ea9efae963154065c147b3c7a64c83ea9c
```

-	Platforms:
	-	windows; amd64

### `nats:1.0.0-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.8 MB (371753402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23f257a1b1d6b6dfdbf8b91ed2552709e22044d19bc9a8f863ba914eaf57dc9`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:22:08 GMT
ENV NATS_VERSION=v1.0.0
# Wed, 12 Jul 2017 18:22:27 GMT
RUN Invoke-WebRequest -OutFile gnatsd.zip "https://github.com/nats-io/gnatsd/releases/download/$($env:NATS_VERSION)/gnatsd-$($env:NATS_VERSION)-windows-amd64.zip" -UseBasicParsing ;     Expand-Archive gnatsd.zip -DestinationPath C:\ ;     Move-Item "C:/gnatsd-$($env:NATS_VERSION)-windows-amd64" 'c:/gnatsd';     Remove-Item gnatsd.zip
# Wed, 12 Jul 2017 18:22:29 GMT
WORKDIR C:\gnatsd
# Wed, 12 Jul 2017 18:22:32 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 12 Jul 2017 18:22:34 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 12 Jul 2017 18:22:36 GMT
ENTRYPOINT ["gnatsd"]
# Wed, 12 Jul 2017 18:22:38 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b292fea1ffba62db5e3476a2006b1c954c2152d66860b6b4da1ab4c4a6ce713f`  
		Last Modified: Wed, 12 Jul 2017 18:23:31 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1d76d0e36c57cffa79534f27f416f6e6df78bd5e91611f14db49a67422bfa6`  
		Last Modified: Wed, 12 Jul 2017 18:23:31 GMT  
		Size: 3.0 MB (3017643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed743a36ffb6c576310af25a32fe705badd1de465bfea12d62b9df07e4a47295`  
		Last Modified: Wed, 12 Jul 2017 18:23:29 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c79b4150aa9cfe22f5b3daf01c53b5dbf19e07f0d483152bf762f344f84b9a8`  
		Last Modified: Wed, 12 Jul 2017 18:23:28 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacdc36a9584bd1f4c8dab2f7ce691179494768ffd022ccc161248b1567707ad`  
		Last Modified: Wed, 12 Jul 2017 18:23:28 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d6f70defe410bac231f72d225bec05803336cd1aefd2f394e66afe57360c3d`  
		Last Modified: Wed, 12 Jul 2017 18:23:28 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5630869082075ca57a50085e6071a7461076364c329963176f3015355e378fa`  
		Last Modified: Wed, 12 Jul 2017 18:23:28 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:a41a406be1d24833447caf706a3fc1ea9efae963154065c147b3c7a64c83ea9c
```

-	Platforms:
	-	windows; amd64

### `nats:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.8 MB (371753402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23f257a1b1d6b6dfdbf8b91ed2552709e22044d19bc9a8f863ba914eaf57dc9`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:22:08 GMT
ENV NATS_VERSION=v1.0.0
# Wed, 12 Jul 2017 18:22:27 GMT
RUN Invoke-WebRequest -OutFile gnatsd.zip "https://github.com/nats-io/gnatsd/releases/download/$($env:NATS_VERSION)/gnatsd-$($env:NATS_VERSION)-windows-amd64.zip" -UseBasicParsing ;     Expand-Archive gnatsd.zip -DestinationPath C:\ ;     Move-Item "C:/gnatsd-$($env:NATS_VERSION)-windows-amd64" 'c:/gnatsd';     Remove-Item gnatsd.zip
# Wed, 12 Jul 2017 18:22:29 GMT
WORKDIR C:\gnatsd
# Wed, 12 Jul 2017 18:22:32 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 12 Jul 2017 18:22:34 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 12 Jul 2017 18:22:36 GMT
ENTRYPOINT ["gnatsd"]
# Wed, 12 Jul 2017 18:22:38 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b292fea1ffba62db5e3476a2006b1c954c2152d66860b6b4da1ab4c4a6ce713f`  
		Last Modified: Wed, 12 Jul 2017 18:23:31 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1d76d0e36c57cffa79534f27f416f6e6df78bd5e91611f14db49a67422bfa6`  
		Last Modified: Wed, 12 Jul 2017 18:23:31 GMT  
		Size: 3.0 MB (3017643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed743a36ffb6c576310af25a32fe705badd1de465bfea12d62b9df07e4a47295`  
		Last Modified: Wed, 12 Jul 2017 18:23:29 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c79b4150aa9cfe22f5b3daf01c53b5dbf19e07f0d483152bf762f344f84b9a8`  
		Last Modified: Wed, 12 Jul 2017 18:23:28 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacdc36a9584bd1f4c8dab2f7ce691179494768ffd022ccc161248b1567707ad`  
		Last Modified: Wed, 12 Jul 2017 18:23:28 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d6f70defe410bac231f72d225bec05803336cd1aefd2f394e66afe57360c3d`  
		Last Modified: Wed, 12 Jul 2017 18:23:28 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5630869082075ca57a50085e6071a7461076364c329963176f3015355e378fa`  
		Last Modified: Wed, 12 Jul 2017 18:23:28 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.0-windowsservercore`

```console
$ docker pull nats@sha256:3cba47f2a863cfb860bbd39d3133a035b03babfc8e8c55ff4936466ba7c375e6
```

-	Platforms:
	-	windows; amd64

### `nats:1.0.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 GB (5239004715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3348fac2c9db4a86a813a04142654f03382d0fec593c3b2f9f13d6268f22b2b`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:22:42 GMT
ENV NATS_VERSION=v1.0.0
# Wed, 12 Jul 2017 18:23:09 GMT
RUN Invoke-WebRequest -OutFile gnatsd.zip "https://github.com/nats-io/gnatsd/releases/download/$($env:NATS_VERSION)/gnatsd-$($env:NATS_VERSION)-windows-amd64.zip" -UseBasicParsing ;     Expand-Archive gnatsd.zip -DestinationPath C:\ ;     Move-Item "C:/gnatsd-$($env:NATS_VERSION)-windows-amd64" 'c:/gnatsd';     Remove-Item gnatsd.zip
# Wed, 12 Jul 2017 18:23:11 GMT
WORKDIR C:\gnatsd
# Wed, 12 Jul 2017 18:23:15 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 12 Jul 2017 18:23:17 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 12 Jul 2017 18:23:20 GMT
ENTRYPOINT ["gnatsd"]
# Wed, 12 Jul 2017 18:23:22 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b729fe4eeffc25836f04de4665eb6887c27852767962707cf4fd3c9bfc555db8`  
		Last Modified: Wed, 12 Jul 2017 18:23:45 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e60e431e7023da36a64f81879c7f4f6fa69bb892a88c87dcc25770cabbc800`  
		Last Modified: Wed, 12 Jul 2017 18:23:47 GMT  
		Size: 7.1 MB (7107528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b40917846ce1c19e71c26e1810968c0c43897bdc3e50c7cb29b7c2c92a91f`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a86e2df654d71a2d44a12f6df3e7dc501665d7908f867eec6fcc13913be60c`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 2.0 KB (1956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8626eae743ee49bec0540c7ca081542bae167c9fa854d28deaa891dab0207216`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d3fb462b21c3acbfa092412472fb6f5e09ded9378fba42b86e2c210a27819`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4664dd3c3e8f0a578c8db86d08f838a3e6f067c82cad5ebde785689fadcf7bb4`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:3cba47f2a863cfb860bbd39d3133a035b03babfc8e8c55ff4936466ba7c375e6
```

-	Platforms:
	-	windows; amd64

### `nats:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 GB (5239004715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3348fac2c9db4a86a813a04142654f03382d0fec593c3b2f9f13d6268f22b2b`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:22:42 GMT
ENV NATS_VERSION=v1.0.0
# Wed, 12 Jul 2017 18:23:09 GMT
RUN Invoke-WebRequest -OutFile gnatsd.zip "https://github.com/nats-io/gnatsd/releases/download/$($env:NATS_VERSION)/gnatsd-$($env:NATS_VERSION)-windows-amd64.zip" -UseBasicParsing ;     Expand-Archive gnatsd.zip -DestinationPath C:\ ;     Move-Item "C:/gnatsd-$($env:NATS_VERSION)-windows-amd64" 'c:/gnatsd';     Remove-Item gnatsd.zip
# Wed, 12 Jul 2017 18:23:11 GMT
WORKDIR C:\gnatsd
# Wed, 12 Jul 2017 18:23:15 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 12 Jul 2017 18:23:17 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 12 Jul 2017 18:23:20 GMT
ENTRYPOINT ["gnatsd"]
# Wed, 12 Jul 2017 18:23:22 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b729fe4eeffc25836f04de4665eb6887c27852767962707cf4fd3c9bfc555db8`  
		Last Modified: Wed, 12 Jul 2017 18:23:45 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e60e431e7023da36a64f81879c7f4f6fa69bb892a88c87dcc25770cabbc800`  
		Last Modified: Wed, 12 Jul 2017 18:23:47 GMT  
		Size: 7.1 MB (7107528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b40917846ce1c19e71c26e1810968c0c43897bdc3e50c7cb29b7c2c92a91f`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a86e2df654d71a2d44a12f6df3e7dc501665d7908f867eec6fcc13913be60c`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 2.0 KB (1956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8626eae743ee49bec0540c7ca081542bae167c9fa854d28deaa891dab0207216`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d3fb462b21c3acbfa092412472fb6f5e09ded9378fba42b86e2c210a27819`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4664dd3c3e8f0a578c8db86d08f838a3e6f067c82cad5ebde785689fadcf7bb4`  
		Last Modified: Wed, 12 Jul 2017 18:23:42 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
