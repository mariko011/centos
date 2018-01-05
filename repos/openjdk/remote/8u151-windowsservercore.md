## `openjdk:8u151-windowsservercore`

```console
$ docker pull openjdk@sha256:745e365e1f011c558a33de2c4083acfa25a97ea39035c218918d177c61ab7337
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.125; amd64

### `openjdk:8u151-windowsservercore` - windows version 10.0.14393.2007; amd64

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

### `openjdk:8u151-windowsservercore` - windows version 10.0.16299.125; amd64

```console
$ docker pull openjdk@sha256:e0aa2755d53d697da73e352a9ba106b49892124e0f827a61fa59c1226cc49abb
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2978639203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9925cbc53071b35416db1a66d64450f0f536d7bac97f2644357171e49ae46a7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Thu, 14 Dec 2017 01:07:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 21 Dec 2017 00:51:52 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 21 Dec 2017 00:53:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 21 Dec 2017 00:53:08 GMT
ENV JAVA_VERSION=8u151
# Thu, 21 Dec 2017 00:53:09 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.151-1
# Thu, 21 Dec 2017 00:53:10 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.151-1.b12.ojdkbuild.windows.x86_64.zip
# Thu, 21 Dec 2017 00:53:11 GMT
ENV JAVA_OJDKBUILD_SHA256=1905ea74b79d6d1d2ea2b2b6887c14770f090fbb8b46e7e1bfb56e92845e9cf2
# Thu, 21 Dec 2017 00:54:41 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da9070a4da21ca9a4ce14f2c4d0f840c44addcfa4b5c90c421df47e49151d7e6`  
		Last Modified: Thu, 14 Dec 2017 02:02:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4727218d80350734a2ff75950b02669cb9e891a64cc496a6fe850c84e9bf19`  
		Last Modified: Thu, 21 Dec 2017 01:04:54 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7f8227c2e7979ac78eaadd86ab48aa19cc620c09b553a6098103be58694b0`  
		Last Modified: Thu, 21 Dec 2017 01:04:55 GMT  
		Size: 4.4 MB (4420909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd15380ace1f2af9349108eb8fb37b5d3841a6d193fb526b687aa48e4434e19`  
		Last Modified: Thu, 21 Dec 2017 01:04:51 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8d73265ef80957a4cd9b7c3b00057bf5c8a11eb9ae6922539b6b24f692abcc`  
		Last Modified: Thu, 21 Dec 2017 01:04:51 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917bbd95ecbef5c5a115a05b0b4600a25a83db1cb25cacf8a264e4ddcfbee3ff`  
		Last Modified: Thu, 21 Dec 2017 01:04:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a83d86609fdd7992dd3cb190ef4c6b6885c9d7541b3fb197d25e4a92216baa`  
		Last Modified: Thu, 21 Dec 2017 01:04:51 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814c706652c0f6fccc2b47f7e6e563aceaac942d0e5d47ddcaad5a7321d113fa`  
		Last Modified: Thu, 21 Dec 2017 01:05:05 GMT  
		Size: 110.4 MB (110386068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
