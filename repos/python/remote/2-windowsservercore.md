## `python:2-windowsservercore`

```console
$ docker pull python@sha256:ce0f897ce7482e47220cf38cd1dd99c675dfd3d57cddd2d32f91fcbc113c648f
```

-	Platforms:
	-	windows; amd64

### `python:2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5349023045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b8ad66e7f2126fe47a5f9e00613bd83798267652f574f6d9cc8e7c6bbcc093`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 19:58:54 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 28 Jul 2017 19:58:57 GMT
ENV PYTHON_RELEASE=2.7.13
# Fri, 28 Jul 2017 19:59:58 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.msi'); 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 20:00:01 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 28 Jul 2017 20:00:47 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 20:01:11 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 28 Jul 2017 20:01:14 GMT
CMD ["python"]
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
	-	`sha256:3c5b212734d5f0ca22e8b54aaec3a5d32b17ab27d8b585db0881027b2b7dd021`  
		Last Modified: Fri, 28 Jul 2017 20:02:10 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0c96f7f008ed7f03cc84adebf7075dfc6d0332c591199c58ec54f63e09014c`  
		Last Modified: Fri, 28 Jul 2017 20:02:08 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e58b1772efaf890da46b5bdcb14aec4fb6d223051a7926e2e2280c4df30af2`  
		Last Modified: Fri, 28 Jul 2017 20:02:14 GMT  
		Size: 38.1 MB (38086555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022d8ffebf94211381ccb78874dca2ed932ab1b0bb0c158e2d134aa27d0ae6b2`  
		Last Modified: Fri, 28 Jul 2017 20:02:03 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820ea7f64462b50e8cccba228c7bfdc9d8fc473160759f19d7158c09cf7ff32d`  
		Last Modified: Fri, 28 Jul 2017 20:02:10 GMT  
		Size: 8.9 MB (8949579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b1841b4f4a102ecedfbe2255c9b3e2f8daa3cd002084de115a839870753997`  
		Last Modified: Fri, 28 Jul 2017 20:02:09 GMT  
		Size: 6.7 MB (6651265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b66ec74bba87d50742543bc002e937b362df1bf523daab36b1ddf59f80fd35`  
		Last Modified: Fri, 28 Jul 2017 20:02:04 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
