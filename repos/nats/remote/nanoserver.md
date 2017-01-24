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
