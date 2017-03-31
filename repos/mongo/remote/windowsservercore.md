## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:9db58334de038e978b2e3096a199b5e06243171dc25005a86c2a855530aa651a
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5280206949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee45b4ba92e3738c3d51b63bf86456ddedbc64ee3a8f919a91ab85b9ecf80e71`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 31 Mar 2017 17:06:10 GMT
ENV MONGO_VERSION=3.4.3
# Fri, 31 Mar 2017 17:06:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.3-signed.msi
# Fri, 31 Mar 2017 17:06:19 GMT
ENV MONGO_DOWNLOAD_SHA256=b7c181e12b8261c1df341458efcda905ed95c962165fdd2ebd0eb32f0baa1328
# Fri, 31 Mar 2017 17:07:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 31 Mar 2017 17:07:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 31 Mar 2017 17:07:30 GMT
EXPOSE 27017/tcp
# Fri, 31 Mar 2017 17:07:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68109c20333f0c249c8cc639f5cd5d28c143e5a5b057d8a525c918b2026e21e7`  
		Last Modified: Fri, 31 Mar 2017 17:08:33 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599310cb2bbeaec4a154ddb63d5730fe6a3066eb20438dcd3cf27d93cc55393e`  
		Last Modified: Fri, 31 Mar 2017 17:08:32 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb333e62d771426009b1330eb883f8ac828511799fb7f61fcce2f3d478fdbca`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6171d18f1c61d22d5c639057f37380eb47cbe00ce14c742c896ea36a1f6791d`  
		Last Modified: Fri, 31 Mar 2017 17:08:37 GMT  
		Size: 62.9 MB (62944684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a802e1ebc888dc953575097c9b082b3f6a58291957c099e79a01b033f760b33`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dfaf930a39a6eb995f97d55af92174a772d621df2f813d8fd45dbd04fbbf76`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2356b161c0d923fbff9990e8072bc04462e5968123b814bb201efc118d73863`  
		Last Modified: Fri, 31 Mar 2017 17:08:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
