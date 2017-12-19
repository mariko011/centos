## `openjdk:9-windowsservercore`

```console
$ docker pull openjdk@sha256:5b2cd7f8e52a15780af4f63bd440ccaa2ed619d830ec7dcfee276f5537aeb262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `openjdk:9-windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull openjdk@sha256:af0a74db07ac7cd7caaae48dc355e8519b0c76eaa6daf761a35b69a3f1774c1a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5558265629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f740e78247e991130a2f53ad9a76b481b51ee0a9d39bd704ec7f60f9a2faca8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:14:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Nov 2017 10:10:33 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 Nov 2017 10:11:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Nov 2017 10:21:37 GMT
ENV JAVA_VERSION=9.0.1
# Wed, 15 Nov 2017 10:21:38 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.1-1
# Wed, 15 Nov 2017 10:21:39 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.1-1.b01.ojdkbuild.windows.x86_64.zip
# Wed, 15 Nov 2017 10:21:40 GMT
ENV JAVA_OJDKBUILD_SHA256=53d857727194635546d8af1e9c93ff272b737a46c1a03ef3d99b8078ab4e11f2
# Wed, 15 Nov 2017 10:23:55 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 10:23:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a4bd6cd94ee2a374930b7554f113d83a6d2d7c4fc6059acd6f2f60e0f29d2f26`  
		Last Modified: Wed, 15 Nov 2017 10:26:12 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acb2bde72dcc2e5e724a84b1a64f9aa4b8db92ae0f2c337f5f5c728b2bbcab3`  
		Last Modified: Wed, 15 Nov 2017 10:26:12 GMT  
		Size: 1.1 KB (1129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217d30fc1c45c3e16e1dc42ab6a68b86113029a8fc7765137464673f87eca4a1`  
		Last Modified: Wed, 15 Nov 2017 10:26:13 GMT  
		Size: 4.9 MB (4878900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea0738117ada479a8cab11549dd8960b0dcce4fa7dc9101c1ce2ba45846c4b9`  
		Last Modified: Wed, 15 Nov 2017 10:27:19 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289724cc45459b7b26c6c47d4ef87ea41a5dfec690de881e195043792f93ebc1`  
		Last Modified: Wed, 15 Nov 2017 10:27:16 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700ac4d5aea55d2d6c5639e92d42ce65acbb31f04cf49708f02bacb59b21daec`  
		Last Modified: Wed, 15 Nov 2017 10:27:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0825c5a5dedbdffaac41616eb6de2fdbbf3b457fe53c9a2648cb445c40dd2708`  
		Last Modified: Wed, 15 Nov 2017 10:27:16 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3d7d13d92a1a73b314aec64af85fbe3b8da8b4f04c6684fc982465d5cf0db9`  
		Last Modified: Wed, 15 Nov 2017 10:27:35 GMT  
		Size: 196.4 MB (196399512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb617b4c0e7997d0fbe753e3b77d96d426e6091c08ce7ff680dcb24e20d85ac5`  
		Last Modified: Wed, 15 Nov 2017 10:27:16 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull openjdk@sha256:427cf0c1231093417f6776b383cf2559a4c5de3f38a0d0d1d4b0be99ba114703
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2876334566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a1853702998151f92c6f8f1e8b6a13db3c58193a79915bec31f2830f2bbcc3`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 03:14:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Nov 2017 10:01:46 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 23 Nov 2017 10:02:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 23 Nov 2017 10:04:18 GMT
ENV JAVA_VERSION=9.0.1
# Thu, 23 Nov 2017 10:04:19 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.1-1
# Thu, 23 Nov 2017 10:04:20 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.1-1.b01.ojdkbuild.windows.x86_64.zip
# Thu, 23 Nov 2017 10:04:21 GMT
ENV JAVA_OJDKBUILD_SHA256=53d857727194635546d8af1e9c93ff272b737a46c1a03ef3d99b8078ab4e11f2
# Thu, 23 Nov 2017 10:06:19 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 10:06:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72ebc5a9d332e2a64fb3a65257e303100db8bcd07f6ccb562e3dc2e77f2cd3c5`  
		Last Modified: Thu, 23 Nov 2017 10:07:03 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c50c8d7767cfa154fcfd7f4cd572b8f7ee545d8fc35a60f2a155c2effae733c`  
		Last Modified: Thu, 23 Nov 2017 10:07:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfc8f1e781f4bcb2e60e1b0494ed023dc05ee9d0589aceca4ce714901a85c70`  
		Last Modified: Thu, 23 Nov 2017 10:07:04 GMT  
		Size: 4.3 MB (4333863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c95a3b03ef21333a28a6373c6ea7f2ce39cb2a78d5b09e0ef2100ea7e9bab63`  
		Last Modified: Thu, 23 Nov 2017 10:08:11 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5e09de6e19e2471c2ff3bee92a58805d3a1288b13f00eb587b8a2a4dcc2cf`  
		Last Modified: Thu, 23 Nov 2017 10:08:09 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae9164efebb4cb37a04617b536d825a295e4cd4866590fa8b96e2bbe8421ea`  
		Last Modified: Thu, 23 Nov 2017 10:08:08 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3822a7518bba3774ee0305bd3b73f999e17c9750d4bffc46380ba635686e9ffe`  
		Last Modified: Thu, 23 Nov 2017 10:08:08 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22901595add0f176e53a294999dd279d49c3c9c081c235e0d45344b072d7fe7`  
		Last Modified: Thu, 23 Nov 2017 10:08:28 GMT  
		Size: 195.8 MB (195840702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013da7d2fe670124c4b0b6dc7ef34840d18499dbd40aeeebdfff9439c979feab`  
		Last Modified: Thu, 23 Nov 2017 10:08:09 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
