## `python:3-windowsservercore`

```console
$ docker pull python@sha256:ab07168c62446f4bec450ed80ec98988fb716b69d2e85bf0144af67ad42b47b4
```

-	Platforms:
	-	windows; amd64

### `python:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5288028667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb3b2172317a9ea6eb55c85837f5a9687fbd42e1813562545aa0a4cd0d2b48d5`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Jul 2017 22:56:11 GMT
ENV PYTHON_VERSION=3.6.2
# Tue, 18 Jul 2017 22:56:14 GMT
ENV PYTHON_RELEASE=3.6.2
# Tue, 18 Jul 2017 22:57:36 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Tue, 18 Jul 2017 22:57:40 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 18 Jul 2017 22:58:27 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 18 Jul 2017 22:58:31 GMT
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
	-	`sha256:9820c7e9e129acf349d5d633c9076bc59ff4735646657f5ed91fafe97023897e`  
		Last Modified: Wed, 19 Jul 2017 00:00:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8e76b0eb8c2996f551d4c0b18a7e6cf8114bd3b4d3b5a142534ac287197c98`  
		Last Modified: Wed, 19 Jul 2017 00:00:26 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39322a2fc18f2dbe1ef8e3def99562c9a2b1b469d0cdc59fecbdd2705dce3ba9`  
		Last Modified: Wed, 19 Jul 2017 00:00:34 GMT  
		Size: 47.0 MB (46969203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce18f93dd8f5fc4f01a2b4dae6d5765ef273083594a539032bd64e6545a93b`  
		Last Modified: Wed, 19 Jul 2017 00:00:25 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcc8a7f06171c4894de41b63339aee4008f6e82f001091df1d4a2088e8aedf5`  
		Last Modified: Wed, 19 Jul 2017 00:00:29 GMT  
		Size: 9.2 MB (9165426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ede1260e4e86c0c79b733d1cfae2b2b3112c566aaef561b3ad1d6d56e5f4ed8`  
		Last Modified: Wed, 19 Jul 2017 00:00:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
