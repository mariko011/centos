## `openjdk:9-windowsservercore`

```console
$ docker pull openjdk@sha256:c03fe7824b9dd9633d36f563f17a7d8e582bedabb1eb344b47b1e70d56c8c267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.192; amd64

### `openjdk:9-windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull openjdk@sha256:43b3b13d424c44d929cf87f6b8c61fc0953f56d834bd1c1a0511734cc39ff8e0
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5575365333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c057d81fd178cca2bdf02db78ada73044ac7357893ba79b78b5251942af8ee8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 10:02:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 05 Jan 2018 10:02:18 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 05 Jan 2018 10:03:43 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 05 Jan 2018 10:08:19 GMT
ENV JAVA_VERSION=9.0.1
# Fri, 05 Jan 2018 10:08:19 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.1-1
# Fri, 05 Jan 2018 10:08:20 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.1-1.b01.ojdkbuild.windows.x86_64.zip
# Fri, 05 Jan 2018 10:08:21 GMT
ENV JAVA_OJDKBUILD_SHA256=53d857727194635546d8af1e9c93ff272b737a46c1a03ef3d99b8078ab4e11f2
# Fri, 05 Jan 2018 10:10:45 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Fri, 05 Jan 2018 10:10:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c86d0434e36d69287bea586f96045245d5ee4f04e4e2a5edf6881dbbfdc628c3`  
		Last Modified: Fri, 05 Jan 2018 10:13:30 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8043493a566c4b6517006bcc781208f6a6ed6679b087349f1c3abcfbc7c5bbc0`  
		Last Modified: Fri, 05 Jan 2018 10:13:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9863b66916588215ba59a3ee437280bdacb3e25f890c1f8886ddc754f6ed36b1`  
		Last Modified: Fri, 05 Jan 2018 10:13:32 GMT  
		Size: 4.9 MB (4932063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d931da49980d0d4a417819ae4f1408940fd28e2cda6a4c5dac0baab32713c695`  
		Last Modified: Fri, 05 Jan 2018 10:14:50 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4929ef856d4e4bffd6fb5247f0d218e18a21707b917f56565ab377ed4a598d90`  
		Last Modified: Fri, 05 Jan 2018 10:14:48 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba2be08aa56925cc021618902b262fbc6ab036c8492974b75c5e1bca258dd96`  
		Last Modified: Fri, 05 Jan 2018 10:14:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f033c22fc1284318bba76038b7fdf3c4df8af60b0689a22d7f60688b36b9398`  
		Last Modified: Fri, 05 Jan 2018 10:14:48 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1aed251f3d14a8324fa037f67ba058fd1003c2baeb3ce100eb4e88fb00f48`  
		Last Modified: Fri, 05 Jan 2018 10:15:09 GMT  
		Size: 196.4 MB (196419721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e868bf545ce852fdb5ff7215cfc2d98b345b0039ddb355e510a7e36986db083a`  
		Last Modified: Fri, 05 Jan 2018 10:14:48 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-windowsservercore` - windows version 10.0.16299.192; amd64

```console
$ docker pull openjdk@sha256:377690381ddd7c7ab48c2bf65f495d69d02c769188462ea7a6fd21444f3df406
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3164647355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f15850d0881a5e0fb2d8bc492af26fbb6d4a9bd656a1b8f84dc884ddd4cca4`
-	Default Command: `["jshell"]`
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
# Mon, 08 Jan 2018 17:31:32 GMT
ENV JAVA_VERSION=9.0.1
# Mon, 08 Jan 2018 17:31:32 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.1-1
# Mon, 08 Jan 2018 17:31:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.1-1.b01.ojdkbuild.windows.x86_64.zip
# Mon, 08 Jan 2018 17:31:34 GMT
ENV JAVA_OJDKBUILD_SHA256=53d857727194635546d8af1e9c93ff272b737a46c1a03ef3d99b8078ab4e11f2
# Mon, 08 Jan 2018 17:33:32 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Mon, 08 Jan 2018 17:33:34 GMT
CMD ["jshell"]
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
	-	`sha256:637b829d7d3d414d38a98f644b48cc332e4916ed9ba272d3dbad61be5ba4cef1`  
		Last Modified: Mon, 08 Jan 2018 17:35:00 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114fdb9fd2c1fc754a8d53aa918d7a06dba408386992efe77cbc564a9a614142`  
		Last Modified: Mon, 08 Jan 2018 17:34:57 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac6aa7956d30501bac0c6740256d4e10352318f39fe88a59d2b56b0ca4995a9`  
		Last Modified: Mon, 08 Jan 2018 17:34:57 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669a165d226084172e3cbd5a35c87fabd90bee79bedf9d573fcc74c142c685a1`  
		Last Modified: Mon, 08 Jan 2018 17:34:57 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22a4fe50b230e95f4d07952bdf3acee5ebf20e1272bfa14bbaf4ed945406ae9`  
		Last Modified: Mon, 08 Jan 2018 17:35:17 GMT  
		Size: 196.1 MB (196065234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033863dc82f870ed8fb3891bd7de46eb69f81cc98a27fad398ad6384e4449764`  
		Last Modified: Mon, 08 Jan 2018 17:34:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
