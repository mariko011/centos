## `golang:nanoserver`

```console
$ docker pull golang@sha256:accb981061ca789f2d336a10fb1eb7313c1a1242625c6273890bc8951fca0360
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431914065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b382640bdaa52ccd287aab26dd8a7becb9678179d45994719c4e7b58d40216d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 01 Dec 2016 23:55:33 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:55:35 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:55:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:59:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:59:18 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:66c4c0000446f244c31261d2b9981fcba14207a8a48ab548fc937eeb7e898899`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb3cd88a6267200344acf26b376f4eb2bbe1e27a468e0439cdfabd52856aba`  
		Last Modified: Fri, 02 Dec 2016 00:16:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad305fc60a3da44f0d081e690f57a4dd19f978de968be84957950b1bcbcaa92`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 855.4 KB (855435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff0565f836caa35be74ce0970152135ee2930c9ca3c78ecff09c31c644d1eca`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd6130443b131933f51c36fc4f883971fd8432a4ff9b955975d8359fce8efd6`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e83c33a466e925ba225352eee6f1e14a7130538ee9f4fa9fd92ce5220f175f`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bde6d84719d5e2687eef7e7d9e9f76ba5639a360c80aba88a511b850b683bef`  
		Last Modified: Fri, 02 Dec 2016 00:18:33 GMT  
		Size: 87.9 MB (87876687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9f74ce7937f16879fa7f36c4aff5e292a531c35085da7f83728873bbe158e6`  
		Last Modified: Fri, 02 Dec 2016 00:18:08 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
