## `mono:4-onbuild`

```console
$ docker pull mono@sha256:98f7f3821a39a771d184ef50d642586cbd2a70f2def26b5941c211d5ca49a7f8
```

-	Platforms:
	-	linux; amd64

### `mono:4-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252229145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2022b78cff274cbfc390e5bc4ab4b7b67834c71effc4570fcb5da4f556b37d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:02:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 04 Aug 2016 01:06:36 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 04 Aug 2016 01:06:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 04 Aug 2016 01:11:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 04 Aug 2016 01:11:02 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 04 Aug 2016 01:11:04 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Thu, 04 Aug 2016 01:11:04 GMT
WORKDIR /usr/src/app/source
# Thu, 04 Aug 2016 01:11:04 GMT
ONBUILD COPY . /usr/src/app/source
# Thu, 04 Aug 2016 01:11:05 GMT
ONBUILD RUN nuget restore -NonInteractive
# Thu, 04 Aug 2016 01:11:05 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Thu, 04 Aug 2016 01:11:06 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9d492f44f4fe3c48e1d8bde1b83df0669e24167df70ee84291d9adeb67273a`  
		Last Modified: Thu, 04 Aug 2016 01:20:07 GMT  
		Size: 7.6 MB (7554036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6138b4d365ef9af35759faa343b9bc80c497244a8ec65463736b6fbba4e7fad1`  
		Last Modified: Thu, 04 Aug 2016 01:20:06 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce1af140bb81e4c169ec7aabb3299676656f25d8b7bc0361c907a80d601b684`  
		Last Modified: Thu, 04 Aug 2016 01:23:02 GMT  
		Size: 207.4 MB (207435977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb88b2fd11af40a352f7d4e1de65431e8a2b18de61fa04e13f4c67bc8087662a`  
		Last Modified: Thu, 04 Aug 2016 01:24:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
