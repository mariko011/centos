## `golang:nanoserver`

```console
$ docker pull golang@sha256:fd70c47fcc87610282de1c576046e00d1dff84c0b431f0f03d5575bc815d39b3
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.3 MB (425250464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347bfa3d161591bc4e27f0be916a1bb2dc5e3b13baf4aeac4e84cc8e96f8ca23`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 20 Jan 2017 21:48:18 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 20 Jan 2017 21:48:21 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:48:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 20 Jan 2017 21:52:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:53:01 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ea2ec6249baec774cf0bb6d4c46f383320ec4ad5e0a72597d9c1ef1834b32`  
		Last Modified: Fri, 13 Jan 2017 18:00:04 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15068a1a55e80e8468c9cd1bfd0c5b53faf86bd29b5b2a6692b41986129b29a8`  
		Last Modified: Fri, 13 Jan 2017 18:00:08 GMT  
		Size: 865.5 KB (865469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca0b6d4bb52011967d519d01891fe6f292b308e2967fef54ab300fb961a4aaf`  
		Last Modified: Fri, 20 Jan 2017 22:10:42 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4806ca21cb94cc00d9bf2982e66a30759144148194cf81e9b5f872cd05eace85`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116af2b4c14eaf708382237ae230ac5638bfca987053a733e9bd9926341fc757`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1145eea9033a32d107c73094ed34d685b594aa8a255ef5fcd6758f42602e43c`  
		Last Modified: Fri, 20 Jan 2017 22:11:13 GMT  
		Size: 91.1 MB (91070560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14a57de1b75b3737bf2af1710cb33a2b555aecc141aacf3c17bcb986bfff750`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
