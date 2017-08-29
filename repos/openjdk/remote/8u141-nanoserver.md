## `openjdk:8u141-nanoserver`

```console
$ docker pull openjdk@sha256:9b473394c0cad97c677e6696a8ebe86b80d689ef475089deab7ee195c87dd83d
```

-	Platforms:
	-	windows; amd64

### `openjdk:8u141-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.2 MB (490243106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e8104e93aee85a2473e1887c5e6012780e97304ddeb95c66dd4958ccf24491`
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
# Tue, 29 Aug 2017 17:43:20 GMT
ENV JAVA_VERSION=8u141
# Tue, 29 Aug 2017 17:43:22 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.141-1
# Tue, 29 Aug 2017 17:43:24 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.141-1.b16.ojdkbuild.windows.x86_64.zip
# Tue, 29 Aug 2017 17:43:26 GMT
ENV JAVA_OJDKBUILD_SHA256=2911ccece06500cc5bd37cb76028d4bd2b6261cb7f77e39404895e18d430d383
# Tue, 29 Aug 2017 17:44:05 GMT
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
	-	`sha256:0c931082db1dcc43e884563d4247999199682d7460a49102db7eae5c90a21d07`  
		Last Modified: Tue, 29 Aug 2017 17:45:13 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381c156647cb5357aa9c9c7b5167fb1118ac69c2bdafb1e73763c2a436275eba`  
		Last Modified: Tue, 29 Aug 2017 17:45:14 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44437634f4d278512fccf4cb131a145f384709824811d788457bff23a08982f`  
		Last Modified: Tue, 29 Aug 2017 17:45:13 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0731a30414bf7520bf9876936ce8c89ea9e38da87aa44bc570b6ba7e55d140cc`  
		Last Modified: Tue, 29 Aug 2017 17:45:13 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f04e5d48f4a9d9e6731f9ba4ae3e5071d73ba2ce05480a92372ae0cc7e753d`  
		Last Modified: Tue, 29 Aug 2017 17:45:29 GMT  
		Size: 106.6 MB (106569784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
