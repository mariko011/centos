## `python:2-windowsservercore`

```console
$ docker pull python@sha256:ebf024caa0accf63f8d3074784d14ce6c39330f65798d0284c697ff71a95320d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull python@sha256:274ee1bc270859782a149476fa4628843e5364eb1848f585263f1a988e23b6fa
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5389747458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e830ccf14e6f1246355641b36b49b0840684cdc4b6426a6d458a13600733ae26`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Sep 2017 16:29:31 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 16:29:33 GMT
ENV PYTHON_RELEASE=2.7.13
# Thu, 14 Sep 2017 16:30:34 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.msi'); 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Sep 2017 16:30:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 16:31:28 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 14 Sep 2017 16:31:50 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 14 Sep 2017 16:31:52 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ca36795460bbf53d58e0d2497de3a9c39a8c5f9c1e64c13ef9ea238f584b84`  
		Last Modified: Thu, 14 Sep 2017 16:33:05 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b494ba9e475a2512d437a1567b48361e1cc8fa9cb0557fd25edca510b4f7cd28`  
		Last Modified: Thu, 14 Sep 2017 16:33:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7ac968857f677b49de43dc0e16bba87dc5cc67792a1c711fd881b3269667d8`  
		Last Modified: Thu, 14 Sep 2017 16:33:11 GMT  
		Size: 38.2 MB (38171943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98435c91a18fdd3c1aef2d70a2036c45cafc983c4abeb70c59169877cc6b94d`  
		Last Modified: Thu, 14 Sep 2017 16:33:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a77f4ec2c5e948e5e423b0b63becba02ab473890f7eaa679f02e2740f761ca5`  
		Last Modified: Thu, 14 Sep 2017 16:33:07 GMT  
		Size: 9.0 MB (9015091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab4b01088b7b5186de6aad6c51a71c907bcc39f1cfdbda7ee9bca17cdde07a9`  
		Last Modified: Thu, 14 Sep 2017 16:33:04 GMT  
		Size: 6.7 MB (6745867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6515d21c7c02d87fc6fd0184b4fd3f297a1d805b01f5e9b167fdc31603c98b97`  
		Last Modified: Thu, 14 Sep 2017 16:33:01 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
