## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:18d995178bd707a8c0b7db0c3fd0a45a80a5bc9ecd4b189abbb8855a27c2f383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:62da6a2cbbe55cba55ad88f96f3466d5764014d3f1e2f02ae0779a157810cd8f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403980224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6da48d28171ce2ee99f82468a81b777bcb4a20bc69f5d7592de853196304901`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:39:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 15 Nov 2017 02:48:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:48:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:48:17 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:48:18 GMT
CMD ["mongod"]
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
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7d3550e4ab769bfab3500dd2c07afc83a794715915dc4db018df2631743c3`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5de24310c02c4ab4fec29cbe608f0d5c91d2265b0d45e10159dd70f15d341`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b357073dbce29742ddc0035347929f12f596fab6766c9e841ec7f19702463598`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebca783a98f7b2da81dcd47ba2f15a86e96f845d385ab1a6028e0cb675a4841b`  
		Last Modified: Wed, 15 Nov 2017 03:02:32 GMT  
		Size: 47.0 MB (46992977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8709a224e09b1836c7d6c5e932ab832f033f60bcab827df92a522418f37e55a`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b650479b68acaf36af1fcc46d17bdede8fb47874e18e5bf48a90ac4747bc3d1c`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ed22048959ba01ea48deb384fe60a08469827eb142568afd795d9e043755cf`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:1a77c4292f3b934ed9d328d53b364e99304f47fbfb86e1f196caf41e9b02f1b3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2722665621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff410b95bc1eea0a01f40ba89b5b32395804fee1ebd598cfc546247cd0e0c1dc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:49:44 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 23 Nov 2017 02:49:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Thu, 23 Nov 2017 02:49:46 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Thu, 23 Nov 2017 02:51:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:51:41 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:51:42 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:51:43 GMT
CMD ["mongod"]
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
	-	`sha256:06c3c0f3dbd5ef26ff0a7ddad934648a7bd88fc382ec339430843d0c68d6f9e8`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50184b9cb183081272a55d3e30aa24f3e535a93a264d36d2ff6acf9c01645971`  
		Last Modified: Thu, 23 Nov 2017 02:58:58 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee949ae111a7707724153595fa29edf3438e68eeb852afc81430eebd1ccf63f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e9f217d8bb1f2bc1f7b59a8ca20c371eb2b0136b191a24bbe4063c8abe7253`  
		Last Modified: Thu, 23 Nov 2017 02:59:06 GMT  
		Size: 46.5 MB (46505561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444f755e3e5512e6572153f21d632427f986c12085eb8a7f0de4353a8ae3c088`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347a1754d6b90b830c6117bd7f7ab30a5616f5bc0aa902b16ae3387253cf72d8`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bafe8c0a28f78013d249fe31c63fd7eb4f0dc0e1a78b253ad45cf00a5f5427`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:d722b7fbffe8efd0fbdb2554bd715c7dd90bef5a2a9c5dcc84586550826d94cb
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5414501704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb50f0e7198a8d536827a546827814c251c7eb915d5e33527f776d3cf8782d6d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:47:25 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:49:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:49:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:49:55 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:49:56 GMT
CMD ["mongod"]
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
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e760d413a6a319c79bdffbc3ed0f7c42b7e64fdfdb30df92b6a6f8df125d31`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482ece3b960a201e7ea3b9513472062f825bbd2e5cd4e3da7e6d690397ef7cce`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93562d586e68fcb51c292c9a821002445e0b98ad0d7a7fa380276302e0eb05`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe804520ac88307209aeb40f50a7049c9f0afb75f8050e5375ec310d31880ea`  
		Last Modified: Thu, 30 Nov 2017 20:21:49 GMT  
		Size: 57.5 MB (57514446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a8de4a643e38abbe6209df3cdb856103d604d86310c9934c4d22860e9736d`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750be109c5fee4f796dc9175e0b1b8f0cd1a0d79bdf8b42526339537c6fe96c0`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9006c1f1333e1fdcceec731601b998a91d856d66789a3b0922bbc248f696dc21`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:13a1303300699516797bb12f14100bd6e86ce2af8e7f62996c10d5dbff3be99d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2728703241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4833b842f1a4333dfc7fd25259d4c71d03cf6c58338dc90491d7f97b2b6e53ae`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:50:06 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:50:07 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:50:08 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:52:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:52:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:52:20 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:52:21 GMT
CMD ["mongod"]
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
	-	`sha256:31868190574a0dcad1fae25599c2258c9c675af7e1c382333c9c5f6198da1747`  
		Last Modified: Thu, 30 Nov 2017 20:22:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba316268eb6c1c76d30aabea3bcdca055d60891f3ed24bec4976579ae546492b`  
		Last Modified: Thu, 30 Nov 2017 20:22:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b53f991c8d8e867a851d934c1d96d9e3c264d8660c832590d6c2656d2868e2`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9df051a8a7e57ff62e0af7dfb051b58729152b0a4ddd6a8b175ac09c2ef91c`  
		Last Modified: Thu, 30 Nov 2017 20:22:20 GMT  
		Size: 52.5 MB (52543182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a111fcc5de253dfb024196465e480e3593b37e4528690c04e1a9ea0259351332`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85bfc4343eb8bb5669c567c172ccdecd4d1a2c2648d294f91502d3398e4cd70`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26e0769e44aebd461ac699858ecf3480ab7da94e957f6cd9a5c9aa72ee6a637`  
		Last Modified: Thu, 30 Nov 2017 20:22:02 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:e3e04867e49082d886de8d80cd720269d18d255d300b130dacf496a086bad460
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420158004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a46ad64dfe086054d548efa9fdb4b7f64e784fef669cbd1cd8f8505f24c2133`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:50:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 15 Nov 2017 02:50:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 15 Nov 2017 02:50:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 15 Nov 2017 02:59:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:59:24 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:59:25 GMT
CMD ["mongod"]
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
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5b8fb4ccc4797cb8251fb992cdf52c68069e00220e3dea756e1646bfe8b129`  
		Last Modified: Wed, 15 Nov 2017 03:03:16 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab6ae1adec590a6b58454e46b57f2c74f3ba56af46f8cbc6b6dda80269a573e`  
		Last Modified: Wed, 15 Nov 2017 03:03:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06350f97d3f86b8ff94bce9c71c9fd7714c93e7d8380500d9571dfc2434a291c`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197ffb7b254a8e7fd80e3da6b13c2d9eff9ac1617e67d16e085f3a0b75dd9dae`  
		Last Modified: Wed, 15 Nov 2017 03:03:27 GMT  
		Size: 63.2 MB (63170755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f2fab9ee2f27b24631dc6b794c8b7f73f8c773bdfc422bbd723425242d40a0`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4ef7f10df9df3533330f265c83ddeee30744a787837ce69fe1f833f0fabae`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e401a3eb64dfa0989a94160821b5379cda74a9221b8d658a113e5f4b7cad05fe`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:17bfb9f25b2623da4d8dd779c471768195bed3068f634a6e632cd45ab77468d8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2738856321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c424ddd6a0a1ef5d65f8fe382c94d2e35fa14048cf1d64692ddcad4c72e98f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:53:55 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 23 Nov 2017 02:53:56 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Thu, 23 Nov 2017 02:53:57 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Thu, 23 Nov 2017 02:55:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:56:00 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:56:01 GMT
CMD ["mongod"]
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
	-	`sha256:0ad0157483ff8aa5c4b0b01d6612f31a30fd6be0a1dac1a4eb930da512902354`  
		Last Modified: Thu, 23 Nov 2017 03:00:01 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a34e37e080f8fef322903befa65cd7f8b5e2c211da3da7ef90597faaedea213`  
		Last Modified: Thu, 23 Nov 2017 03:00:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473602cf63f0e30e831a96e695e39d72c6049cecfe53bc55b9e22b5afc349b8d`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee910e0187099e2bc6a1495717324ceaa6d17c5d8cf94c1a620855b5b7866777`  
		Last Modified: Thu, 23 Nov 2017 03:00:17 GMT  
		Size: 62.7 MB (62696241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb448e4a417ea38b944807864e26381ef102a4be7c2bd58cb6599391f003d74`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ac86dc9b2b016fae673d2d732dde1f2b6bcd3e5e9dd9bb73a206d595f32f2`  
		Last Modified: Thu, 23 Nov 2017 02:59:59 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a53c25e23583f7e1db8961dde92ebe080dcc68de9d2ddfd81133a52b346516`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:bf9a83c3904400edb18de3187451597b73fc527ba61e8fe76be810d35156fef1
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5426898646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64aaddfb26295f95ccf511020d0c27ad2ad357414588d7d6e8e4c71db0373c1a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:59:30 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 15 Nov 2017 02:59:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 15 Nov 2017 02:59:31 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 15 Nov 2017 03:01:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 03:01:52 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 03:01:55 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 03:01:56 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41f8df0c8b1aa41ba99c2e9552977463e3657c825ae65163661f17b84dc0719`  
		Last Modified: Wed, 15 Nov 2017 03:03:47 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea6ea7eba67c5cb2ffcf9e423d1d28cdab585b50d6f170abee434dc3dc1c128`  
		Last Modified: Wed, 15 Nov 2017 03:03:46 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4ade4d48e5af7820e405ea8017711de5a1b8031c9ef75e7113a02f5c251c5`  
		Last Modified: Wed, 15 Nov 2017 03:03:44 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961bca6c3758e043266583cd652a09e1c7ca58782094e96f3fe243e32317951e`  
		Last Modified: Wed, 15 Nov 2017 03:03:58 GMT  
		Size: 69.9 MB (69911393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3226d383bcc5642184896e279a9a06cbe55ec38e9a9533c34239b8c1145453`  
		Last Modified: Wed, 15 Nov 2017 03:03:44 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d804dfcd7791f707b240f0c9482ac8a9fe22f53e02083bce5ac6c71dd0773f`  
		Last Modified: Wed, 15 Nov 2017 03:03:43 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1ae943c69c48ab33e1b692b4df11273b1345d67d3ab096e0004ced56b1a337`  
		Last Modified: Wed, 15 Nov 2017 03:03:44 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:1a05c57bcc78c5b88b17defbcdc66490e510c04b58854cc2c9f1464b40098159
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2741093880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2611d9b26969607d01636c5678fb9e18bc2e6bc01be797629ea41803cd897753`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:56:08 GMT
ENV MONGO_VERSION=3.5.13
# Thu, 23 Nov 2017 02:56:08 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Thu, 23 Nov 2017 02:56:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Thu, 23 Nov 2017 02:58:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:58:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:58:25 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:58:27 GMT
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
	-	`sha256:b1f6c61d9274f59c9ebd734657950eaa95263b70c92488a31a8b8e73b50c0c3b`  
		Last Modified: Thu, 23 Nov 2017 03:00:45 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9e208b44efb5fc67a3c2c4625009512dbb6e04d89261225b00c9bc4e8f8ffb`  
		Last Modified: Thu, 23 Nov 2017 03:00:45 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5583df31fefb355a834495ed54517851dcae6e2080704ba7ccf0f7412295b`  
		Last Modified: Thu, 23 Nov 2017 03:00:42 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1619c370734755415b51a04774c6b4448c590a8c839309fc4bbec8569befa5`  
		Last Modified: Thu, 23 Nov 2017 03:00:56 GMT  
		Size: 64.9 MB (64933797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6ab143bb4e4905bf1b4061ff1ddbb43fb16175ab373fbaa70675aa3c9cd58b`  
		Last Modified: Thu, 23 Nov 2017 03:00:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34749b97d9ed2731dc8d5374a70b13fecacecfdeede2aceea8f330a341c23a30`  
		Last Modified: Thu, 23 Nov 2017 03:00:43 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad72e56436a079fb2fdb7a7929be36d55c6c5e311451e6cd84f55b7d2f8b1b4f`  
		Last Modified: Thu, 23 Nov 2017 03:00:42 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.64; amd64

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
