## `golang:nanoserver`

```console
$ docker pull golang@sha256:f7817ac509dfaf38984c59de8caea69215b6c9c06ebe778f0e7ad6587c9d41f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `golang:nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull golang@sha256:be9f61cac23574ad7b46c2b7b25feb00746c66b849364b12142e4c2ee61089d1
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **507.8 MB (507774877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f34caf4b6a934b1d2ea247647fa5a831d4cab292c9a42aecff857e3bdb4c0b2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:21:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Nov 2017 03:21:46 GMT
ENV GOPATH=C:\gopath
# Wed, 15 Nov 2017 03:22:24 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Nov 2017 03:22:25 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 15 Nov 2017 03:26:17 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 03:26:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:53a0ccfb7e6fe326c54359c802287bbe5435ac269242e4883f85a1f305e1d0cb`  
		Last Modified: Mon, 13 Nov 2017 21:41:41 GMT  
		Size: 148.0 MB (147993264 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6391c8dfb28a8f45d62407ef2c1a147f2ea682f9352a6e736a21b3502f24d922`  
		Last Modified: Wed, 15 Nov 2017 10:26:45 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91148436619439d6fb249446bb0a082ae737c67580c3a0c8c75ec2984c905908`  
		Last Modified: Wed, 15 Nov 2017 21:08:32 GMT  
		Size: 831.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e75d25db7ea2288538a1b9a82c433cdd9c6dec70ebdf8f259cb6224ddd83c63`  
		Last Modified: Wed, 15 Nov 2017 21:08:33 GMT  
		Size: 838.7 KB (838706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa16afc7b414e428d199d4040fb899ee5c6ef1799ba996afef6876107e94058`  
		Last Modified: Wed, 15 Nov 2017 21:08:32 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0112c59bba0f4cd9417833be434472fb279cb7c740f6fb7bf700b964aa7207a6`  
		Last Modified: Wed, 15 Nov 2017 21:08:53 GMT  
		Size: 106.2 MB (106248036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38ae494d8373ac52b4966dea9d9db756236a6c7ca7115cf7023bc9e32dbe75`  
		Last Modified: Wed, 15 Nov 2017 21:08:32 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
