## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:a1068091a053c114ddea864b49f8c4b2ed09a50fa81657a620c5a4edfab5ac09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `openjdk:8-windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull openjdk@sha256:b85cb21414c4ae451f37f9966cb899ab034d01ba5d1e0c6e94fa6d4bcc81ac9f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5472704798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0241274a4ebb28ada88265a839b48427c17c3dfb74a03dbc9370ca7e36d0d3a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:14:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Nov 2017 10:10:33 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 Nov 2017 10:11:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Nov 2017 10:11:33 GMT
ENV JAVA_VERSION=8u151
# Wed, 15 Nov 2017 10:11:34 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.151-1
# Wed, 15 Nov 2017 10:11:35 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.151-1.b12.ojdkbuild.windows.x86_64.zip
# Wed, 15 Nov 2017 10:11:36 GMT
ENV JAVA_OJDKBUILD_SHA256=1905ea74b79d6d1d2ea2b2b6887c14770f090fbb8b46e7e1bfb56e92845e9cf2
# Wed, 15 Nov 2017 10:19:47 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a4bd6cd94ee2a374930b7554f113d83a6d2d7c4fc6059acd6f2f60e0f29d2f26`  
		Last Modified: Wed, 15 Nov 2017 10:26:12 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acb2bde72dcc2e5e724a84b1a64f9aa4b8db92ae0f2c337f5f5c728b2bbcab3`  
		Last Modified: Wed, 15 Nov 2017 10:26:12 GMT  
		Size: 1.1 KB (1129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217d30fc1c45c3e16e1dc42ab6a68b86113029a8fc7765137464673f87eca4a1`  
		Last Modified: Wed, 15 Nov 2017 10:26:13 GMT  
		Size: 4.9 MB (4878900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af656428c1d850451b01ef55a32222a0e9a55463301c61380c0a27ba53af148b`  
		Last Modified: Wed, 15 Nov 2017 10:26:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ba1a504627925cacaa5e43eab17c0e58bfe54c53cd3e6315365c9459674e20`  
		Last Modified: Wed, 15 Nov 2017 10:26:09 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a398081a0dc86878e5b506017abc38727c06ba4251754bc6ceb5ef6cf4c185`  
		Last Modified: Wed, 15 Nov 2017 10:26:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27272798ca24879a07dfb8a23c86426913d874e86c9e074e9d970fd8fb4f4ab1`  
		Last Modified: Wed, 15 Nov 2017 10:26:09 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d296abe83ef9589f0116acba7c70bfa96940ac58d4a61feb6a75d34e2efa7e5`  
		Last Modified: Wed, 15 Nov 2017 10:26:22 GMT  
		Size: 110.8 MB (110839873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.16299.64; amd64

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
