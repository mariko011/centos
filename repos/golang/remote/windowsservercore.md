## `golang:windowsservercore`

```console
$ docker pull golang@sha256:36f71634062e44b7034338314faf43b6fc0293fd48136d96b641b75e5519f8b3
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5258495807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736fb0d365660541113213bcbe98898ca426e854ed5c068621c2bdb40d8afca8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:50:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:50:15 GMT
ENV GIT_VERSION=2.11.0
# Fri, 06 Jan 2017 22:50:18 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Fri, 06 Jan 2017 22:50:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Fri, 06 Jan 2017 22:50:23 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Fri, 06 Jan 2017 22:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:54:36 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:54:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 06 Jan 2017 23:03:23 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:03:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:03:29 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:07:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:07:46 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1e55da04f8d18e53a97b6740d251cd55e834f3cfcf0ddf6a52819509a2e9e54e`  
		Last Modified: Fri, 06 Jan 2017 23:21:55 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f737aa291d8b7f61a89882cd7fd42a137f0fd9f6e43bdca88858f44886159`  
		Last Modified: Fri, 06 Jan 2017 23:21:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c611e733a6ea657f97c17b353e929137bd76ced1a47fb4a4af3d3a7709427da3`  
		Last Modified: Fri, 06 Jan 2017 23:21:48 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321419f7baa4db57a8c0e0348ee7662427847a8d59450a2771e07dfbc46d38e`  
		Last Modified: Fri, 06 Jan 2017 23:21:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7999aef6be8487578b8ff60797e1dfefdcb687564fa303a1d85d3ab2d39c76`  
		Last Modified: Fri, 06 Jan 2017 23:21:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9eea1e91d319eeb3c3c55ab1c9b052e65f157fa2692ff17fb1feffc2e99146`  
		Last Modified: Fri, 06 Jan 2017 23:22:52 GMT  
		Size: 228.8 MB (228829164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f7572f095368f4a695a17fb9a139445afa4e99ce1d35978f41c684999f8fec`  
		Last Modified: Fri, 06 Jan 2017 23:21:41 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8195c9b057b6cfc0d644f6d5e6c9a9391b375257f114ad9ada060018181f6978`  
		Last Modified: Fri, 06 Jan 2017 23:21:42 GMT  
		Size: 9.0 MB (9031225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a833c268b411bbe086c0e386bb1dc725d9199c8cc9eb4bef094c49c29a6dcfb8`  
		Last Modified: Fri, 06 Jan 2017 23:23:53 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680386d0ed139e9a706d4abec0dab68b3de64fcd8a88b21ff13d95eaddfe0a81`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4078922823883082cbe22fa6c583e79c8ce3cf77977ac651e2bab03440f05a`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b841a0971801939e59b2e9e8ea77f905ce8b05b9b46e9b4cd5db829e78594`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 96.2 MB (96217615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9d2babb057131f360488d7f34f6ae3cbdbd88fe3606772ced10fb36333d9e3`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
