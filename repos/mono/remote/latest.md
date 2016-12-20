## `mono:latest`

```console
$ docker pull mono@sha256:3e670646c6c316826238db461f0804bf6ac71f7a41065e045e74376762a14267
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8d60c401f825219901dc8524ac45ce5c7e8b29f06db64d7e571dcd16c54ce7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
