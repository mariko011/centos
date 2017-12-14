## `golang:windowsservercore`

```console
$ docker pull golang@sha256:be3760a27875e2ba1ea7676dc0cbb7d9c0aff9338f4080580e26b55066474d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

### `golang:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull golang@sha256:d252932712cdc09d2679e0ddcd2eb2a2faba42465b57263c0980d81115024478
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5602061717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8369fbf48ab0d08bb5a54429cd89abede157e497ba926e6c99fa5de64c73b90`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 00:34:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Dec 2017 00:34:00 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Dec 2017 00:34:01 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Dec 2017 00:34:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Dec 2017 00:34:03 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Dec 2017 00:36:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 00:36:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Dec 2017 00:37:27 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 14 Dec 2017 00:37:28 GMT
ENV GOLANG_VERSION=1.10beta1
# Thu, 14 Dec 2017 01:07:42 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ff2789b7baf33f87111d30bac81ac1ae19dcc16bdd75553f9b5aceda14733a40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:07:44 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a3d5f61b176f33e17d386e2d798dc5fcf5b313841fcbf7e3b51cd9c892c4fa9d`  
		Last Modified: Thu, 14 Dec 2017 01:59:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabfd4a1d78aa04f5b8f793e2337babee92a3e2fbf9698a7bde819386a87443d`  
		Last Modified: Thu, 14 Dec 2017 01:59:06 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac7459dae3268ef6030a9ce1de519aeff528930bb5a1d727572cac7c0f0a9ce`  
		Last Modified: Thu, 14 Dec 2017 01:59:05 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba15213d04646108885deb8321df61e7f8170554027a7f25da95444ca425808`  
		Last Modified: Thu, 14 Dec 2017 01:59:02 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071931363cb2c646896130aebb51cb4c973df128900d018405b32b7ce18ded00`  
		Last Modified: Thu, 14 Dec 2017 01:59:02 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d89fe67196eed515930805e54391a024df10eaaba54ca7c55f223eea555244f`  
		Last Modified: Thu, 14 Dec 2017 01:59:19 GMT  
		Size: 29.3 MB (29276801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581204f6ebd7ede573fac6c6e814b6fa48ae1c6d6e1f05fd864e91b01524c418`  
		Last Modified: Thu, 14 Dec 2017 01:59:00 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d483800fff05a932e1af0d6526758b79e00f1bd7bc30324edef7feb26143ecfd`  
		Last Modified: Thu, 14 Dec 2017 01:59:01 GMT  
		Size: 4.8 MB (4805320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58215e7774ef55e5c9ed34208d7babb336771bd5d5284474af1afdea4839a48`  
		Last Modified: Thu, 14 Dec 2017 01:58:59 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac678587dcd40934c8510f3105769b29bf38730c76db087e9d62fa28ab98496`  
		Last Modified: Thu, 14 Dec 2017 02:02:13 GMT  
		Size: 206.2 MB (206154920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6df80aabb8e100b90af1848fe2e4fef0a67edc88fb16706e0ae3f35ed76d47`  
		Last Modified: Thu, 14 Dec 2017 01:58:59 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.125; amd64

