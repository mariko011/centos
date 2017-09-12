## `python:2-windowsservercore`

```console
$ docker pull python@sha256:7b274d339143354aed52c8e38962b22a43418f8b9399601bd311f171419e8c5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull python@sha256:cfb1f16e12c951a00dd285a33bf4d53cf8b04378cb4805976c59cb89cfd1ab60
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5381439327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9a3d3192190a87b5ccc6666bf2fddc43451e3d27fcbd6cb6f3fc559667c001`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 11 Aug 2017 16:28:58 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 11 Aug 2017 16:29:00 GMT
ENV PYTHON_RELEASE=2.7.13
# Fri, 11 Aug 2017 16:30:03 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.msi'); 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 11 Aug 2017 16:30:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 11 Aug 2017 16:30:52 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 11 Aug 2017 16:31:14 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 11 Aug 2017 16:31:19 GMT
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
	-	`sha256:16d9b90a8585871cdb3f6303f132866a3e341cc5e6832386f4c12798a7738d10`  
		Last Modified: Fri, 11 Aug 2017 16:32:14 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54efc6929a7863c4bb33d6877ab08519ca3ab5888b901badd142a5ffe1b84619`  
		Last Modified: Fri, 11 Aug 2017 16:32:14 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aef4f0d7573a1612cba939b5aed6de829bff5ce300d7f20639a2d9b0648780e`  
		Last Modified: Fri, 11 Aug 2017 16:32:28 GMT  
		Size: 38.1 MB (38110828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c2e7c25ebb9ea14541788c7bfcb9c445ec3b0a2c3fdeae7c3ba89535911ef3`  
		Last Modified: Fri, 11 Aug 2017 16:32:10 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0880d1637de9f449cc5b4f3faec2adcd5d528bfdf65626e43899026ae39f8eb0`  
		Last Modified: Fri, 11 Aug 2017 16:32:18 GMT  
		Size: 9.0 MB (8972826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0bc08de03797f21973efef52c49c3db8a28eb2e03631d90fa69d34aa0664e7`  
		Last Modified: Fri, 11 Aug 2017 16:32:13 GMT  
		Size: 6.7 MB (6665375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ffbd815e90062a62f2f0b9e86a190d86697bfb96d69f7b359ef4021b945bb8`  
		Last Modified: Fri, 11 Aug 2017 16:32:10 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
