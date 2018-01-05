## `openjdk:jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:bc62d0d04c0ba301016ce9224409ca0bdccc2188adee7c2fbb3818c583bafc32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `openjdk:jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2007; amd64

```console
$ docker pull openjdk@sha256:5d2506b3a5cf8b685fbec3311cc2e443bdd4adb19fabc1c77b1a3485b3e90c7e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5489810476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec360f35b2c0c4e7359773bdb851bd3b9f2206b6609c139a4304fed3b509bc5e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
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
# Fri, 05 Jan 2018 10:03:44 GMT
ENV JAVA_VERSION=8u151
# Fri, 05 Jan 2018 10:03:45 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.151-1
# Fri, 05 Jan 2018 10:03:46 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.151-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 05 Jan 2018 10:03:47 GMT
ENV JAVA_OJDKBUILD_SHA256=1905ea74b79d6d1d2ea2b2b6887c14770f090fbb8b46e7e1bfb56e92845e9cf2
# Fri, 05 Jan 2018 10:05:39 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:cc4e252867f29e642669fe93ef86b7f2b4a73881257ba5ac9f10c39d39041f42`  
		Last Modified: Fri, 05 Jan 2018 10:13:26 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c4a9dafb90ea7dad4ac3b4a3f7182757d78b0f757954c2115d899647ce0ade`  
		Last Modified: Fri, 05 Jan 2018 10:13:29 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70a9966844f0e9aade596c4f36b562ad59f4a6980f3e8a0bb79fe9144eb1a5`  
		Last Modified: Fri, 05 Jan 2018 10:13:26 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823bf2c1f3933edba20aaf2853f38bf8b121106ffc2ac14f72b122b6db328f72`  
		Last Modified: Fri, 05 Jan 2018 10:13:27 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e36ac993a6e88660e9243b7a874f8cde1ba9415e6351a28139eb146f9b6cd69`  
		Last Modified: Fri, 05 Jan 2018 10:13:45 GMT  
		Size: 110.9 MB (110866060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
