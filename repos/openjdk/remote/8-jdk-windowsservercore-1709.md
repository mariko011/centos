## `openjdk:8-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:832adadf0153a387694ec17b4f30535a59418bee519d90c57bbae92c9b4be0a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `openjdk:8-jdk-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull openjdk@sha256:9108e8f38b1f3e7a2f267788cba1aac777bf2077bcda6f1c47e4515c6dd94665
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2790784898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f056e4df884cd499bb47049b2aae983a651474f77205c218c31b697df808d1a2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 03:14:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Nov 2017 10:01:46 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 23 Nov 2017 10:02:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 23 Nov 2017 10:02:28 GMT
ENV JAVA_VERSION=8u151
# Thu, 23 Nov 2017 10:02:29 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.151-1
# Thu, 23 Nov 2017 10:02:30 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.151-1.b12.ojdkbuild.windows.x86_64.zip
# Thu, 23 Nov 2017 10:02:31 GMT
ENV JAVA_OJDKBUILD_SHA256=1905ea74b79d6d1d2ea2b2b6887c14770f090fbb8b46e7e1bfb56e92845e9cf2
# Thu, 23 Nov 2017 10:04:03 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72ebc5a9d332e2a64fb3a65257e303100db8bcd07f6ccb562e3dc2e77f2cd3c5`  
		Last Modified: Thu, 23 Nov 2017 10:07:03 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c50c8d7767cfa154fcfd7f4cd572b8f7ee545d8fc35a60f2a155c2effae733c`  
		Last Modified: Thu, 23 Nov 2017 10:07:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfc8f1e781f4bcb2e60e1b0494ed023dc05ee9d0589aceca4ce714901a85c70`  
		Last Modified: Thu, 23 Nov 2017 10:07:04 GMT  
		Size: 4.3 MB (4333863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6829f240df1e89f24a0d9ad72e6e02e36ead3f58c87a2bbafda46db3fbe2b2`  
		Last Modified: Thu, 23 Nov 2017 10:07:00 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f436aee16eb7c709d76c6eb61574ee002fca06e7f75fadd713b0fb57f84568a`  
		Last Modified: Thu, 23 Nov 2017 10:07:00 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dd4f498c207af7be16b7fddf72fe5f313fe5c97411a5f019c34370a538f673`  
		Last Modified: Thu, 23 Nov 2017 10:07:00 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883cfa0c77dfd5b70c11eeb609b1abdb53667aa454bf51fd45706cee1cb4ce18`  
		Last Modified: Thu, 23 Nov 2017 10:07:00 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ed76e12b94aedff43a47d8704185737ca51e1f73b1ab4ca15c50be26e364ee`  
		Last Modified: Thu, 23 Nov 2017 10:07:13 GMT  
		Size: 110.3 MB (110292204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
