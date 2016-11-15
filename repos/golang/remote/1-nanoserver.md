## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:cb1fd3e8207e96cf886553fd096eb9f5ad7d9431548d684fe9e3d7c3140bfcb3
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.3 MB (434301814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31bb04a725dba62be502c2bcc409efbbe78b79033126af42664e32414155b1d8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:14:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:14:25 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:15:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 15 Nov 2016 00:26:30 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 15 Nov 2016 00:26:33 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:26:35 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Tue, 15 Nov 2016 00:31:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:31:28 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5754f9d84935d359a6194ff6aca82b2a08535f7bdc4855c50b91d6797af47d75`  
		Last Modified: Tue, 15 Nov 2016 00:19:53 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b7b304de65cc2507006afb90d24f8e6b039d0ccb277fa8bb150ff074cbb6df`  
		Last Modified: Tue, 15 Nov 2016 00:19:53 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea80931ba5ad3798a845960ea41f81eb9f54ef55e6b4f88c692ac46f6ec5925`  
		Last Modified: Tue, 15 Nov 2016 00:19:57 GMT  
		Size: 855.2 KB (855191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ff100f0ebacf56a1d535a9c35ef60f85259e427273b70b9a6d2449586b959a`  
		Last Modified: Tue, 15 Nov 2016 00:31:34 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72e0a3c786336da6838973026a2b0deb848a3843c96665a46efd2486c3aa810`  
		Last Modified: Tue, 15 Nov 2016 00:31:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba2034c36d02c6656415b8f5dc2d13cdaf54d82d9a651c1cee8b0c3d255bca9`  
		Last Modified: Tue, 15 Nov 2016 00:31:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7041210c8bf8af29c3765b64bdf96718582e100364e16fefd424cc99dba4819`  
		Last Modified: Tue, 15 Nov 2016 00:31:57 GMT  
		Size: 90.3 MB (90264664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11cdb5aca1af98d4bd68236828b3044856a89ecafe8d302f49d3eca7d6cece0`  
		Last Modified: Tue, 15 Nov 2016 00:31:34 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
