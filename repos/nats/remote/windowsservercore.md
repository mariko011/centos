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
