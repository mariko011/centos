## `openjdk:nanoserver`

```console
$ docker pull openjdk@sha256:7606050daa6e08d984eead27c421b04cd0f8ee807f54885221514f0fc7902a64
```

-	Platforms:
	-	windows; amd64

### `openjdk:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.2 MB (476188760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c91f2ca779072ed9a82792fabb91708192d2d13b0185afdf9736293b712eb7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:04:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:04:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:04:30 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:04:32 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:04:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:04:35 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:05:11 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aac3aa579c2595a79ccf9025bef2fde6d5213b295838ee5f7943f41aecd3e7`  
		Last Modified: Mon, 12 Jun 2017 23:06:33 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a9ba6999c3705a3195fd6bab0516b439a97609fbe1777a45dc205cb6cb6e`  
		Last Modified: Mon, 12 Jun 2017 23:06:35 GMT  
		Size: 877.2 KB (877153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311cac5d71cd32acb350e3be5d4a1bfdb3de20ac1820292b827f2d6326a92b80`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672329fb15d9058e3ceac6c30244b2d6b527fdc0263b3fe5ad21b35a7e486dda`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d2354d03a192bdd790861c32b8847d55a479e264d27c53e730b8a6c58b247`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3033d7ad16dfc6d999a124199e98deb2c758746410cb640697199aa5d6b17b5e`  
		Last Modified: Mon, 12 Jun 2017 23:06:27 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e25037ce95415eb26305125ece84f53d663d58cc76d6d2ccd3406054a17869`  
		Last Modified: Mon, 12 Jun 2017 23:06:39 GMT  
		Size: 106.6 MB (106577612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
