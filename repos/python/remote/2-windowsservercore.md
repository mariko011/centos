## `python:2-windowsservercore`

```console
$ docker pull python@sha256:018aac6b24041300cc1e7abfac2c3060611edc22a626ade885cb66a9ed634e76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull python@sha256:1df0a18dfd661ab5972231facd4cf982631709f786565f802583f822ba0f4591
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5404539513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84c1db68258c41612cc8faf7167dc599960a7f311cea4f542ad3e877fa93479`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 18:58:52 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 01 Nov 2017 18:58:53 GMT
ENV PYTHON_RELEASE=2.7.14
# Wed, 01 Nov 2017 19:00:59 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:01:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 01 Nov 2017 19:02:32 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:03:33 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 01 Nov 2017 19:03:34 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dd4a12be7033949b7c9497aaee41a792dc9a182438ef3c04bec30c01d25763`  
		Last Modified: Wed, 01 Nov 2017 19:05:53 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e548fac3a0f770bb09d5912a30455bd52d7bdc54d0520f1af33ee83ac7713d`  
		Last Modified: Wed, 01 Nov 2017 19:05:52 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c9f88752d3dd44be0cb4a8c9edbfd11962c826625346f72a702b8369b9736d`  
		Last Modified: Wed, 01 Nov 2017 19:05:59 GMT  
		Size: 38.3 MB (38345401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7baf2f17dac2e269ce024c9237344e7556402d606f2a8897b36b1beb04409d24`  
		Last Modified: Wed, 01 Nov 2017 19:05:48 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96d17dd151bbfca4ae318c664da74d160a416bebf3d605671ebd9a17e34eac7`  
		Last Modified: Wed, 01 Nov 2017 19:05:56 GMT  
		Size: 9.0 MB (8972475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c81e1cf62793fbad03a5b60f1dff00e1f5ddbb0a3d16195a7b56bf63489acc`  
		Last Modified: Wed, 01 Nov 2017 19:05:51 GMT  
		Size: 6.7 MB (6708666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0042140c598c71a8801af33819f70a52a7ba1b205c6c247b5ef56b6b54a2b17`  
		Last Modified: Wed, 01 Nov 2017 19:05:48 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
