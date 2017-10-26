## `openjdk:9-windowsservercore`

```console
$ docker pull openjdk@sha256:bc3925e8f380bb88d11615269647b8b7c4836461d7e4cb173c4262ac89dc6372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:9-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:39099c7cc0e3d61df0bcbfcc5427c32e71b27504be21560378e8e9bb658d688f
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5550445368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d6650d5f0bf33067ec44f4665a72dfb701f35bbd003a2e19b0addf25b300e2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 09:02:36 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 11 Oct 2017 09:02:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Oct 2017 09:05:52 GMT
ENV JAVA_VERSION=9-b154
# Wed, 11 Oct 2017 09:05:55 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Wed, 11 Oct 2017 09:05:59 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Wed, 11 Oct 2017 09:06:02 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Wed, 11 Oct 2017 09:07:16 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 09:07:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39d8a9741265bf2644f741e79530b888dad0834a9707e2295a62220d70fc392`  
		Last Modified: Wed, 11 Oct 2017 09:08:52 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b90a9c2cd2f017807730af43c84e7e21d6d65c022e55449b1beabd513be9c4a`  
		Last Modified: Wed, 11 Oct 2017 09:08:54 GMT  
		Size: 4.9 MB (4854391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df013bafaf7194ed8006960bbba8016cf753934b4236789c72d7f2be21fb174b`  
		Last Modified: Wed, 11 Oct 2017 09:10:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1808ca95f3afc44fd4070da45c92174c89f50658415bfa11fda1ba48f4c358`  
		Last Modified: Wed, 11 Oct 2017 09:10:10 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a683b02527fd6c871b474e6097791617fc1294513e0c894d11e08492d400d178`  
		Last Modified: Wed, 11 Oct 2017 09:10:09 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfdeb422f9c259b3e9da1134c2c20660df125fcf0ce476917a77a1ed6cfa56f`  
		Last Modified: Wed, 11 Oct 2017 09:10:10 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919951be5022d28699e6bb2b6a5807ee9c6f843e554dcfe490ef334afccfde3b`  
		Last Modified: Wed, 11 Oct 2017 09:10:34 GMT  
		Size: 195.1 MB (195075318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb3c07df65858c8d1ef5ca0dcdb49ffc9499b81299ca2e9139eca6ff7c1dfbb`  
		Last Modified: Wed, 11 Oct 2017 09:10:11 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
