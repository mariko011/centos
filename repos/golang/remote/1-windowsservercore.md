## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:1fe80e1042f416e7d4a3f8ef8f9c7411b027bd58c9a45a278b7fdd89f9591051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f8441a641e67f1e75d1aee63437355d9201147744c5878f553c46591f7022ed6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494866514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ce54edf612126a02b5883c21e9c9f6ee2477fca25fd32c4a7ba1df7900da4d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:28:37 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:33:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:33:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559335af40b1622c82f42be98eb7ff4c5d287fa4ed6deaed185978652133d78d`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29a137a52e78074c8e618939b89f429bb41755cce516e5aa855624a1417f485`  
		Last Modified: Wed, 01 Nov 2017 20:47:12 GMT  
		Size: 110.3 MB (110278390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e53b5b991bd88780d9001004494f1f64bb74e74440a9769cc611f2900c571ff`  
		Last Modified: Wed, 01 Nov 2017 20:46:45 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
