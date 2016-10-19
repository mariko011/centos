## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:6a0a6a5f9b7966c8e47bd929fe7263a222c3c298e2d94fb6ef7402f2e160cd7e
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b1bd5027ee5c46c1b7ec7a2e5ff391ff8b65ee7ec706cdf50a56cef0828117`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Oct 2016 20:47:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Oct 2016 20:48:00 GMT
ENV GOPATH=C:\gopath
# Tue, 18 Oct 2016 20:48:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 19 Oct 2016 22:00:57 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 22:00:59 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Wed, 19 Oct 2016 22:01:01 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Wed, 19 Oct 2016 22:05:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 19 Oct 2016 22:05:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:94b4ce7ac4c7c7d4ed75ac2bd9359a87204ad2d5a909759d8e77953874d8e7c2`  
		Size: 56.4 MB (56434068 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:12ba288c0d1d424b4832b58c8d542b2b1cc0c8ed873e0f4805a83f705f351eb7`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aabf8dca125e29a1422adc206ada519107e390cdc61e481410b7fe3f75538b`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3844df32288b9b5de39acf93cc8fd2e0d5662b9b8cefc58c9d5382fc2b6d16d0`  
		Last Modified: Tue, 18 Oct 2016 21:03:46 GMT  
		Size: 819.6 KB (819629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5158e3477b73253cb99d39d049a107b7afa8ddd39f3cc59a28ccbb12d5f477d4`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5e2bb6eccbca69bea5a98ad6568405b210c37cebdd78f5fdb66cfaeea9bb54`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd062b023f999eca0b5d53eea246a998768a2b3419652b492f11a860cb835e3`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03042fad0011efd612ff284853805f358d60146c1c42cb824c5f2d27a5d843e8`  
		Last Modified: Wed, 19 Oct 2016 22:06:23 GMT  
		Size: 90.3 MB (90267137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6024ecc84e3f3810e40761f8eac8e8db0c60b98d1a26bf95f992068ac24ca1`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
