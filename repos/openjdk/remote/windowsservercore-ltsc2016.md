## `openjdk:windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:fbdce5a0e4a8b204e2206ce0cf8df8ce83776e91c59b303c10709afd3165ec59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `openjdk:windowsservercore-ltsc2016` - windows version 10.0.14393.2007; amd64

```console
$ docker pull openjdk@sha256:cab3190c7d0ffaedbde8b2d8421b54007207eb33716d7d3428d10771ab9114bf
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5489898449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f0b5980d71983e0701bbf3835a850928a2c5aed30b68c6b0a1ebd0b34f7f40`
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
# Thu, 25 Jan 2018 15:55:34 GMT
ENV JAVA_VERSION=8u161
# Thu, 25 Jan 2018 15:55:35 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.161-1
# Thu, 25 Jan 2018 15:55:36 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.161-1.b14.ojdkbuild.windows.x86_64.zip
# Thu, 25 Jan 2018 15:55:36 GMT
ENV JAVA_OJDKBUILD_SHA256=7fcd9909173ed19f4ae6c0bba8b32b1e6bece2d49eb9d87271828be8121fc31b
# Thu, 25 Jan 2018 15:57:20 GMT
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
	-	`sha256:c541dc121c3e68040c30d2658609b3fba4375d85346a122821adb34250afed17`  
		Last Modified: Thu, 25 Jan 2018 16:03:06 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4bdfa57c090065da5acb49ea985f278769f7101c5893fc92f64d11aeab00e1`  
		Last Modified: Thu, 25 Jan 2018 16:03:06 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c72c96e954b0e1740b20e0ded6766c87ebde113e7e667c33c24048fb93853f2`  
		Last Modified: Thu, 25 Jan 2018 16:03:07 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f6a8bd05b5c996a00eb63ee3dfbae560d611a3ce50b49e47d52bb10c24eea7`  
		Last Modified: Thu, 25 Jan 2018 16:03:06 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e75018de9c50ba09393008cc42d8b5b2349831838cac05b31848c18a813dfa`  
		Last Modified: Thu, 25 Jan 2018 16:05:14 GMT  
		Size: 111.0 MB (110954009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
