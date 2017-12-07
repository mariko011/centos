## `mongo:windowsservercore-1709`

```console
$ docker pull mongo@sha256:dbff30f0781757e7feaa33fbf641830889e20200563523a5ac1229429954458f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:575d20d99193e628bbcdbce95598e5099c380e9cfae038d4e2955f5c62a0af1b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150716324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58bdccae98a4b12ca3e087ad8a0c9066dfaada38afa03f0298442063aaaf3286`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 06 Dec 2017 23:54:25 GMT
ENV MONGO_VERSION=3.6.0-rc8
# Wed, 06 Dec 2017 23:54:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-rc8-signed.msi
# Wed, 06 Dec 2017 23:54:26 GMT
ENV MONGO_DOWNLOAD_SHA256=70bd7e77f2d1eecb1852e856ddf224aa092aacba38fd5a5d0114b0b94aaf6b57
# Thu, 07 Dec 2017 00:39:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 00:39:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 00:39:38 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 00:39:39 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f61b4fe283e128d418bd56a99b5d45ca1894fb15962106847b5cf3b44193e28`  
		Last Modified: Thu, 07 Dec 2017 00:40:18 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c878ce2b0b9230923fb29dee66a4500ef38e9792dac5a07b819dc044b8af033b`  
		Last Modified: Thu, 07 Dec 2017 00:40:18 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e0d5efbaf7ce65b948e4b919f77279286959c16a7fe449d1c695c911e9d2c3`  
		Last Modified: Thu, 07 Dec 2017 00:40:18 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631422c7340b483b709757a62d2ebd33df773c39e01d9fd4aec9358f6bac40c4`  
		Last Modified: Thu, 07 Dec 2017 00:41:06 GMT  
		Size: 474.6 MB (474556209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ba3a5b40131e342af2dc2949d075b2e870fad3f424ecbfca5f14c920c4ffcd`  
		Last Modified: Thu, 07 Dec 2017 00:40:15 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1201d448807ef50bacbf842923ec5f7084922fe916a19ccb99390ee20f89a18d`  
		Last Modified: Thu, 07 Dec 2017 00:40:15 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faadc0804648eaf7746aaef64c76a6e42e89e4ef6fb5a1a1d1ef89cb7f841d1`  
		Last Modified: Thu, 07 Dec 2017 00:40:15 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
