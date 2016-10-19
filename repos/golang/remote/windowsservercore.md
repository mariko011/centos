## `golang:windowsservercore`

```console
$ docker pull golang@sha256:3ece56dc086d601f92602cd2b028ec3ac72b6fa1f1314b2dead8ef1a728898cd
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4665037934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7570817d9b7efd26c5537a4908274451beb25be732cb5c58ebc3cf24810d60`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:25:27 GMT
ENV GIT_VERSION=2.9.2
# Wed, 12 Oct 2016 19:25:32 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Wed, 12 Oct 2016 19:25:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Wed, 12 Oct 2016 19:25:39 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Tue, 18 Oct 2016 20:43:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Tue, 18 Oct 2016 20:43:13 GMT
ENV GOPATH=C:\gopath
# Tue, 18 Oct 2016 20:43:34 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 19 Oct 2016 21:56:07 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 21:56:10 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Wed, 19 Oct 2016 21:56:13 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Wed, 19 Oct 2016 22:00:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 19 Oct 2016 22:00:54 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac669cb897e39ec11f318c297f4d37f4fcee666f73329a87d682d483650eb81`  
		Last Modified: Wed, 12 Oct 2016 20:12:47 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637e390ccc606ceb43ffe429ad2eba95a67bbe497de0ac9394d09faee98cb647`  
		Last Modified: Wed, 12 Oct 2016 20:12:47 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e960bb9bf7ba980b3a5aa3bbbe2e43cbbbbb8bb179e56609a2325db86aab69f`  
		Last Modified: Wed, 12 Oct 2016 20:12:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c43be2eca6ba8658363340237b0999be111d6e4b4e76e8bf42f801737692de4`  
		Last Modified: Wed, 12 Oct 2016 20:12:43 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e0e4bf1429e0a8e00029f128ffac0b63d9f984ce3733deb814d188e3a505ea`  
		Last Modified: Tue, 18 Oct 2016 21:03:28 GMT  
		Size: 215.4 MB (215353361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0185773a0a17452f7ec01e4963e4d512f4831e3a40e9bb1258b9081dec9c4934`  
		Last Modified: Tue, 18 Oct 2016 21:01:48 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a07a6f6ea11b197fcf5338624e85603ff44b33e9a7d1f0aa5c6da047ad5133`  
		Last Modified: Tue, 18 Oct 2016 21:01:51 GMT  
		Size: 4.3 MB (4331070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2bc3fddc893e1a2676c7654121555de160ff68d0329fdc1a0d4b1bc29a8212`  
		Last Modified: Wed, 19 Oct 2016 22:05:26 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb42e03d9415149c5600145a73c72e93598c59f8a0e090041e1e8362690fb43`  
		Last Modified: Wed, 19 Oct 2016 22:05:27 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d05e7fc5ed47ceeb30954754126330b6bef7a07482e97c2fded04c84939fb5`  
		Last Modified: Wed, 19 Oct 2016 22:05:26 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094da97afa0007ada50fcbe3990dfb8ebbbf606b8989eddc1e00cace479fcf9c`  
		Last Modified: Wed, 19 Oct 2016 22:05:46 GMT  
		Size: 94.5 MB (94457059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6958c270ca502bfe0c9417bbcc74d63de5e46a82a69c7869690eb493fef2f7`  
		Last Modified: Wed, 19 Oct 2016 22:05:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
