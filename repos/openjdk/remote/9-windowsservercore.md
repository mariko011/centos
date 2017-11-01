## `openjdk:9-windowsservercore`

```console
$ docker pull openjdk@sha256:fbfa498a6c068065c9aa07a56814b1960d0235b95bd79846e952682631328497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:9-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:3ef45820a5ab3b50c96a54838379866a0315a02c585686532cbc596ead3692b1
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5550463431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca28e706b8c0680fddcd284143ea6643dd85f4aace55db9e6117da07b80402b5`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 19:07:04 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 01 Nov 2017 19:08:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 01 Nov 2017 19:12:42 GMT
ENV JAVA_VERSION=9-b154
# Wed, 01 Nov 2017 19:12:43 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Wed, 01 Nov 2017 19:12:44 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Wed, 01 Nov 2017 19:12:45 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Wed, 01 Nov 2017 19:15:10 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:15:12 GMT
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
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44456976b7c3b518e9b21732efdad36245bf82df9f2f7d1c184802fc0eaabe64`  
		Last Modified: Wed, 01 Nov 2017 19:17:37 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b89b4ac7ba934968eff065d6d2223e6ece0bf6ac02e3199b98cefe5913e73`  
		Last Modified: Wed, 01 Nov 2017 19:17:38 GMT  
		Size: 4.9 MB (4864049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e0b1ad3de3dbb744cdc4a386e064a6b4f45a603c8cf3a529bf249af3b65834`  
		Last Modified: Wed, 01 Nov 2017 19:18:59 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db4ea987e383eae55522d31d762a12f5504056c86c9b6ea3c46dfddaaf053c6`  
		Last Modified: Wed, 01 Nov 2017 19:18:57 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04de381c7b93834d8a853c0b1e3344116e90d999216134e44634eddc4abfc122`  
		Last Modified: Wed, 01 Nov 2017 19:18:57 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d61f6da9a50d34673d2592736a4ebc35f27f814c0424faded3b09974956eb0`  
		Last Modified: Wed, 01 Nov 2017 19:18:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac8a4f88f128ece6893e7020e4355c2ea5b77e2b6e299a27e90a0ad0ad85611`  
		Last Modified: Wed, 01 Nov 2017 19:19:16 GMT  
		Size: 195.1 MB (195083914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7503c6ada918bd18081772969fcfa5f788fa916f82d9029f94807fe8149df`  
		Last Modified: Wed, 01 Nov 2017 19:18:57 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