```console
$ docker pull golang@sha256:f89ad0bc702b9e8448428d5500aacda270d43c8e9d5a3f18201f07da9145678a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3098266492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71cd312e9472cc0635d63bfdc8033a6c31d7a8d0e1374788f1eab2a595ba1e5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Thu, 14 Dec 2017 01:07:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Dec 2017 01:07:59 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Dec 2017 01:07:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Dec 2017 01:08:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Dec 2017 01:08:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Dec 2017 01:09:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:09:48 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Dec 2017 01:10:35 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 14 Dec 2017 01:10:36 GMT
ENV GOLANG_VERSION=1.10beta1
# Thu, 14 Dec 2017 01:18:27 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ff2789b7baf33f87111d30bac81ac1ae19dcc16bdd75553f9b5aceda14733a40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:18:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da9070a4da21ca9a4ce14f2c4d0f840c44addcfa4b5c90c421df47e49151d7e6`  
		Last Modified: Thu, 14 Dec 2017 02:02:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db23d1ca581e2fe9eb3452303eb5aaef9cfd697788b3533ec8f4762c0814924`  
		Last Modified: Thu, 14 Dec 2017 02:02:36 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89827c291560e82e5dd38a7f03183b577c322ee1e312560f2bd92c384d9c2947`  
		Last Modified: Thu, 14 Dec 2017 02:02:35 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c008f62b24c4b813b602b0862b7335e002b219e941fb054696f6a75dfe2f97d8`  
		Last Modified: Thu, 14 Dec 2017 02:02:33 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a295427d954111694f96b479249ce25425534a79d54faa5ed67502d37d2f0c5`  
		Last Modified: Thu, 14 Dec 2017 02:02:32 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88158e57209e09bf2a6a6681cf3fbbaf91849bd7b88f80642069411ca307c958`  
		Last Modified: Thu, 14 Dec 2017 02:02:51 GMT  
		Size: 28.8 MB (28810841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb385cfc896cf251f251ff9cc3672d1f0883fe0046cedeb1c1ddb926b433629`  
		Last Modified: Thu, 14 Dec 2017 02:02:29 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ecfcf588d13c3c0eff46fa699e0a9c613719aade19791247b475154993bd6e`  
		Last Modified: Thu, 14 Dec 2017 02:02:31 GMT  
		Size: 4.4 MB (4368768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a193d52a00d43a79411497eb013166e36e202826116472f90d44f455a434e3c`  
		Last Modified: Thu, 14 Dec 2017 02:02:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f41ef2dccd88492eddd28854f17169d0193dc7ae6df9effe3db504419efff32`  
		Last Modified: Thu, 14 Dec 2017 02:05:41 GMT  
		Size: 201.3 MB (201252129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3e0395b6b3b915c740ea04c190d885f924278ae1b7ab137525bab1f7338a5`  
		Last Modified: Thu, 14 Dec 2017 02:02:30 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull golang@sha256:7ed39a103598c313c35a28891c0b5477e4a3dbe7d1c90c9a22866d04271c0551
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5510734408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fdcf0b6413be0035d27e587039e76736b5b882ca07f32fd15aee4a24460ddb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 00:34:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Dec 2017 00:34:00 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Dec 2017 00:34:01 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Dec 2017 00:34:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Dec 2017 00:34:03 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Dec 2017 00:36:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 00:36:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Dec 2017 00:37:27 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 14 Dec 2017 01:27:30 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 14 Dec 2017 01:34:12 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:34:14 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a3d5f61b176f33e17d386e2d798dc5fcf5b313841fcbf7e3b51cd9c892c4fa9d`  
		Last Modified: Thu, 14 Dec 2017 01:59:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabfd4a1d78aa04f5b8f793e2337babee92a3e2fbf9698a7bde819386a87443d`  
		Last Modified: Thu, 14 Dec 2017 01:59:06 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac7459dae3268ef6030a9ce1de519aeff528930bb5a1d727572cac7c0f0a9ce`  
		Last Modified: Thu, 14 Dec 2017 01:59:05 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba15213d04646108885deb8321df61e7f8170554027a7f25da95444ca425808`  
		Last Modified: Thu, 14 Dec 2017 01:59:02 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071931363cb2c646896130aebb51cb4c973df128900d018405b32b7ce18ded00`  
		Last Modified: Thu, 14 Dec 2017 01:59:02 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d89fe67196eed515930805e54391a024df10eaaba54ca7c55f223eea555244f`  
		Last Modified: Thu, 14 Dec 2017 01:59:19 GMT  
		Size: 29.3 MB (29276801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581204f6ebd7ede573fac6c6e814b6fa48ae1c6d6e1f05fd864e91b01524c418`  
		Last Modified: Thu, 14 Dec 2017 01:59:00 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d483800fff05a932e1af0d6526758b79e00f1bd7bc30324edef7feb26143ecfd`  
		Last Modified: Thu, 14 Dec 2017 01:59:01 GMT  
		Size: 4.8 MB (4805320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74003b47a238d6496ffd4ba866a255c1bcff60329e429bb8518b526016c95896`  
		Last Modified: Thu, 14 Dec 2017 02:09:06 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6219bbce92c221c4e691968dfda8d848357eaaaae16ee6832cb791e9348f8f`  
		Last Modified: Thu, 14 Dec 2017 02:10:04 GMT  
		Size: 114.8 MB (114827617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84595ef06cf64711dae26fa9346d3a33623181163edabdd70c5ff4fe36774224`  
		Last Modified: Thu, 14 Dec 2017 02:09:06 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.125; amd64

```console
$ docker pull golang@sha256:2af8e13fccb95626f334dbf94dcd482546d1a6b70c55fb3b44b2c067abea27fe
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (3006882519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed1bf64ff5d820335996d3bbbd32454b44d4be8ff85bf04f0cdffdf21eafdcbb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Thu, 14 Dec 2017 01:07:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Dec 2017 01:07:59 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Dec 2017 01:07:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Dec 2017 01:08:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Dec 2017 01:08:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Dec 2017 01:09:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:09:48 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Dec 2017 01:10:35 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 14 Dec 2017 01:34:30 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 14 Dec 2017 01:39:16 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:39:18 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da9070a4da21ca9a4ce14f2c4d0f840c44addcfa4b5c90c421df47e49151d7e6`  
		Last Modified: Thu, 14 Dec 2017 02:02:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db23d1ca581e2fe9eb3452303eb5aaef9cfd697788b3533ec8f4762c0814924`  
		Last Modified: Thu, 14 Dec 2017 02:02:36 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89827c291560e82e5dd38a7f03183b577c322ee1e312560f2bd92c384d9c2947`  
		Last Modified: Thu, 14 Dec 2017 02:02:35 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c008f62b24c4b813b602b0862b7335e002b219e941fb054696f6a75dfe2f97d8`  
		Last Modified: Thu, 14 Dec 2017 02:02:33 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a295427d954111694f96b479249ce25425534a79d54faa5ed67502d37d2f0c5`  
		Last Modified: Thu, 14 Dec 2017 02:02:32 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88158e57209e09bf2a6a6681cf3fbbaf91849bd7b88f80642069411ca307c958`  
		Last Modified: Thu, 14 Dec 2017 02:02:51 GMT  
		Size: 28.8 MB (28810841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb385cfc896cf251f251ff9cc3672d1f0883fe0046cedeb1c1ddb926b433629`  
		Last Modified: Thu, 14 Dec 2017 02:02:29 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ecfcf588d13c3c0eff46fa699e0a9c613719aade19791247b475154993bd6e`  
		Last Modified: Thu, 14 Dec 2017 02:02:31 GMT  
		Size: 4.4 MB (4368768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7471cf368133798568d1464cb029b79566118e5a6868c1df95b8547e7f67bec`  
		Last Modified: Thu, 14 Dec 2017 02:10:24 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ccbb2682ad0ba0bc6561ec23a205d2aa36bd3c4f92712912a6c4e2bb848d4c`  
		Last Modified: Thu, 14 Dec 2017 02:10:46 GMT  
		Size: 109.9 MB (109868134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182e6295c354538fb3d3665ea2d5c8ce84402ad3b16160c70937c50c3187ca6`  
		Last Modified: Thu, 14 Dec 2017 02:10:23 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull golang@sha256:c6d63a8259eb8cae77acab5b98538cdd3abab8f597502e996cb3ac649c2af012
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5505583217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2804588a4ce50d840012fb8c08b1ed6c67418ed521d78f820a55110f4fb79a43`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 00:34:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Dec 2017 00:34:00 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Dec 2017 00:34:01 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Dec 2017 00:34:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Dec 2017 00:34:03 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Dec 2017 00:36:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 00:36:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Dec 2017 00:37:27 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 14 Dec 2017 01:43:59 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 14 Dec 2017 01:49:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '137827cabff27cc36cbe13018f629a6418c2a6af85adde1b1bfb8d000c9fc1ae'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:49:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a3d5f61b176f33e17d386e2d798dc5fcf5b313841fcbf7e3b51cd9c892c4fa9d`  
		Last Modified: Thu, 14 Dec 2017 01:59:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabfd4a1d78aa04f5b8f793e2337babee92a3e2fbf9698a7bde819386a87443d`  
		Last Modified: Thu, 14 Dec 2017 01:59:06 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac7459dae3268ef6030a9ce1de519aeff528930bb5a1d727572cac7c0f0a9ce`  
		Last Modified: Thu, 14 Dec 2017 01:59:05 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba15213d04646108885deb8321df61e7f8170554027a7f25da95444ca425808`  
		Last Modified: Thu, 14 Dec 2017 01:59:02 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071931363cb2c646896130aebb51cb4c973df128900d018405b32b7ce18ded00`  
		Last Modified: Thu, 14 Dec 2017 01:59:02 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d89fe67196eed515930805e54391a024df10eaaba54ca7c55f223eea555244f`  
		Last Modified: Thu, 14 Dec 2017 01:59:19 GMT  
		Size: 29.3 MB (29276801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581204f6ebd7ede573fac6c6e814b6fa48ae1c6d6e1f05fd864e91b01524c418`  
		Last Modified: Thu, 14 Dec 2017 01:59:00 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d483800fff05a932e1af0d6526758b79e00f1bd7bc30324edef7feb26143ecfd`  
		Last Modified: Thu, 14 Dec 2017 01:59:01 GMT  
		Size: 4.8 MB (4805320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3e8b8a1d664046e8e6b2264e2e326bbeee36f0facf26808fa9b9d380d5409c`  
		Last Modified: Thu, 14 Dec 2017 02:11:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7168788a906a6fbf6c139fe1534ac6ec7e9bf277a1ca1a8a8dcec1bb63dfda`  
		Last Modified: Thu, 14 Dec 2017 02:12:10 GMT  
		Size: 109.7 MB (109676419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78712027a6b9da0aed1fed6d524d964495f1c6fa3368a9b11a6722491f6a4a54`  
		Last Modified: Thu, 14 Dec 2017 02:11:48 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.125; amd64

```console
$ docker pull golang@sha256:27e13f90185b8addf27d65d25de14d2d2b72fd68f646c8840b9f41dfffbc8192
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (3001755337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ef619ae901617c84088fffca604b9f2c9639ba80d4d33e83ec2f5cd78f9176`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Thu, 14 Dec 2017 01:07:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Dec 2017 01:07:59 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Dec 2017 01:07:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Dec 2017 01:08:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Dec 2017 01:08:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Dec 2017 01:09:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:09:48 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Dec 2017 01:10:35 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 14 Dec 2017 01:49:12 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 14 Dec 2017 01:53:51 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '137827cabff27cc36cbe13018f629a6418c2a6af85adde1b1bfb8d000c9fc1ae'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:53:53 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da9070a4da21ca9a4ce14f2c4d0f840c44addcfa4b5c90c421df47e49151d7e6`  
		Last Modified: Thu, 14 Dec 2017 02:02:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db23d1ca581e2fe9eb3452303eb5aaef9cfd697788b3533ec8f4762c0814924`  
		Last Modified: Thu, 14 Dec 2017 02:02:36 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89827c291560e82e5dd38a7f03183b577c322ee1e312560f2bd92c384d9c2947`  
		Last Modified: Thu, 14 Dec 2017 02:02:35 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c008f62b24c4b813b602b0862b7335e002b219e941fb054696f6a75dfe2f97d8`  
		Last Modified: Thu, 14 Dec 2017 02:02:33 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a295427d954111694f96b479249ce25425534a79d54faa5ed67502d37d2f0c5`  
		Last Modified: Thu, 14 Dec 2017 02:02:32 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88158e57209e09bf2a6a6681cf3fbbaf91849bd7b88f80642069411ca307c958`  
		Last Modified: Thu, 14 Dec 2017 02:02:51 GMT  
		Size: 28.8 MB (28810841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb385cfc896cf251f251ff9cc3672d1f0883fe0046cedeb1c1ddb926b433629`  
		Last Modified: Thu, 14 Dec 2017 02:02:29 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ecfcf588d13c3c0eff46fa699e0a9c613719aade19791247b475154993bd6e`  
		Last Modified: Thu, 14 Dec 2017 02:02:31 GMT  
		Size: 4.4 MB (4368768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b168a3bb818a9c955250769d2ee193c2f8f0a5fa7adfe150862af514d6b01952`  
		Last Modified: Thu, 14 Dec 2017 02:12:21 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e7f66d849793c200e1c231fbb371083b771d67906881677fe16805ed6416f0`  
		Last Modified: Thu, 14 Dec 2017 02:12:43 GMT  
		Size: 104.7 MB (104740952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62d4427b6402738ee6536298afeb0531ebb35dee6ecf347fa743867d0251cf2`  
		Last Modified: Thu, 14 Dec 2017 02:12:21 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
