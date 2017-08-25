## `golang:nanoserver`

```console
$ docker pull golang@sha256:b3b90f01fcf5b51e824d045d174c7d251e09a26f09c3a999e61180330c031b49
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.1 MB (493082749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b52637036566a18019d723555e33884689965465153617687f84dd8bab33b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:35:27 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:35:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 24 Aug 2017 23:56:38 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:00:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:00:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:815a90c7de022ec1ac26cff95bb4490cdfa114edbe90c97dad360471afc1acdf`  
		Last Modified: Fri, 28 Jul 2017 18:52:10 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0884473bda07c79dea6c1ba8a548ab14b92a4017e270cb9f6a13e62f73344f`  
		Last Modified: Fri, 28 Jul 2017 18:52:06 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b794d483efa6f708f8df6b786860975ae714a6432a3dee64a8e7e637118fa6`  
		Last Modified: Fri, 28 Jul 2017 18:52:07 GMT  
		Size: 819.0 KB (818953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae128a03fd32a2e037378dc3ca2e4ddb7873984049222b31facd8b79d1ae4`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7c3c2ab14432037c1307b60ad5bd37155ebf5941f5aab10fa034d612c1bd05`  
		Last Modified: Fri, 25 Aug 2017 00:01:13 GMT  
		Size: 109.4 MB (109411725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caea420ca4a8ae9e09362ce719ffd11abb339a759de4e96d685ace6748e98ad`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
