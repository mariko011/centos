<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:0.9.6`](#nats096)
-	[`nats:latest`](#natslatest)
-	[`nats:0.9.6-nanoserver`](#nats096-nanoserver)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:0.9.6-windowsservercore`](#nats096-windowsservercore)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:0.9.6`

```console
$ docker pull nats@sha256:47b825feb34e545317c4ad122bd1a752a3172bbbc72104fc7fb5e57cf90f79e4
```

-	Platforms:
	-	linux; amd64

### `nats:0.9.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb97b8262319e1bafedf127f855afca7ff5762df8a112db088bad10ce9eb885d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 16 Dec 2016 18:06:33 GMT
COPY file:aa3f99eb39d2cf69baa0b984e338b8aee964eea9352ac3e353a1dbcef39b903c in /gnatsd 
# Fri, 16 Dec 2016 18:06:33 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 16 Dec 2016 18:06:34 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 16 Dec 2016 18:06:34 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 16 Dec 2016 18:06:34 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:2d3d00b0941fe7de81ad9be397c528c2db9e3567195ca96210b0c9a319a377c0`  
		Last Modified: Fri, 16 Dec 2016 18:06:50 GMT  
		Size: 2.1 MB (2121520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bc6bd33ea7b31fee8ddddace7bafbcfcf6af0f74f80bbf1cc1aabe83789e3a`  
		Last Modified: Fri, 16 Dec 2016 18:06:50 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:47b825feb34e545317c4ad122bd1a752a3172bbbc72104fc7fb5e57cf90f79e4
```

-	Platforms:
	-	linux; amd64

### `nats:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb97b8262319e1bafedf127f855afca7ff5762df8a112db088bad10ce9eb885d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 16 Dec 2016 18:06:33 GMT
COPY file:aa3f99eb39d2cf69baa0b984e338b8aee964eea9352ac3e353a1dbcef39b903c in /gnatsd 
# Fri, 16 Dec 2016 18:06:33 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 16 Dec 2016 18:06:34 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 16 Dec 2016 18:06:34 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 16 Dec 2016 18:06:34 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:2d3d00b0941fe7de81ad9be397c528c2db9e3567195ca96210b0c9a319a377c0`  
		Last Modified: Fri, 16 Dec 2016 18:06:50 GMT  
		Size: 2.1 MB (2121520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bc6bd33ea7b31fee8ddddace7bafbcfcf6af0f74f80bbf1cc1aabe83789e3a`  
		Last Modified: Fri, 16 Dec 2016 18:06:50 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:0.9.6-nanoserver`

```console
$ docker pull nats@sha256:f138484bac20175e858d72297bd7770ccf854ed1ce63c7b7712ff6f850ae58d4
```

-	Platforms:
	-	windows; amd64

### `nats:0.9.6-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336330409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f78287aab99d71801eb9a9f69dfa5d3a65a008c3feeed62976b805c839e53d7`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2017 18:21:04 GMT
ENV NATS_VERSION=v0.9.6
# Tue, 24 Jan 2017 18:21:23 GMT
RUN Invoke-WebRequest -OutFile gnatsd.zip "https://github.com/nats-io/gnatsd/releases/download/$($env:NATS_VERSION)/gnatsd-$($env:NATS_VERSION)-windows-amd64.zip" -UseBasicParsing ;     Expand-Archive gnatsd.zip -DestinationPath C:\ ;     Move-Item "C:/gnatsd-$($env:NATS_VERSION)-windows-amd64" 'c:/gnatsd';     Remove-Item gnatsd.zip
# Tue, 24 Jan 2017 18:21:25 GMT
WORKDIR C:\gnatsd
# Tue, 24 Jan 2017 18:21:28 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Tue, 24 Jan 2017 18:21:30 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Tue, 24 Jan 2017 18:21:32 GMT
ENTRYPOINT ["gnatsd"]
# Tue, 24 Jan 2017 18:21:34 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c1c8fcb0872222262491c485ac45c842817ef006b33a501a171391b9ec29f7`  
		Last Modified: Tue, 24 Jan 2017 18:22:26 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e963464955031fafd91801267489f3c647c167b6d8c0cb5012aac48b35e055`  
		Last Modified: Tue, 24 Jan 2017 18:22:26 GMT  
		Size: 3.0 MB (3014217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec11e3d93ca5203374b58d62f9b5d53dd42e6ebeb3336afdd68a39825b83c318`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb387ea17a06310a6d7374b60d9bd5ecc87526b22d5e9afe527eee51c686561`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175757ad698a2c75ca4e6f6efdf19431aacae90131ace0bf91100f825c54d254`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69638a096e41d1573a35575956896444219511fd8c6a305a8307c72b45860364`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de812b5415a5f34492a1d8f8eb89240b4a75fd32dc8173f9832f5038d7e0509f`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:f138484bac20175e858d72297bd7770ccf854ed1ce63c7b7712ff6f850ae58d4
```

-	Platforms:
	-	windows; amd64

### `nats:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336330409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f78287aab99d71801eb9a9f69dfa5d3a65a008c3feeed62976b805c839e53d7`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2017 18:21:04 GMT
ENV NATS_VERSION=v0.9.6
# Tue, 24 Jan 2017 18:21:23 GMT
RUN Invoke-WebRequest -OutFile gnatsd.zip "https://github.com/nats-io/gnatsd/releases/download/$($env:NATS_VERSION)/gnatsd-$($env:NATS_VERSION)-windows-amd64.zip" -UseBasicParsing ;     Expand-Archive gnatsd.zip -DestinationPath C:\ ;     Move-Item "C:/gnatsd-$($env:NATS_VERSION)-windows-amd64" 'c:/gnatsd';     Remove-Item gnatsd.zip
# Tue, 24 Jan 2017 18:21:25 GMT
WORKDIR C:\gnatsd
# Tue, 24 Jan 2017 18:21:28 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Tue, 24 Jan 2017 18:21:30 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Tue, 24 Jan 2017 18:21:32 GMT
ENTRYPOINT ["gnatsd"]
# Tue, 24 Jan 2017 18:21:34 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c1c8fcb0872222262491c485ac45c842817ef006b33a501a171391b9ec29f7`  
		Last Modified: Tue, 24 Jan 2017 18:22:26 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e963464955031fafd91801267489f3c647c167b6d8c0cb5012aac48b35e055`  
		Last Modified: Tue, 24 Jan 2017 18:22:26 GMT  
		Size: 3.0 MB (3014217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec11e3d93ca5203374b58d62f9b5d53dd42e6ebeb3336afdd68a39825b83c318`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb387ea17a06310a6d7374b60d9bd5ecc87526b22d5e9afe527eee51c686561`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175757ad698a2c75ca4e6f6efdf19431aacae90131ace0bf91100f825c54d254`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69638a096e41d1573a35575956896444219511fd8c6a305a8307c72b45860364`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de812b5415a5f34492a1d8f8eb89240b4a75fd32dc8173f9832f5038d7e0509f`  
		Last Modified: Tue, 24 Jan 2017 18:22:23 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:0.9.6-windowsservercore`

```console
$ docker pull nats@sha256:0030db1150e917a834fcd5e41502f421e5265bff72e9386b7a689efefa6fe48f
```

-	Platforms:
	-	windows; amd64

### `nats:0.9.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4994475153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102a175b7fc47f242a1e58f59adae1f94335a745c517b3c8fd0ffbdf7ab32c01`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2017 18:21:38 GMT
ENV NATS_VERSION=v0.9.6
# Tue, 24 Jan 2017 18:22:03 GMT
RUN Invoke-WebRequest -OutFile gnatsd.zip "https://github.com/nats-io/gnatsd/releases/download/$($env:NATS_VERSION)/gnatsd-$($env:NATS_VERSION)-windows-amd64.zip" -UseBasicParsing ;     Expand-Archive gnatsd.zip -DestinationPath C:\ ;     Move-Item "C:/gnatsd-$($env:NATS_VERSION)-windows-amd64" 'c:/gnatsd';     Remove-Item gnatsd.zip
# Tue, 24 Jan 2017 18:22:06 GMT
WORKDIR C:\gnatsd
# Tue, 24 Jan 2017 18:22:10 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Tue, 24 Jan 2017 18:22:13 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Tue, 24 Jan 2017 18:22:15 GMT
ENTRYPOINT ["gnatsd"]
# Tue, 24 Jan 2017 18:22:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124e0cd6de0415d75811f7e9309af7d669a0efb497bd2f2a93c67e1e17d25465`  
		Last Modified: Tue, 24 Jan 2017 18:22:39 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dde9af9bdc1129d8e7c6f36aeb7d299fb7867d7cc61961df877d641d53e67e2`  
		Last Modified: Tue, 24 Jan 2017 18:22:41 GMT  
		Size: 11.3 MB (11334921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aae0c290d19618a8b25f8a971959764883a3afb4506dcecb4f1c96f221dd14`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713d1b150a61f869a47081a51b5f4344b78bb3a317950d41673b481a64140c6c`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.9 KB (1940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c96e25167240db98092a4c327d68ba1e1f805579b943d4f0da3ec8cf548eb9`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63b6a86a55e9e222b8136793780f95bfb9ca8560e7ece81d7a76bf1a86c2381`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3848e3a59aa845af95ade4b96af0444bd15e51e9570b4eac86923916d8e8242`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:0030db1150e917a834fcd5e41502f421e5265bff72e9386b7a689efefa6fe48f
```

-	Platforms:
	-	windows; amd64

### `nats:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4994475153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102a175b7fc47f242a1e58f59adae1f94335a745c517b3c8fd0ffbdf7ab32c01`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2017 18:21:38 GMT
ENV NATS_VERSION=v0.9.6
# Tue, 24 Jan 2017 18:22:03 GMT
RUN Invoke-WebRequest -OutFile gnatsd.zip "https://github.com/nats-io/gnatsd/releases/download/$($env:NATS_VERSION)/gnatsd-$($env:NATS_VERSION)-windows-amd64.zip" -UseBasicParsing ;     Expand-Archive gnatsd.zip -DestinationPath C:\ ;     Move-Item "C:/gnatsd-$($env:NATS_VERSION)-windows-amd64" 'c:/gnatsd';     Remove-Item gnatsd.zip
# Tue, 24 Jan 2017 18:22:06 GMT
WORKDIR C:\gnatsd
# Tue, 24 Jan 2017 18:22:10 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Tue, 24 Jan 2017 18:22:13 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Tue, 24 Jan 2017 18:22:15 GMT
ENTRYPOINT ["gnatsd"]
# Tue, 24 Jan 2017 18:22:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124e0cd6de0415d75811f7e9309af7d669a0efb497bd2f2a93c67e1e17d25465`  
		Last Modified: Tue, 24 Jan 2017 18:22:39 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dde9af9bdc1129d8e7c6f36aeb7d299fb7867d7cc61961df877d641d53e67e2`  
		Last Modified: Tue, 24 Jan 2017 18:22:41 GMT  
		Size: 11.3 MB (11334921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aae0c290d19618a8b25f8a971959764883a3afb4506dcecb4f1c96f221dd14`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713d1b150a61f869a47081a51b5f4344b78bb3a317950d41673b481a64140c6c`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.9 KB (1940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c96e25167240db98092a4c327d68ba1e1f805579b943d4f0da3ec8cf548eb9`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63b6a86a55e9e222b8136793780f95bfb9ca8560e7ece81d7a76bf1a86c2381`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3848e3a59aa845af95ade4b96af0444bd15e51e9570b4eac86923916d8e8242`  
		Last Modified: Tue, 24 Jan 2017 18:22:36 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
