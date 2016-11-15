## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:787406b2846d3e0c38c45b5850dffc0a575f8858bb26e914646463d58d98b13f
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4935556964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f65c0672b774c32027ea114bcb600ab6947e08a2f255f80932a69881219e480`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:02:06 GMT
ENV GIT_VERSION=2.9.2
# Tue, 15 Nov 2016 00:02:11 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Tue, 15 Nov 2016 00:02:14 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Tue, 15 Nov 2016 00:02:18 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Tue, 15 Nov 2016 00:07:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:07:20 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:07:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Nov 2016 00:20:28 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 15 Nov 2016 00:20:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:20:34 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Tue, 15 Nov 2016 00:25:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:25:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7645d28b3cd95ddc8d13c2c6f12cdc918fa8c5d77d0a442aa3017d22bd29a0`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052537bc8cab14208c216f9848a018d5dfbf85df84eaabe1ae6383db468edab3`  
		Last Modified: Tue, 15 Nov 2016 00:13:09 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb53e693cfe38af4908f4cc9e6e230748da62e773d68aef7f841cbe77420a`  
		Last Modified: Tue, 15 Nov 2016 00:13:06 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead631093fea13def778a37d8e80b33c1e401a28049dcbe6285c6744cd11307d`  
		Last Modified: Tue, 15 Nov 2016 00:13:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c951cf6a3eb51ccc4b014dd2c3e1f544f7b70348b2216491ed6069e6ec4590f`  
		Last Modified: Tue, 15 Nov 2016 00:13:54 GMT  
		Size: 215.4 MB (215375768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbb107879204c0724de0afd90c998d9dd4875f59367262c46febd3e299f4567`  
		Last Modified: Tue, 15 Nov 2016 00:12:59 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1560a26c42007b654b8230dfb9aefab7407fd118d2b92431c2ac028d46434b3c`  
		Last Modified: Tue, 15 Nov 2016 00:13:07 GMT  
		Size: 8.9 MB (8865167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b89e3593e7c0c29a5c6ed36a1392024f223e8e567fedf8e7e9380c6be84ab6e`  
		Last Modified: Tue, 15 Nov 2016 00:25:38 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f977e8a9ac1e8cab6ec3c0570c58d5baba93bdd85eeb34cdfdc28654939b1ff2`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0f8cfef89ac886748a3d9e1075e8a8cced4983b75d2faf8a370b44f7f342f6`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177fa8ec8ade6f5204a8dbe7333f9bc3aeb72d0f896748f8dfabe324e56e1b4`  
		Last Modified: Tue, 15 Nov 2016 00:25:58 GMT  
		Size: 94.6 MB (94627410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38b621bb0a8f9a25ee11778b69682882029df0a188fbfdc9880848d7cc69999`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
