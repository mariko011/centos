## `openjdk:9-nanoserver`

```console
$ docker pull openjdk@sha256:19b4c0ff40d1531a49f9a293711c1ead5ea60a1d2cffa2ba8e4f1726f899f615
```

-	Platforms:
	-	windows; amd64

### `openjdk:9-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.7 MB (560662753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce6a25cd5a7b8451f9a68340e1b406d8f2493d537c03f54aba328bbf043e618`
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
# Wed, 19 Jul 2017 21:15:45 GMT
ENV JAVA_VERSION=9-b154
# Wed, 19 Jul 2017 21:15:47 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Wed, 19 Jul 2017 21:15:49 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Wed, 19 Jul 2017 21:15:51 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Wed, 19 Jul 2017 21:16:53 GMT
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
	-	`sha256:c06313436cea54b1981ef560ed93e77ff0bf9d84442313e56be573b9bf762c91`  
		Last Modified: Wed, 19 Jul 2017 21:18:11 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717ebd3fde1e000a950c23b2e9489cdb683db914992a47173cf722696458e6da`  
		Last Modified: Wed, 19 Jul 2017 21:18:11 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52ee0a69cc0bd496c55144f1203a51e905755598ddd1e1f8cc86f3db6e761b3`  
		Last Modified: Wed, 19 Jul 2017 21:18:12 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998dbf333e8840fa64914adc145ec8e5a34320590830315f91d32f04d07eb5c5`  
		Last Modified: Wed, 19 Jul 2017 21:18:12 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeedc54f6b41242c23636a4f7c5f588a6e08594b38af775ed8c865f0244ecef`  
		Last Modified: Wed, 19 Jul 2017 21:22:04 GMT  
		Size: 191.1 MB (191051611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
