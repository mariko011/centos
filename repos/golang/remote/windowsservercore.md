## `golang:windowsservercore`

```console
$ docker pull golang@sha256:8397119a3de0ef77970de076627a3a22df0f55f16034c365918d249968ee1306
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4950321183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e890406aa34a3c4b4827a2b6a3b4d0cdc98d815389d92ed5af3a145dc288078b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Dec 2016 19:04:35 GMT
ENV GIT_VERSION=2.11.0
# Wed, 07 Dec 2016 19:04:37 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 07 Dec 2016 19:04:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 07 Dec 2016 19:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 07 Dec 2016 19:08:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:08:51 GMT
ENV GOPATH=C:\gopath
# Wed, 07 Dec 2016 19:09:14 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Dec 2016 19:13:31 GMT
ENV GOLANG_VERSION=1.7.4
# Wed, 07 Dec 2016 19:13:34 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Wed, 07 Dec 2016 19:13:36 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Wed, 07 Dec 2016 19:17:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:17:52 GMT
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
	-	`sha256:31f3eeac6a9cf5de7589ca5d04a6bdad635fa8119a57396f1295ed9281be4d91`  
		Last Modified: Wed, 07 Dec 2016 19:23:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1601856818ffb47a6b00b190d75f421b78c992478cecd1e71da0328291138565`  
		Last Modified: Wed, 07 Dec 2016 19:22:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad2276f400f6794ce4db833400ab6929750a42c4784784cefc25065ccf39476`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c954d7fdbe9041a8f57e7ea9b78e57fdc80851be276ae15748f946dd496f`  
		Last Modified: Wed, 07 Dec 2016 19:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d3cbf0e0f246e09a2e0d8ba9d15eb13e131f47ee5976fa0c24519c9c9d558e`  
		Last Modified: Wed, 07 Dec 2016 19:23:59 GMT  
		Size: 228.7 MB (228658971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9406f96f0c1ea3e2dd48b68dcd30341f5f610285b683d436c4b1b66ed73d14`  
		Last Modified: Wed, 07 Dec 2016 19:22:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ac9e301a08beecf1a26058ed6bf843e5672c34573952edf067e54a5a6f8b8`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 8.9 MB (8888943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9585712d49b099dbca790951c9a5bb419350c6890436906d8f96902bedcb4f5c`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9273024d693739fbdbc56c9798f1c3c3ae95c9a85c2c7f40b91b4eb667a1a33`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4803f64826436951cce1c10eca55f9bb8d06022dfd8e7082120fe516f5bf1e39`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add5c4a54ddd2dbe43db21dcbf685d6ceda1ecf6368e07c0f83507a0387e9ca`  
		Last Modified: Wed, 07 Dec 2016 19:25:40 GMT  
		Size: 96.1 MB (96084664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a3e477327e9dcb9ef0279f03d6c3497b259868b047e0cfad666089437d0f47`  
		Last Modified: Wed, 07 Dec 2016 19:24:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
