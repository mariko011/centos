## `openjdk:jdk-nanoserver`

```console
$ docker pull openjdk@sha256:542b556abb50e02a4f6c9fee5b6c63f94659e2e307dc4ac39872307fdfdcc34f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `openjdk:jdk-nanoserver` - windows version 10.0.14393.2007; amd64

```console
$ docker pull openjdk@sha256:dd9366e75877c5d962e208103221fe5618721199a77551fdb48cd1ff5db7125b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.7 MB (510703821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74325ebd77714fe17f02ea4eeba17066f3ca4d129daebdc29de29aefdf026ddd`
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
# Thu, 25 Jan 2018 16:00:43 GMT
ENV JAVA_VERSION=8u161
# Thu, 25 Jan 2018 16:00:44 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.161-1
# Thu, 25 Jan 2018 16:00:45 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.161-1.b14.ojdkbuild.windows.x86_64.zip
# Thu, 25 Jan 2018 16:00:46 GMT
ENV JAVA_OJDKBUILD_SHA256=7fcd9909173ed19f4ae6c0bba8b32b1e6bece2d49eb9d87271828be8121fc31b
# Thu, 25 Jan 2018 16:02:22 GMT
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
	-	`sha256:c105d9e520eba980b472844312f63f305623c9b6573c486dd0844da35839af1d`  
		Last Modified: Thu, 25 Jan 2018 16:08:08 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7dbf544b9e6690fc643c1f1744a48877b61f75e5899a71fe8c9ed9de552cfb`  
		Last Modified: Thu, 25 Jan 2018 16:08:08 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a125d2721867b263f5066f6616ae5baccd0fc6400785b6b951942fe9d6c10560`  
		Last Modified: Thu, 25 Jan 2018 16:08:08 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692db749bd84ead20911b4e8af163e6fb1bce8f38029ecca65f2822769edc6c3`  
		Last Modified: Thu, 25 Jan 2018 16:08:08 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f60f38aef6ce7fa8dbdf604b36fdf7a812e47c1ac21599314da4a2a7f1c43d`  
		Last Modified: Thu, 25 Jan 2018 16:08:23 GMT  
		Size: 106.8 MB (106803664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
