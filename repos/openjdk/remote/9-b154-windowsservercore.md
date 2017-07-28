## `openjdk:9-b154-windowsservercore`

```console
$ docker pull openjdk@sha256:0743af7ac6e7c4ee8fa6716b5450819329ba4ebf40f3ab7af7aaad5137f1a4f2
```

-	Platforms:
	-	windows; amd64

### `openjdk:9-b154-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5495068514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ad75a068c31710f1f64fe9426f3beb3b9ada3df63e773a91d9275a4fc29b87`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:29:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 19:04:01 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 28 Jul 2017 19:04:26 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 28 Jul 2017 19:06:37 GMT
ENV JAVA_VERSION=9-b154
# Fri, 28 Jul 2017 19:06:40 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Fri, 28 Jul 2017 19:06:44 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Fri, 28 Jul 2017 19:06:47 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Fri, 28 Jul 2017 19:07:51 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35931e174f3cc5f305233235f76454a6744970dcbe50000c4dba61b50742c54b`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4560bdb266d11da80155c5bb0d4d92ef2ef2cb37f98b59b06abdc13c407b063d`  
		Last Modified: Fri, 28 Jul 2017 19:09:06 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11de78b0a40c8e614088ff755c229dc0f152ae4a6529cbcd686694080800a1f`  
		Last Modified: Fri, 28 Jul 2017 19:09:10 GMT  
		Size: 4.8 MB (4753493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed486bdd6f26025d49335f1656af269991eff7fdc7e96156d2ae5badacee1b97`  
		Last Modified: Fri, 28 Jul 2017 19:10:22 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206d20efa2f88be901a56d2efd54b829d2fe13f63bffc3e13ca774fcd9ab5380`  
		Last Modified: Fri, 28 Jul 2017 19:10:21 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45841810ffd891cead38d590cb9c4fe0d7d504713257f9ec2c2cb3a5c74e0ce2`  
		Last Modified: Fri, 28 Jul 2017 19:10:22 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986655bb4992f8cccb68f29dc215eb1773097672875b33a6c8fd5ea8fb396735`  
		Last Modified: Fri, 28 Jul 2017 19:10:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb713fe128d489ed5ddade0375fe8486cd6e37d52e365304820d9d77520ab50`  
		Last Modified: Fri, 28 Jul 2017 19:10:40 GMT  
		Size: 195.0 MB (194978170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
