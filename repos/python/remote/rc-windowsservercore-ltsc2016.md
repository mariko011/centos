## `python:rc-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:79ddbc864191de2409e63164aeb89dfdb399ba1c5345eb729282dfc34bce06a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `python:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2007; amd64

```console
$ docker pull python@sha256:6201b529bd78e707faa661682c92065488f41412755c3c7d967ff89e54122d9e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5434896900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5439681b2b0cc4c76583ab814e942e8fefb991dccd432139857fb7762988fe34`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 10:02:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Jan 2018 22:40:31 GMT
ENV PYTHON_VERSION=3.7.0a4
# Wed, 10 Jan 2018 22:40:32 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 10 Jan 2018 22:44:14 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 10 Jan 2018 22:44:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 10 Jan 2018 22:45:53 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 10 Jan 2018 22:45:54 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c86d0434e36d69287bea586f96045245d5ee4f04e4e2a5edf6881dbbfdc628c3`  
		Last Modified: Fri, 05 Jan 2018 10:13:30 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccea68d7a63bc736bbfda28b3259106eb24bb1301ff61d52d63f6bd4ccb15f42`  
		Last Modified: Wed, 10 Jan 2018 22:52:18 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6534ca747c89056f5a3d7969460c29f04663a481fb82698169ddc8e87de8334`  
		Last Modified: Wed, 10 Jan 2018 22:52:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5546b92b4790e24f9e57e627514ab54dff8987ff9332dd3f37befb81bef11f`  
		Last Modified: Wed, 10 Jan 2018 22:52:31 GMT  
		Size: 51.6 MB (51562013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab71cce85820073ee4830950cf2cdf6aa38f49a60888fde28fa030727c0ca67a`  
		Last Modified: Wed, 10 Jan 2018 22:52:14 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721f45a84a8f3faa1191de454575c17cefd41c95b4d8c4230951d0ed97b1f8b4`  
		Last Modified: Wed, 10 Jan 2018 22:52:18 GMT  
		Size: 9.3 MB (9323720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609fe65a3fda0c12f61ca78742a61e8a73353c8d5ca9d03666286145324c6aa1`  
		Last Modified: Wed, 10 Jan 2018 22:52:15 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
