## `python:windowsservercore`

```console
$ docker pull python@sha256:80db8b429c7b9bfa232c6074f398dacf40a3ad5dce024da4476ff476476aed9c
```

-	Platforms:
	-	windows; amd64

### `python:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5287899347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aba0ae16e74c1b287e7968c25982f567733d5007a18c59a96e46de04aad611c`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 26 Apr 2017 19:43:08 GMT
ENV PYTHON_VERSION=3.6.1
# Wed, 26 Apr 2017 19:43:12 GMT
ENV PYTHON_RELEASE=3.6.1
# Mon, 01 May 2017 22:49:14 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:49:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 22:50:09 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:50:12 GMT
CMD ["python"]
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
	-	`sha256:0c1a3f50f6cd68e0693b6b67069a1bf8dc7bcaebb7ed78f738ab3788920a9489`  
		Last Modified: Wed, 26 Apr 2017 21:31:43 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cccd9c44f90f2a956fb26d55613fca2f730eaad10e1cd03e7f20d74ada4574`  
		Last Modified: Wed, 26 Apr 2017 21:31:43 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e46073ac99aa413e4784db7f63ec48f408b70b16cdf9ac0924d5c8b1f078fb`  
		Last Modified: Tue, 02 May 2017 16:44:31 GMT  
		Size: 46.8 MB (46840017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e17dfa2f59ed92d8048cb65a72d0cd07f2ff395d300b6f369052a271e5edfb`  
		Last Modified: Tue, 02 May 2017 16:44:22 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fee688a37ccc45c7abe0c51c64594855119164dadfd377edc20f17cef754648`  
		Last Modified: Tue, 02 May 2017 16:44:25 GMT  
		Size: 9.2 MB (9165276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3937f5be4f030880fe6bfcaedcc1d4c4f5bae52886cc9285e666618b623b1731`  
		Last Modified: Tue, 02 May 2017 16:44:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
