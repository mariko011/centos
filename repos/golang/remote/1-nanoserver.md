## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:540a2bb7501210f4c0b51783fd1dd0352b3162ebe4333b84b165899af9ef0565
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.3 MB (404276286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7658a443a02b29ebaad7b5f6ec96617f55c2106a2adc3950a06878a5bc4a37`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:59:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:59:07 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:59:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 06 Jan 2017 23:07:49 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:07:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:07:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:11:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:11:59 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ac789562e23199c4fd02daaf1e0e05bd944b4822154f4bcab7bc21961666b8f7`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74dd62bd1af37d015b6358ec20be47f9aea0efbb62392a4a8f5d2f340ee894`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77c06ab3dca1d0c2e755c09e7d313987ca57f874a866e75a0aa4500eef5089`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 859.6 KB (859605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7957133f441e177d86c1332eadd9fda131cb3abdc8b151be3b8c5e3be61e0fa6`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b71c2debbbcf4515987204d22adec00914687fc4bafcc34be53d7fe2848bbc1`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a136283b86d79090b52cf211abc288ce90eebb16a6c2f19b3b43151b472dfd3f`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366d653ceeeec5dcb25e831e4b183860b01eb98045cc28abdcd4029a704fb5e1`  
		Last Modified: Fri, 06 Jan 2017 23:25:18 GMT  
		Size: 91.0 MB (90967499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035dd4a10d5c0090b002b02dfffdc63bab5c124cfd57d74ecf98bea54cea1655`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
