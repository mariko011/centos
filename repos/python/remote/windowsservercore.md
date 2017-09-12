## `python:windowsservercore`

```console
$ docker pull python@sha256:d55bd772d7fda5d561db4f2efaaf8d3a0eb07c9541c5042a4f864ee1fdace3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `python:windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull python@sha256:80db76c2baca7aa89130b5b5d84748b0262c0f8878dc67dce752900883d01538
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5383705367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b6fb9d55f03e9f6a5aa50d58611735b4bf08cd27f51f7139c9b7fa9ad80a88`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 11 Aug 2017 16:24:27 GMT
ENV PYTHON_VERSION=3.6.2
# Fri, 11 Aug 2017 16:24:31 GMT
ENV PYTHON_RELEASE=3.6.2
# Fri, 11 Aug 2017 16:25:51 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Fri, 11 Aug 2017 16:25:55 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 11 Aug 2017 16:26:42 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 11 Aug 2017 16:26:44 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d9342cf131dea89c2ad68facd0f5273e21e574834c0534d32e1270150d0b91`  
		Last Modified: Fri, 11 Aug 2017 16:31:30 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee79e73d02767c0fc6dda69a6eb5ccdb44882eb747d31ee4cd5f33addd02aaf`  
		Last Modified: Fri, 11 Aug 2017 16:31:25 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd81f532f244b212aabde38b4021456396d73cae264418e17aec405d937f2dc`  
		Last Modified: Fri, 11 Aug 2017 16:31:36 GMT  
		Size: 46.8 MB (46781653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8346087f91260861e6952e407041ce11a3d1327289f45d620203146026202e`  
		Last Modified: Fri, 11 Aug 2017 16:31:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494e63ae7491dff38f60ee1a228b1ae3464427d2edc175b1ecfc85c7549fd930`  
		Last Modified: Fri, 11 Aug 2017 16:31:29 GMT  
		Size: 9.2 MB (9233406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3c7d7bdc96a77891e63a315f6563b68dbccb8d5851a52f25d97ab6e66ef899`  
		Last Modified: Fri, 11 Aug 2017 16:31:25 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
