## `openjdk:9-nanoserver`

```console
$ docker pull openjdk@sha256:9f189557548ce5894fbe10e70409fb5a59521946a1ae9477307d8afc493761be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:9-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:99b9f787815eb504ec7ddd2fb99fd3f44172206cd4607e55545f1122e951790f
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 MB (586429233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e85d1996d65a6cf76d4c044f82e0f1936a1784d9f41dcb7d99f87c6638c09c9`
-	Default Command: `["jshell"]`
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
# Wed, 11 Oct 2017 09:07:33 GMT
ENV JAVA_VERSION=9-b154
# Wed, 11 Oct 2017 09:07:35 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Wed, 11 Oct 2017 09:07:37 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Wed, 11 Oct 2017 09:07:39 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Wed, 11 Oct 2017 09:08:35 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 09:08:37 GMT
CMD ["jshell"]
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
	-	`sha256:2a3f0996d79fbe42112d55b88c565076fbd249355936dbab78aef163cd783090`  
		Last Modified: Wed, 11 Oct 2017 09:10:58 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d55cda5c3aba5a1672499ac80afced3d0db87eb4f1f9be3ebd7fc9dc60f1e41`  
		Last Modified: Wed, 11 Oct 2017 09:10:50 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9807420e512dca94b7b9c4edf40d80fc065895de807e32f3ac9b3cd71936428`  
		Last Modified: Wed, 11 Oct 2017 09:10:51 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd4ee47483f6a617dc31cd4a4481a1fbd2c031791f35a19e5e68cf9f60f2bbe`  
		Last Modified: Wed, 11 Oct 2017 09:10:51 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f000a6e40484497b31636768c1c14aa581440a42a675d1536c8899b319b4f3`  
		Last Modified: Wed, 11 Oct 2017 09:12:45 GMT  
		Size: 191.1 MB (191073160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3a098a47ab8ad4f82c3e82397e15cdd81ab8b4e63be8565e383724e4fdf8ca`  
		Last Modified: Wed, 11 Oct 2017 09:10:51 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
