## `openjdk:8-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:d288f909ae0d911844509a574baeea78e1d7c0214d1e161bad421ba71ab4fd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `openjdk:8-windowsservercore-1709` - windows version 10.0.16299.125; amd64

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
