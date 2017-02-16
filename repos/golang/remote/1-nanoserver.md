## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:757cfc961a44d657d676fdf1d18da5d22edc3a759bca01367f92f700103d195a
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.5 MB (427496435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8f2f11bd5a9ca3e96f3b8125f1daf87cdd5dd1b4b520cb6446604f37bce066`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 16 Feb 2017 23:25:22 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:25:24 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.windows-amd64.zip
# Thu, 16 Feb 2017 23:25:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=cb27fe210f3a9d10329d48514895d2a1e3651125a7c3c758f0358a5bfc0e3060
# Thu, 16 Feb 2017 23:29:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 16 Feb 2017 23:29:04 GMT
WORKDIR C:\gopath
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
	-	`sha256:110ea2ec6249baec774cf0bb6d4c46f383320ec4ad5e0a72597d9c1ef1834b32`  
		Last Modified: Fri, 13 Jan 2017 18:00:04 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15068a1a55e80e8468c9cd1bfd0c5b53faf86bd29b5b2a6692b41986129b29a8`  
		Last Modified: Fri, 13 Jan 2017 18:00:08 GMT  
		Size: 865.5 KB (865469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4abcd29061afe3cdff8a549aefe9901167791dab4bd3462443d0cda3bf85e`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7d93d45cc155ddd99eba58a04933f98ab5a86a3ecec43b0e7f635e6733cca`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08233125ea0ca9ce2051b54050fd01d09e42343549d0389230cbca9d5b55a8`  
		Last Modified: Thu, 16 Feb 2017 23:30:18 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c242161608ad4e6f56aa863c0836a19067bf59530267938f34d22a2f38391b`  
		Last Modified: Thu, 16 Feb 2017 23:30:36 GMT  
		Size: 93.3 MB (93316525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee48bf12a369c06a063a88d8d35cc83533bde5052ebcf7ed2842fa6d4a446ed`  
		Last Modified: Thu, 16 Feb 2017 23:30:17 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
