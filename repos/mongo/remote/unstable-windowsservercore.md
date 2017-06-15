## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:fe00dd395c2bd960b89011dcc35d22542c89dbfe5febd0f71295e1b22cd1ee0d
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295391720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e3bd59611035e4495f86896ec120ac4df8e5018488b4a228d21842313620ea`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:41:42 GMT
ENV MONGO_VERSION=3.5.8
# Thu, 15 Jun 2017 17:41:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.8-signed.msi
# Thu, 15 Jun 2017 17:41:49 GMT
ENV MONGO_DOWNLOAD_SHA256=40f65f1162387863b2e97b13f2aaa9a6a086aefe5d3680691255ebbcfad30e9b
# Thu, 15 Jun 2017 17:42:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:43:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:43:05 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:43:08 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa348f282e5f43dab718929e545a280c67ba4d06bdfcafb6faa6315422441e6a`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d084b57ddd0b63328666bd109444a9d1990aa06102a429b645697a2ca9d5bdc8`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a90c6affde45ae88bc35aff216946381696aa4cde5dd5cd48e825d55462c8`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44d8cb16e096baebc43dab5b6ce17ea19e01421b7fce4c3e1d459a5331658de`  
		Last Modified: Thu, 15 Jun 2017 17:44:29 GMT  
		Size: 63.5 MB (63495242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d766aa15a090304d73abdfdd6bf18e3d57db09b48bc9a09702346f92f0812972`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fb6d7d70016c8227036b54147788a2e52b28966d0eceea03cb28bde0218205`  
		Last Modified: Thu, 15 Jun 2017 17:44:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4be17d28365b19eff065bd2f7e2dde0c7bc55eb11302b6bd67013d3eb7570`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
