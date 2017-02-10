## `golang:rc-windowsservercore`

```console
$ docker pull golang@sha256:3671d15d5fa81b4d42ec5f7cabae739bbf2938c4f8e240fdd4228fd8539f4dff
```

-	Platforms:
	-	windows; amd64

### `golang:rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5322599765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a5b5a956e1c9a9ce277f3294009a62b9d569ebf59786d59c57c077ee555f59`
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
# Fri, 10 Feb 2017 00:20:17 GMT
ENV GOLANG_VERSION=1.8rc3
# Fri, 10 Feb 2017 00:20:21 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc3.windows-amd64.zip
# Fri, 10 Feb 2017 00:20:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=9ac7224a79dfd2d390ff4c5202f09fae2a5b07e9b0ebf32913979635e7143383
# Fri, 10 Feb 2017 00:24:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 10 Feb 2017 00:24:09 GMT
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
	-	`sha256:020f575f04c6fab103789d292aabfbbaadba155d2eebbdd1114c58ad46f13805`  
		Last Modified: Fri, 10 Feb 2017 00:29:40 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c19b8237e915babafafb948656601d8fdac836f9426b5f865d00369b5a7b75`  
		Last Modified: Fri, 10 Feb 2017 00:29:39 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bb103d89ddf3d776b9743249d54d961f85c3c3a711e0207c510c4874b64f06`  
		Last Modified: Fri, 10 Feb 2017 00:29:40 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbe496f4f5263dcd8b4284e07909c597aed1a433d99f36e62d7dbd9d26f4aff`  
		Last Modified: Fri, 10 Feb 2017 00:29:59 GMT  
		Size: 101.6 MB (101601262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f6e1483fd88d8ac36af9e8183696cd5e4237a8e6f72473b2561aaf4fa78744`  
		Last Modified: Fri, 10 Feb 2017 00:29:39 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
