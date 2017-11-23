## `docker:stable-windowsservercore-1709`

```console
$ docker pull docker@sha256:594953b1d79e352440fe56c51b8585645d57b4958c506240624f45b044b3d10e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `docker:stable-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull docker@sha256:394bd404aabcc1141849a349b78a97996f76d6f228339bc1c7591bea1c81b624
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2690825490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64494fc2cf89caf890738e83046810a441064a20d96c568ec02e445adc5320c2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 03:14:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Nov 2017 18:54:26 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 23 Nov 2017 18:54:27 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Nov 2017 18:54:28 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 23 Nov 2017 18:55:17 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72ebc5a9d332e2a64fb3a65257e303100db8bcd07f6ccb562e3dc2e77f2cd3c5`  
		Last Modified: Thu, 23 Nov 2017 10:07:03 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8bb84aeb73346f4ae7f56fa197b3454cfdaea9ef3d20026d53a82e88af1d0f`  
		Last Modified: Thu, 23 Nov 2017 18:55:43 GMT  
		Size: 4.3 MB (4331122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfa023c01989dfe703ff12191a2e66f30ad3fe8ee5f8acdfef7970dfc832335`  
		Last Modified: Thu, 23 Nov 2017 18:55:42 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1edd361203969a273bde9aa12f318e43207a23626209f77a4d1e6701e8813265`  
		Last Modified: Thu, 23 Nov 2017 18:55:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc289820b0f53e210336d9e96be86b0616a36325b851b84f253d1171fbe18e43`  
		Last Modified: Thu, 23 Nov 2017 18:55:45 GMT  
		Size: 10.3 MB (10339090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
