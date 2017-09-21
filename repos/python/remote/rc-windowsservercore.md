## `python:rc-windowsservercore`

```console
$ docker pull python@sha256:b8a86e55a972aa3e81484b48c5548173201e379b105ebbfeda64227d1626202c
```

-	Platforms:
	-	windows; amd64

### `python:rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5288002753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f797786b9811672f738a3e5305f39728e344eed02f2f5d2923639008b3e5685c`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Jul 2017 18:26:57 GMT
ENV PYTHON_VERSION=3.6.2rc2
# Wed, 12 Jul 2017 18:27:00 GMT
ENV PYTHON_RELEASE=3.6.2
# Wed, 12 Jul 2017 18:28:15 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jul 2017 18:28:18 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 12 Jul 2017 18:29:08 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jul 2017 18:29:11 GMT
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
	-	`sha256:d36418a96041da6d39db1a451d38edb7a541b4879aab2964ade6b98d57dd7620`  
		Last Modified: Wed, 12 Jul 2017 19:03:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca2e2b6a47f197f44896be3f63e89c733c5ed8e6d542e9c06081f6d9befaf71`  
		Last Modified: Wed, 12 Jul 2017 19:03:00 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca75edab20d386bc73b7108ca0b766158aacc8c66df982ac1d3852e6898841a`  
		Last Modified: Wed, 12 Jul 2017 19:03:09 GMT  
		Size: 47.0 MB (46955521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965294a6074a492261d3afa757eefd7322d5ee27338c3f2033dfad1b04a698c4`  
		Last Modified: Wed, 12 Jul 2017 19:03:00 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d368f7603bbf13a87bda0b3e71106fc892f948808a889aee2c034c40428be355`  
		Last Modified: Wed, 12 Jul 2017 19:03:04 GMT  
		Size: 9.2 MB (9153187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28fdf698ed72be10e95b8a97cf130b41eeabac251f304de6a3df6dee8f050e9`  
		Last Modified: Wed, 12 Jul 2017 19:03:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
