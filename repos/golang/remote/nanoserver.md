## `golang:nanoserver`

```console
$ docker pull golang@sha256:44bff2e3ea3ca899c46c428ac340ac53b2a862281c21f9c6a43aea77328055a5
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.2 MB (466236278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aafb2fcbe4a6a2b46c19029a59b884bb4fce90ab6c88bbbb9cfbcf4faaa3ce1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 22:04:28 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:04:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 07 Apr 2017 22:11:16 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 22:11:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.windows-amd64.zip
# Fri, 07 Apr 2017 22:11:21 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee
# Fri, 07 Apr 2017 22:19:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:19:41 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72fdad5e3357285f73b9aa74d5c4c8c4291db57cdb0ea51e882e3516566f70e`  
		Last Modified: Fri, 07 Apr 2017 22:20:53 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7486d5f6114c3f3af637cd0871fb74aa7751e9a65930a866f06659bb2466c07`  
		Last Modified: Fri, 07 Apr 2017 22:20:57 GMT  
		Size: 868.4 KB (868388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb515ee93382d134d0fa4ca8a337c5c0c16e285e76df20e756e786ad236947`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2540f9eefc16e6331b8aee7f2eff08efced0cb644cc348851b784c0e5e8a5848`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab735ed697b591737c3371aab8fb4be26b07d5670a7cd1bf89b14d744cc6a31`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9e7289be4ab9839dcb9f999c59d9bbc6efe5e027a878737ed0d56e19b171c0`  
		Last Modified: Fri, 07 Apr 2017 22:22:17 GMT  
		Size: 97.7 MB (97745799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd83325cc5bb69359050afa7d539ec206e14cd472f118018f915ac6070021f95`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
