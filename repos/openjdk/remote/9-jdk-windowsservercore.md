## `openjdk:9-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:2de071e4882bb8bac4ddb364dd4a73823ae9faa8816607446b7ab316b844958b
```

-	Platforms:
	-	windows; amd64

### `openjdk:9-jdk-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5431766273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da40ab965bb0e7a15aa6f1c8695fb25f09eb03da57dc669370e373f804581e9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:01:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:03:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 19 Jul 2017 21:14:28 GMT
ENV JAVA_VERSION=9-b154
# Wed, 19 Jul 2017 21:14:30 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Wed, 19 Jul 2017 21:14:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Wed, 19 Jul 2017 21:14:35 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Wed, 19 Jul 2017 21:15:34 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cdc71225c532b824eef3561443b9f467cb4a7145c1d6836f791d1022163d86`  
		Last Modified: Mon, 12 Jun 2017 23:05:29 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cb072dba6fa4b283bcc6b25e88da27280f70d687403140a7965b13c5c2bbc2`  
		Last Modified: Mon, 12 Jun 2017 23:05:32 GMT  
		Size: 5.0 MB (4972873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20905d3e22b26f57bfd90b49ccbd17f5cb7ab9da5d95f60257accc7eae542d49`  
		Last Modified: Wed, 19 Jul 2017 21:17:36 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7a21bdddcf9366d2b53cb274f6668aa0822835735a2ac7579c0ad09345d04b`  
		Last Modified: Wed, 19 Jul 2017 21:17:36 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe36d67ae90aa9b07f0438bb5cea94620beda768eacba1824ab91c0dd76c63b8`  
		Last Modified: Wed, 19 Jul 2017 21:17:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3045aba9930ba854996c1101bc232194c4d8b248242383b304e7208a9cbe810b`  
		Last Modified: Wed, 19 Jul 2017 21:17:36 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf401156a6c6cab517d9310adab21daf12bc06f2bc22bbe829bff4130fcfbea`  
		Last Modified: Wed, 19 Jul 2017 21:17:55 GMT  
		Size: 194.9 MB (194898161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
