## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:940b613ce0e97829a3f925c7eed9a38f30871a7f46d719787aac0f0ed33a5759
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390170131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f458c944178ecfaa2d48812e730e6825a3c6838ba21f276ee815fd3e4a457fb2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Oct 2016 20:47:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Oct 2016 20:48:00 GMT
ENV GOPATH=C:\gopath
# Tue, 18 Oct 2016 20:48:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 18 Oct 2016 20:57:11 GMT
ENV GOLANG_VERSION=1.7.1
# Tue, 18 Oct 2016 20:57:13 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Tue, 18 Oct 2016 20:57:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Tue, 18 Oct 2016 21:01:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 18 Oct 2016 21:01:31 GMT
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
	-	`sha256:0ba87c5919873c1ca7ace19f962bc46a14085c5d384cc710342a286698c3c747`  
		Last Modified: Tue, 18 Oct 2016 21:05:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b991c3c0d70815c62adbb5f5fac061263f628ff984aba0ace691dcdcaabe8`  
		Last Modified: Tue, 18 Oct 2016 21:05:41 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e207feccf1da194877f3290d9dee14d21d7a41b9b24fd39a7687ffa5afb777b`  
		Last Modified: Tue, 18 Oct 2016 21:05:41 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965195db54fdc98e9fd8bc812b4579fdf5dcd94516484389f1973f24d2ed9203`  
		Last Modified: Tue, 18 Oct 2016 21:06:11 GMT  
		Size: 90.3 MB (90264108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1dcde5831159a9c1f4a6d81d880e24ca5c0cff17e40086d86a35faf57b6fe9`  
		Last Modified: Tue, 18 Oct 2016 21:05:41 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
