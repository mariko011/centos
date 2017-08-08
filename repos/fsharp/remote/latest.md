## `fsharp:latest`

```console
$ docker pull fsharp@sha256:b08e34babc35581d8c029cba13eace4cd5808f956f8496fe86eac082d57d33f0
```

-	Platforms:
	-	linux; amd64

### `fsharp:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178865291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202e75cfedd2f6d714abb7e780a5fb079e749f5adb6b8d66f29ca86d0742bba7`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 08 Aug 2017 17:59:34 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 08 Aug 2017 17:59:34 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 08 Aug 2017 18:15:26 GMT
RUN MONO_VERSION=5.0.1.1 &&     FSHARP_VERSION=4.1.25 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 08 Aug 2017 18:17:10 GMT
WORKDIR /root
# Tue, 08 Aug 2017 18:17:11 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079c0cc0bf9f665e957fc923b482a813ef4ffd0fa96bdeb40e90585e6a237aa6`  
		Last Modified: Tue, 08 Aug 2017 18:17:45 GMT  
		Size: 148.7 MB (148743573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
