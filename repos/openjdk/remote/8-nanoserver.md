## `openjdk:8-nanoserver`

```console
$ docker pull openjdk@sha256:296f63f50f52a2a33592eaecd97fee5b1977969adbf0b9510bf3bb309be98ef6
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.2 MB (490190881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6f7672847f478df5f2e1d5d4776be027e416254ae7dbd56f8c9673b0cd8980`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 19:05:33 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 28 Jul 2017 19:05:49 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 28 Jul 2017 19:05:51 GMT
ENV JAVA_VERSION=8u131
# Fri, 28 Jul 2017 19:05:53 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Fri, 28 Jul 2017 19:05:55 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Fri, 28 Jul 2017 19:05:58 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Fri, 28 Jul 2017 19:06:31 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:815a90c7de022ec1ac26cff95bb4490cdfa114edbe90c97dad360471afc1acdf`  
		Last Modified: Fri, 28 Jul 2017 18:52:10 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6116b79d04f9c015daa69cc45f0b8ba607fa12113b22f8f53243090b11d76a1a`  
		Last Modified: Fri, 28 Jul 2017 19:09:56 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da75c5c9158ca0ea57bd8c1330f3a5e7f924bd18e7aab39f4fef5c1f0d5b53e2`  
		Last Modified: Fri, 28 Jul 2017 19:09:56 GMT  
		Size: 819.4 KB (819352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502259ba05fb6381e4d608a32daf56a803672f2e7bdf727e163625e4a14f996a`  
		Last Modified: Fri, 28 Jul 2017 19:09:50 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a478fa8b68cee581efd203cd44d7b586a5545ef5ee35d2369339c926fe483755`  
		Last Modified: Fri, 28 Jul 2017 19:09:48 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700bf4213da2147f0cc5364d04db4129337ab3d88752b1536b9e5588498240df`  
		Last Modified: Fri, 28 Jul 2017 19:09:49 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfab142404dd0de87abc4f1c9890e346eaf7e46246b3b730e5ebb1a15105f899`  
		Last Modified: Fri, 28 Jul 2017 19:09:48 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38fb851a6a5ede30a17e8e0307dd8906189a256cc42ebf4a15fcb9fd1698cdf`  
		Last Modified: Fri, 28 Jul 2017 19:10:02 GMT  
		Size: 106.5 MB (106517570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
