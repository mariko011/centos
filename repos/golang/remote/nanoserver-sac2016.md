## `golang:nanoserver-sac2016`

```console
$ docker pull golang@sha256:d15540c8542f71410b93ee2528b1fc55cf1d64385ec0ba2b53f07bdb0eaf0c46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `golang:nanoserver-sac2016` - windows version 10.0.14393.2007; amd64

```console
$ docker pull golang@sha256:5a7012687591f2683fdbf183d9d7f1867cda746c2737b30ac8594164a1b7760e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.2 MB (510173474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78151d13e58ccfbc1e85ae769f7631c985fb5e756eba0d4c0f217a9c48834747`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 10:05:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 08 Jan 2018 18:26:16 GMT
ENV GOPATH=C:\gopath
# Mon, 08 Jan 2018 18:27:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 08 Jan 2018 19:10:15 GMT
ENV GOLANG_VERSION=1.9.2
# Mon, 08 Jan 2018 19:15:09 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 08 Jan 2018 19:15:11 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:764aee428c28f0935a6ded2a2730509373e1357648795b609b911dd46aa06257`  
		Last Modified: Thu, 04 Jan 2018 20:07:02 GMT  
		Size: 150.4 MB (150357748 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:954c60e18caf74c1c34ea38a04c2d8c7a2e4e2ae3658951596ace699a3894207`  
		Last Modified: Fri, 05 Jan 2018 10:14:14 GMT  
		Size: 922.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86e7fa28644d6145ab3a303bf625643f98fd573f0c038ccd2aed1d1a7de6a9a`  
		Last Modified: Mon, 08 Jan 2018 19:55:41 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e186accae51f0eeb18ba54d31934fbb1db4dc4adcae8b4bbc186ce83d476f`  
		Last Modified: Mon, 08 Jan 2018 19:55:43 GMT  
		Size: 856.7 KB (856654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7c5a882c69443af1c35fa19e1490ec3263a51ffe241aa7dcd64146e138e508`  
		Last Modified: Mon, 08 Jan 2018 20:01:36 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854b810fdcb54ca141ed6ceebfecd22993504d98ab61de62ee0c21890b4a46a`  
		Last Modified: Mon, 08 Jan 2018 20:03:26 GMT  
		Size: 106.3 MB (106264095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f8fa7cf0a98206139555b7e52393b16f019d6dc7f5ef3850acc37db4e29f6f`  
		Last Modified: Mon, 08 Jan 2018 20:01:36 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
