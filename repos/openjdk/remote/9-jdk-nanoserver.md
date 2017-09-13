## `openjdk:9-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:3c318da48217c85dfe751110dd5e010cce13f8e1ec9997be630e64782cea04c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `openjdk:9-jdk-nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull openjdk@sha256:c821cdd4fee0c215c30ae19ca3e81fabe95def35b7740787e451b059b7421fe8
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584966240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ccf3b678192e229e8757c77b9cca9f16171f17c23dc07c904f1390c8fbe1bac`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:11:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Sep 2017 09:11:50 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 13 Sep 2017 09:12:17 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 13 Sep 2017 09:14:27 GMT
ENV JAVA_VERSION=9-b154
# Wed, 13 Sep 2017 09:14:29 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Wed, 13 Sep 2017 09:14:32 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Wed, 13 Sep 2017 09:14:34 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Wed, 13 Sep 2017 09:15:31 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 13 Sep 2017 09:15:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de9f50327b9746b9ac825e3c11432fc88fd8e7b1c2b048ec4eaac8646d9dd8c1`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c0b42623fd5eb4a0690f71e3356978a66d743a53b9d685b1222a84f79772e9`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012f00dd331eeee3e6e6919c63d871e8e78dda9b6be2f8e922006048ccbfde99`  
		Last Modified: Wed, 13 Sep 2017 09:17:25 GMT  
		Size: 826.7 KB (826653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90af7b0ef5bb61560bb61c0a2753fbc86997bb189d5ffa9a3446521d499e830`  
		Last Modified: Wed, 13 Sep 2017 09:21:49 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb687cde24c4d6a8a4905fc22cb8ae6157b1ccaa4ca7d19c865bdebb0655caa`  
		Last Modified: Wed, 13 Sep 2017 09:21:43 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e7b2a39cd25ae59884853ec333e82aa300dff2cbc6dfc4a8bd485e147eca09`  
		Last Modified: Wed, 13 Sep 2017 09:21:42 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a28f52226ed165bfff49008af783ff43b24b5f1bd0fa9f1858ef5216147f5ae`  
		Last Modified: Wed, 13 Sep 2017 09:21:43 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0674ec7b359273777c6eb9a46e77c8431c65d582d981c6f9143e478f40626a`  
		Last Modified: Wed, 13 Sep 2017 09:22:05 GMT  
		Size: 191.0 MB (190990697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5534c04e1e693669ae05ce79834c6a6b2969e1615e68a966725eca0eeed7289`  
		Last Modified: Wed, 13 Sep 2017 09:21:42 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
