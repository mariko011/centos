## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:b2d561ab85295540b805374f6155a85ea268a7d704b57d90343a52325d27e322
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5410675721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3264763e79c3171a72b6bb769f1172ab17e57408a42df8b75f5703cb43983af`
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
# Tue, 29 Aug 2017 17:42:09 GMT
ENV JAVA_VERSION=8u141
# Tue, 29 Aug 2017 17:42:12 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.141-1
# Tue, 29 Aug 2017 17:42:14 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.141-1.b16.ojdkbuild.windows.x86_64.zip
# Tue, 29 Aug 2017 17:42:17 GMT
ENV JAVA_OJDKBUILD_SHA256=2911ccece06500cc5bd37cb76028d4bd2b6261cb7f77e39404895e18d430d383
# Tue, 29 Aug 2017 17:43:17 GMT
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
	-	`sha256:0937e60bb6a6b717e4ed2236c09db83ec761112db6939ac41bdd245173322bf6`  
		Last Modified: Tue, 29 Aug 2017 17:44:40 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136c3b5e2964505c736a26f724c8db94e0d4db8fcacfa0829600f209bb3d6d7c`  
		Last Modified: Tue, 29 Aug 2017 17:44:40 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e802114c3a8ddffd5b0efa6de596a4fe7837aab2f2c3fbab0c39dc5b2e0be1a`  
		Last Modified: Tue, 29 Aug 2017 17:44:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0204ab778043b6c0f60bf2b5ef5058ebbd775b5a8cde0948f9c25e327072fe`  
		Last Modified: Tue, 29 Aug 2017 17:44:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8037b0c7ad064428bf5468ec2b9699f9e5d74b5cf4784e4a5366cf25274a9b2`  
		Last Modified: Tue, 29 Aug 2017 17:44:54 GMT  
		Size: 110.6 MB (110585403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
