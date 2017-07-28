## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:f4be1dfeaaa05a6f0daec23981eb98e337c1f531441e9a5e52f047738c3263ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358346321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c89b640ae825bc79fdb4c8cdfc324556c7c721e6f64e72513f08d90d70ee75b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 18:58:22 GMT
ENV MONGO_VERSION=3.4.6
# Fri, 28 Jul 2017 18:58:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Fri, 28 Jul 2017 18:58:29 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Fri, 28 Jul 2017 18:59:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:59:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Jul 2017 18:59:36 GMT
EXPOSE 27017/tcp
# Fri, 28 Jul 2017 18:59:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a326f5acbdf7eaf2ef9aa74b41cda6c4657109935cd96ac5f4b1cd34b13289`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2d47cb97736a59df08a2844ab01e9f0bbda950f680910b1f0ca296701558c6`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20bcdfe4e85dba51705399515b8b8e9b6ffa11d234b0aa5154ebb98b521fcd4`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044e57c275281014af873f7d076cbefe831648fd9f6fccb5d5bfb66c22efe312`  
		Last Modified: Fri, 28 Jul 2017 19:02:09 GMT  
		Size: 63.0 MB (63008252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa08124becba7f5a9a11c979f4512fc2f3c49feb363aa69a4a21777df0d624c`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c5271e9a29c7fef7c71979d08f45edf0b2cc38291dd27cb82f2c7b9b5ecbab`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134dab99ff1a8729d60fcaf20d175bea8c1a3acc47f19283156c903a48065c42`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
