## `openjdk:8u161-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:2db107095309efdccf565eca3a943a480bf3896399aa8abee327cb95a663025e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.192; amd64

### `openjdk:8u161-jdk-windowsservercore-1709` - windows version 10.0.16299.192; amd64

```console
$ docker pull openjdk@sha256:d1fb4d79edb64337e39eeb34370fd120c98f25d0da30c5833a4f4a3c71ed7675
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3079199008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3773a6e246ce5e0683235f1c0fb73f0bd6dbe01872208f6de4b1564d31fd4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:46:54 GMT
RUN Install update 10.0.16299.192
# Mon, 08 Jan 2018 17:27:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 08 Jan 2018 17:27:33 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 08 Jan 2018 17:29:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 25 Jan 2018 15:57:31 GMT
ENV JAVA_VERSION=8u161
# Thu, 25 Jan 2018 15:57:32 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.161-1
# Thu, 25 Jan 2018 15:57:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.161-1.b14.ojdkbuild.windows.x86_64.zip
# Thu, 25 Jan 2018 15:57:34 GMT
ENV JAVA_OJDKBUILD_SHA256=7fcd9909173ed19f4ae6c0bba8b32b1e6bece2d49eb9d87271828be8121fc31b
# Thu, 25 Jan 2018 16:00:32 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f887ccb8077bdc1f1fedd2da6066bb3542c528f5d103b40659ac25785ba4b9b`  
		Last Modified: Fri, 05 Jan 2018 19:38:30 GMT  
		Size: 689.7 MB (689720734 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:189c9822c1fc60043703fa16f44b1cab80d3a786d35bd6b61628d2b3f1fb9635`  
		Last Modified: Mon, 08 Jan 2018 17:34:16 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a9ce91e9e577e170b629751aa0ed697e6cb3bd7ceb0ee3c4a1f1cd6ee3c2c0`  
		Last Modified: Mon, 08 Jan 2018 17:34:15 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54cd82960b9743e4501d1aa71a781fc291c73a46514cbdf850807efaca102c6f`  
		Last Modified: Mon, 08 Jan 2018 17:34:17 GMT  
		Size: 4.6 MB (4552415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc6bd37c5d2f6e3fdcf8b9acf6a90733a7701711a1243f300387737b8c13bcd`  
		Last Modified: Thu, 25 Jan 2018 16:05:38 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb60991449ace18250c5bae57e07a063d35bd0e36bdb117c5c07c64ac2e72dde`  
		Last Modified: Thu, 25 Jan 2018 16:05:38 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4d050c2a162642eb554c32575c15a83fbc778ba530cacb8348a119a3acf14d`  
		Last Modified: Thu, 25 Jan 2018 16:05:40 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf93b06d88689776d484b81b3dd0e0fe2cb2732af0f0643d3b55bad7488aad4`  
		Last Modified: Thu, 25 Jan 2018 16:05:38 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc3768de89e21f28caa85dc1d1ca37b7e5667a4a32759990a0c646f94412628`  
		Last Modified: Thu, 25 Jan 2018 16:07:46 GMT  
		Size: 110.6 MB (110618105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
