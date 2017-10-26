## `openjdk:nanoserver`

```console
$ docker pull openjdk@sha256:e470989b1661d82803086245d3b5f4458084651b41aac3c99c921bf3c6cad363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:f8145a6caf1188e0fd61a8ad93ca9fa32ec0f41d5dbf853b1b505be77bc7b685
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.0 MB (502006718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af59be351deb96f15121c44da84feeb33a6a27cde3a0d46a070e2100a4df9bd2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:18:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 09:04:29 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 11 Oct 2017 09:04:44 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Oct 2017 09:04:46 GMT
ENV JAVA_VERSION=8u141
# Wed, 11 Oct 2017 09:04:48 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.141-1
# Wed, 11 Oct 2017 09:04:49 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.141-1.b16.ojdkbuild.windows.x86_64.zip
# Wed, 11 Oct 2017 09:04:51 GMT
ENV JAVA_OJDKBUILD_SHA256=2911ccece06500cc5bd37cb76028d4bd2b6261cb7f77e39404895e18d430d383
# Wed, 11 Oct 2017 09:05:36 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:357b0f27c7da8f9e64125f39f5d19f42647c49dadd423259e05be758449b1cd8`  
		Last Modified: Wed, 11 Oct 2017 02:30:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6bb69a47f21f3b2c7bd166952c6ec2cd365216685bc7866720dd94b4e19fa1`  
		Last Modified: Wed, 11 Oct 2017 09:09:34 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cd384503020b194528c47dc710fa247ebf8bf336b7669a572b309c7b524fdb`  
		Last Modified: Wed, 11 Oct 2017 09:09:34 GMT  
		Size: 900.3 KB (900252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f84f006b7612a17feb74037c61c18c88db252312895d063c6cd85692ae1654a`  
		Last Modified: Wed, 11 Oct 2017 09:09:31 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464abb2b010611e1860fbe7d6e1659dcdad64f51fc8a75b345ec2ad24eccd606`  
		Last Modified: Wed, 11 Oct 2017 09:09:31 GMT  
		Size: 964.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b231ac66c0199750c5782643b58e81bd7fd9e1ef390d9d4ea5e8752530b5e5`  
		Last Modified: Wed, 11 Oct 2017 09:09:31 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b175d0c88592f9df063698be1076271d9fb86e573ff92faf409965f990a80afd`  
		Last Modified: Wed, 11 Oct 2017 09:09:31 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e7537270ca5b26c89ab953ebde5eb5cf1df0eb202e95f55e28ab04b7903966`  
		Last Modified: Wed, 11 Oct 2017 09:09:47 GMT  
		Size: 106.7 MB (106651577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
