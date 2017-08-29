## `openjdk:9-b154-nanoserver`

```console
$ docker pull openjdk@sha256:9f2c2c4f3015bafbb688e235fca3d7140f6bf0b46b623b070755bc47c2d1ffae
```

-	Platforms:
	-	windows; amd64

### `openjdk:9-b154-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **574.6 MB (574642600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6733680668326a99e1b4338205f40954c891e786f098a3fcf394f9755cbebc3`
-	Default Command: `["jshell"]`
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
# Fri, 28 Jul 2017 19:07:57 GMT
ENV JAVA_VERSION=9-b154
# Fri, 28 Jul 2017 19:07:58 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Fri, 28 Jul 2017 19:08:00 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Fri, 28 Jul 2017 19:08:04 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Fri, 28 Jul 2017 19:08:55 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Tue, 29 Aug 2017 17:44:19 GMT
CMD ["jshell"]
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
	-	`sha256:85f4508f691bc4d06b5bc8f52ebdbf41a9d0e4ab7979c427bbb2a23df821cbf0`  
		Last Modified: Fri, 28 Jul 2017 19:10:57 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d9c93d10b3df424f1a8062058b10c37e0d7529b2645722a5bdc9daa702a9da`  
		Last Modified: Fri, 28 Jul 2017 19:10:57 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23eec213ccb6e91aeaa925c44a85aaa717866e5c4c4787febc897406d0696909`  
		Last Modified: Fri, 28 Jul 2017 19:10:58 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e29a016a4e1bef4383a4a64a0b84c7ed0725f51778a0ca48c344a6809efd2d`  
		Last Modified: Fri, 28 Jul 2017 19:10:57 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d1fcef66321b061ec38dc187bd426d83dde92347b511013831b56276f3fbc`  
		Last Modified: Fri, 28 Jul 2017 19:11:15 GMT  
		Size: 191.0 MB (190968324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59486be64ba88d1cbbfafb9ee7bc8adf5dc887a08e59e62d87452d3031bc9a8c`  
		Last Modified: Tue, 29 Aug 2017 17:46:02 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
