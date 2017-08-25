## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:730dcf48108ed97d95dc156e6da399ecae6fe18ab18b69dcdcefa892928519cc
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5443929488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1092a1c42a84dab9305c5ed99953f641dbb9cbfae193cd019add69395d712050`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:29:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:29:59 GMT
ENV GIT_VERSION=2.11.1
# Fri, 28 Jul 2017 18:30:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 28 Jul 2017 18:30:05 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 28 Jul 2017 18:30:09 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 28 Jul 2017 18:31:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:31:13 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:31:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 24 Aug 2017 23:53:00 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:56:32 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 23:56:35 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35931e174f3cc5f305233235f76454a6744970dcbe50000c4dba61b50742c54b`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e30e1b2d39b5701d2da02904a87709fd39a6b10293ef7b88e9462a3ae728a28`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc759b266aca88b51a7756cd4113bccb1c0dc768778339d130e7beeefc1435`  
		Last Modified: Fri, 28 Jul 2017 18:51:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea2f49ce85160cd30e367cc22df74ae740290608771e983e5b4680acff42019`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488a673a3d122004bb2c6cc49c854abbe8b2864a54771d1e17a80e56144ff50c`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d0eee0957e14c721719051a42ed590f90382daed857af69ec67c195e766332`  
		Last Modified: Fri, 28 Jul 2017 18:51:29 GMT  
		Size: 29.2 MB (29154276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2578957b53a2c7e8f48ce9742946b22afa9f4d58df393c436edc651543da1955`  
		Last Modified: Fri, 28 Jul 2017 18:51:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895188475ac2f7d1831f038b1f62e67441927f9cd03c729526e420e2ede5d795`  
		Last Modified: Fri, 28 Jul 2017 18:51:17 GMT  
		Size: 4.7 MB (4740566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa985be47b4d5ae373357a264dc67a02d19ff40888a652428be340518380d2a`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3db3b3a02dc68e55e3726309748a1c0493272503e005ec0385f6001edcc4dc`  
		Last Modified: Fri, 25 Aug 2017 00:00:38 GMT  
		Size: 114.7 MB (114695330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a716923bbf5f7944d211fc4879c9ebf0e2fc940125fb6b5c52f893b424c89a0`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
