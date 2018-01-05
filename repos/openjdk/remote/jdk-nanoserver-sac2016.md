## `openjdk:jdk-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:ea9e4e926d4a5ad9f3606f4607f348e4e3059ed10f95e7eff29c28d93881fadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `openjdk:jdk-nanoserver-sac2016` - windows version 10.0.14393.2007; amd64

```console
$ docker pull openjdk@sha256:1884d8ac4d89c274aa9670dc19c421aca0afd6f65620e1ccf750c594af1b5d68
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.7 MB (510650674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0deccbecdc4c0de2bb24f7110dfcdd723d53133aa441416f10373095c01f8ee6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 10:05:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 05 Jan 2018 10:05:52 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 05 Jan 2018 10:06:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 05 Jan 2018 10:07:00 GMT
ENV JAVA_VERSION=8u151
# Fri, 05 Jan 2018 10:07:01 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.151-1
# Fri, 05 Jan 2018 10:07:02 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.151-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 05 Jan 2018 10:07:03 GMT
ENV JAVA_OJDKBUILD_SHA256=1905ea74b79d6d1d2ea2b2b6887c14770f090fbb8b46e7e1bfb56e92845e9cf2
# Fri, 05 Jan 2018 10:08:09 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:f7b6582b2ddc6eb91d5ab41b0e8486aa2bf55f233601cf5aef9b649e5ac11e1a`  
		Last Modified: Fri, 05 Jan 2018 10:14:14 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7337715dda7f285d15244ca3b41290be3077379f614896a8d7ac302635ef27`  
		Last Modified: Fri, 05 Jan 2018 10:14:14 GMT  
		Size: 845.8 KB (845757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d607203c1ac17419a85981ef6b7d491dee1b0a02fabd6dfa4d67d88cde8fe54d`  
		Last Modified: Fri, 05 Jan 2018 10:14:12 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545c14bbcf2e2e940d5b8db7de0dd56c697d6c821a9ffe69802a8d7474ed2196`  
		Last Modified: Fri, 05 Jan 2018 10:14:11 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5fbefa7661571838c0ef2e29ebdebb542d6d3d047c8af7734c8a6d4da92de0`  
		Last Modified: Fri, 05 Jan 2018 10:14:11 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294428cb7c570587b694ed3661cc1317f49934682bd7f38e7bc7552028191cbf`  
		Last Modified: Fri, 05 Jan 2018 10:14:10 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521d5b32c3427ad1e8b65b71b27600b5a563ec3cc0fd986e42b9c7772680b235`  
		Last Modified: Fri, 05 Jan 2018 10:14:24 GMT  
		Size: 106.8 MB (106750528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
