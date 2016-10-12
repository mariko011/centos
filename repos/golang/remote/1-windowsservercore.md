## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:4b23350427581c9155dba82bd1d5e8df7f2bf977c74e4edafb8571cc488a71ce
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 GB (4051915885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900a9e2da6c3b2452cd0d067c98a0ef349f4654aea9d01d1c325f5cf2364d090`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:24:13 GMT
ENV GIT_VERSION=2.9.2
# Wed, 12 Oct 2016 18:24:19 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Wed, 12 Oct 2016 18:24:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Wed, 12 Oct 2016 18:24:27 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Wed, 12 Oct 2016 18:28:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:28:50 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Oct 2016 18:29:12 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:33:34 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 12 Oct 2016 18:33:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 12 Oct 2016 18:33:41 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 12 Oct 2016 18:37:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:37:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee9ba41e044357d3e867c68ba056c4f5dd25a3e08809610f8d164b83fdfe5`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8a14f2e77feb9a9a6477834a7c06f70f138628756794f88539e5bccb004060`  
		Last Modified: Wed, 12 Oct 2016 18:39:44 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f5d4d03a6cf8a5cf190d5745cf551e5cf1e72b9aa4d809c7b3651346631acd`  
		Last Modified: Wed, 12 Oct 2016 18:39:42 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95cffce40e00618ac9b325aa82848af7c86ef7afcab887ce7f698b10893e993`  
		Last Modified: Wed, 12 Oct 2016 18:39:34 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8a732024beed7c2fb67a33cd777bf205d7b80d1f1b7908cce39bc5063b741a`  
		Last Modified: Wed, 12 Oct 2016 18:41:35 GMT  
		Size: 215.3 MB (215345445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e902082ae094c476139094d4818a0da1e1ed0fa25512a7ec0a3ca5a09da12a82`  
		Last Modified: Wed, 12 Oct 2016 18:39:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af7a933ca9d246e7d3da20e960dc0f2bb84cc72964a3d489642eeae97325ae9`  
		Last Modified: Wed, 12 Oct 2016 18:39:48 GMT  
		Size: 4.3 MB (4299642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf1399db22ec5b208eae5a0f3440ec8603be8b4ec456bedcd62aeaef3b7a305`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a3d802f7520dafb52d0bc17424728d132e16f89a7ef573dbc574a8d4c62ffc`  
		Last Modified: Wed, 12 Oct 2016 18:41:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063f4b4bfa2fd3fa51b2b542696180be64187d76b1587be66478c5cc0dbfedc6`  
		Last Modified: Wed, 12 Oct 2016 18:41:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e38b9ab9132f5cd4380ac33a2f24dee42724ce430aef633b65de23f69eaf98`  
		Last Modified: Wed, 12 Oct 2016 18:43:33 GMT  
		Size: 94.4 MB (94434322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e23268aacab3edc82608e444eaeffe10283963c74a4bd57876fbc84f4085927`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
