## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:f66d06ae63d249890c9cc777747a19daee8060e3e12491127f1225f807fd2827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:7c50df57c4cd13cd0a96d4dd93ccf2ef688ddbd21c38ebaf2f042cb478b9272a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.2 MB (500181945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23578fbd6216093145028d0c282685944c5b021e4bb4892400ba657b09c21d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:07:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:07:35 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:08:09 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 25 Aug 2017 00:11:30 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:14:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:821e97e3a65935dc586383dd3c52cce4e7210667621ed4856002d3552b35e0df`  
		Last Modified: Wed, 09 Aug 2017 23:23:09 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a52e37ada99bef8b80f7c7cea1677050da6155b62605e52895b8030f011a29`  
		Last Modified: Wed, 09 Aug 2017 23:23:05 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be59fee285e132f12d844c7e490b6e5d48ebaa5784a41ca8f35edc2a063c99a`  
		Last Modified: Wed, 09 Aug 2017 23:23:07 GMT  
		Size: 822.6 KB (822562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbfcc887569b2e6895e379b33b123f792617d75bb4264896a5f9dc0dd51b6ff`  
		Last Modified: Fri, 25 Aug 2017 00:15:32 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc7e329b9afa5cc95bdcbf96e806904358ade6e7a90be23603887d449968ce5`  
		Last Modified: Fri, 25 Aug 2017 00:15:51 GMT  
		Size: 109.3 MB (109312533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a19b0bb17f24e7338b1ba929d0dbcbd19573a3e30ca74639eb08a94210aae2`  
		Last Modified: Fri, 25 Aug 2017 00:15:31 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
