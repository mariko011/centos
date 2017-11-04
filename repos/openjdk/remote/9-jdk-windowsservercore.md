## `openjdk:9-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:167697ff49b70c86f019d62ca257878bfd6353a564cb3614ceb3bf77715d15e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:9-jdk-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:92f9b78e1b01a081684efcf5ca42d533f44b0e1ff76e28d0614c3c82ca0afdf5
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5551771721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f33eae71c59e750e29df3643d2e95dcb27fe7e1da756997970e3860dc0d401`
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
# Sat, 04 Nov 2017 09:26:04 GMT
ENV JAVA_VERSION=9.0.1
# Sat, 04 Nov 2017 09:26:05 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.1-1
# Sat, 04 Nov 2017 09:26:06 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.1-1.b01.ojdkbuild.windows.x86_64.zip
# Sat, 04 Nov 2017 09:26:07 GMT
ENV JAVA_OJDKBUILD_SHA256=53d857727194635546d8af1e9c93ff272b737a46c1a03ef3d99b8078ab4e11f2
# Sat, 04 Nov 2017 09:35:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Sat, 04 Nov 2017 09:35:04 GMT
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
	-	`sha256:e43c54ec7a906d4bedb0125785c86a90ebbd731bc29570f9570d53785c10a458`  
		Last Modified: Sat, 04 Nov 2017 09:37:54 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd097da3b84f1edca3deec448180c8119cca1662d15b9985f75782343b2a1889`  
		Last Modified: Sat, 04 Nov 2017 09:37:50 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbce4ccd961c0f663139139ebff237cbfb538e05572e1e0366bc65fd7b1ee97`  
		Last Modified: Sat, 04 Nov 2017 09:37:50 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f58e913ea4a5caf179bea373b563a79fd988dd876aaf71067379f573cca7e1`  
		Last Modified: Sat, 04 Nov 2017 09:37:50 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bb4960c7c2923cc89ce3f218b362fc058450199d326c3471092964ba2b88fe`  
		Last Modified: Sat, 04 Nov 2017 09:38:10 GMT  
		Size: 196.4 MB (196392228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49075d47f0119372d56149374d5de58b2cf8872e5e545dfa992780bddbdbec0`  
		Last Modified: Sat, 04 Nov 2017 09:37:50 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
