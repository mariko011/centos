## `golang:windowsservercore`

```console
$ docker pull golang@sha256:60a19e0d15e4e3d6a54075c7a2448f4a86437effd87b6e9a6d9c8d1f19937168
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4936975519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d836c103f8f087d388ada35dac4bccc5da024f55ef51b160a8118a0387e01a3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:38:46 GMT
ENV GIT_VERSION=2.9.2
# Thu, 01 Dec 2016 23:38:49 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Thu, 01 Dec 2016 23:38:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Thu, 01 Dec 2016 23:38:56 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Thu, 01 Dec 2016 23:42:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:42:53 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:43:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Dec 2016 23:51:18 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:51:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:51:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:55:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:55:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6029883041761bd943c2b92d3cab623072e9f7f28eb678a87949cb1bd4808b5e`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5625c770015763f628f83b871dac1a487f641b01be9b024125869150146de8a1`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d963a6add9d23b2661669b646a1d005e12eaa6628729d871efc3b552a407d4`  
		Last Modified: Fri, 02 Dec 2016 00:08:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48991846104dc71b009a2fdf274ba6129bbbca34b35129bd2411938d6537db2b`  
		Last Modified: Fri, 02 Dec 2016 00:08:19 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5691468b4a91bfd78fd5cd66cf4b30d827a00ebeb0cf493c11ad6e7d7a2e56e`  
		Last Modified: Fri, 02 Dec 2016 00:08:18 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f524601b21854f16a2b90a7b849363d5599f1fb9f04d9b05d80c147b2c0fe`  
		Last Modified: Fri, 02 Dec 2016 00:09:22 GMT  
		Size: 215.4 MB (215358306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7273d7691c854e567053d023596faeb2da59d93bf724b29d4078126cf8f771ec`  
		Last Modified: Fri, 02 Dec 2016 00:08:14 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1aed27e49a5e6503bdb031bf8f403559a4e4a947d7bba149364fb4a0c9aa46`  
		Last Modified: Fri, 02 Dec 2016 00:08:17 GMT  
		Size: 8.9 MB (8867773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa054e3d46666855699404cc13ae8ea5c68320b5cc170576f2b612f0ba67bc1`  
		Last Modified: Fri, 02 Dec 2016 00:17:11 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2881cfe8b2d1bdf0a3115ecf0375dc1e04c5560439e87de0ae3b4cfe370dc`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd57a1d078ff1f44d5bcf18cfc585624bbc403655a63f0ae0b783390ba7a659`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a204ba9015e1390e23d899b8e0707ff2b3b6e518ec3fa7d0c479940c9f06402`  
		Last Modified: Fri, 02 Dec 2016 00:17:38 GMT  
		Size: 96.1 MB (96060785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a44f474b17725aba10188766e869d326e086b1b32e65276d85ddc8df9057a3`  
		Last Modified: Fri, 02 Dec 2016 00:17:10 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
