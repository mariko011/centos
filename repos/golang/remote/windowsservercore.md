## `golang:windowsservercore`

```console
$ docker pull golang@sha256:1e0cf1a0ee10b305aeed448d2f896dd711d0ff10d6131f76a95a6f695c7a6947
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5317339249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c35d8d231a14a4561c31956efe6c28463f210a70f17a39a630ac84f380dd364`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 00:22:39 GMT
ENV GIT_VERSION=2.11.0
# Wed, 18 Jan 2017 00:22:41 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 18 Jan 2017 00:22:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 18 Jan 2017 00:22:47 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 18 Jan 2017 00:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 18 Jan 2017 00:26:23 GMT
ENV GOPATH=C:\gopath
# Wed, 18 Jan 2017 00:26:44 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 10 Feb 2017 00:13:13 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 10 Feb 2017 00:13:16 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.windows-amd64.zip
# Fri, 10 Feb 2017 00:13:19 GMT
ENV GOLANG_DOWNLOAD_SHA256=01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa
# Fri, 10 Feb 2017 00:16:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 10 Feb 2017 00:16:50 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897c7807798acd4116c377b5307f0b5d3c4bbc03c235a727c4789e6b35974cba`  
		Last Modified: Fri, 20 Jan 2017 22:01:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7c7c5b42aa2cf38693b33954d51e48e763705017cd1f4d16b0a311c539863`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf30c0d5a2dbb915e9b83bb1865163fe73ff9274f10b59e2901c1e0e045ae17b`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51259173ad3b6238e2d8d0a5bc8a0a00632206dc98ed8e9760cde0769ac0`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25170cb36a913293bf6047d0997a2f062f2fe4c8505cda896351ab08dc24e6`  
		Last Modified: Fri, 20 Jan 2017 22:08:24 GMT  
		Size: 228.9 MB (228880826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96a3c292bede7d32494f1d419d749d331e33f84507a8fe4fcc2387ec91c669`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1775be9ff04c6b10f539f7c2720bc9f5d0396356cf38f8e95b5017590bcf191e`  
		Last Modified: Fri, 20 Jan 2017 22:01:36 GMT  
		Size: 9.0 MB (8974533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822cda8b1c23213531ff7df9f53f4d2cfa90fbe235b54b2d119637467d6c90a`  
		Last Modified: Fri, 10 Feb 2017 00:28:16 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85ad09f72baa1dd6b66a5b3ca5353eb0512c1cb8923133a2f93c68120e13120`  
		Last Modified: Fri, 10 Feb 2017 00:28:16 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba37aa2c584bc82790cc1b3cca07d502e48185cabc5887b04f4a58770497aad`  
		Last Modified: Fri, 10 Feb 2017 00:28:16 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e0f6af2fb0c26b4ddcdd93f39c83230ea4c50e7a825f24bb4cb10d2271103e`  
		Last Modified: Fri, 10 Feb 2017 00:28:42 GMT  
		Size: 96.3 MB (96340759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03bd25a5fee56529a4be3000254ff9c1e74ae49a00de04f62a1e369474f056e`  
		Last Modified: Fri, 10 Feb 2017 00:28:17 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
