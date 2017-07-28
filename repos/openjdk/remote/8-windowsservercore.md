## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:f0486ea93994212f08828a293167a1ef962542aa3c3e6ab066ab6fb9d98358b3
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5410616481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d8c1db75944057e80bd0bae2fef7166f22e598bacb5241adc1625ff6236048`
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
# Fri, 28 Jul 2017 19:04:30 GMT
ENV JAVA_VERSION=8u131
# Fri, 28 Jul 2017 19:04:33 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Fri, 28 Jul 2017 19:04:36 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Fri, 28 Jul 2017 19:04:39 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Fri, 28 Jul 2017 19:05:29 GMT
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
	-	`sha256:e0cb201e1bcf4317c35d64f2009d86d44d9e01495c454d86906ef512dc1fd555`  
		Last Modified: Fri, 28 Jul 2017 19:09:04 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfce43ac585cac8dc9e8be24f605801664ae594198789d2d91f9c8c8ca072c34`  
		Last Modified: Fri, 28 Jul 2017 19:09:02 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ce9ddbd1a681cdf63e999735b99b00037bcf3d9dc9c2632f20afbbfc4b0128`  
		Last Modified: Fri, 28 Jul 2017 19:09:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780313c28e86f90f5663f2e9553777304189b7132e20df46224cae90353e3569`  
		Last Modified: Fri, 28 Jul 2017 19:09:02 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5f279053233459ffcc9a6d670cbd931b9d8aab57adeef331565c327a150d4`  
		Last Modified: Fri, 28 Jul 2017 19:09:29 GMT  
		Size: 110.5 MB (110526134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
