## `debian:stable-backports`

```console
$ docker pull debian@sha256:67696ba220bd8bbd76cc10aca2325a4846c1bbf8194134008f7f81fc426623b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:a85782aea2e51532fcc7b809a3dc7c99c283fc3b0e8bf279a12c439dc93aac60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45121832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9085f652faa2e3e91ab7546c18f9ccd9a3363e37a9d253618f5247d57fd6eb2c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:41 GMT
ADD file:08051eff494813afb00f37964ce8100e9c52320950c53b00b5cea1d6a79d05e0 in / 
# Tue, 12 Dec 2017 01:43:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:43:50 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8ccb8cd716bb00562a5439fef860001282f68b7da4bbeca6b861ddfba551e8b3`  
		Last Modified: Tue, 12 Dec 2017 01:52:20 GMT  
		Size: 45.1 MB (45121610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838dc1d265c4383dd521fbb962373e68f096efee9c6ef829497c277ccd25d826`  
		Last Modified: Tue, 12 Dec 2017 01:52:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:5f2bfb487780baae3f65b7ec26718b6a370ba79a4ce045447009e68be73461a8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43809422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20706c7b32958775356c830eb11210eddf7d21167b6b54a9dc82276d772ec25a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 21:00:48 GMT
ADD file:5606f3b00b6ac8c7a8a2bc92079df093abcae12f415c17ded941fdc1e5c2236e in / 
# Tue, 12 Dec 2017 21:00:48 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:01:01 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:892d7ecb5e8d92d3fe1bc8c683a81646e5c364154146f43e620290d54f555e99`  
		Last Modified: Tue, 12 Dec 2017 21:10:56 GMT  
		Size: 43.8 MB (43809199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c66c54cf85f3ccd15f5f285383659cc7c3b68fc94ad4db975bcf1c55958c773`  
		Last Modified: Tue, 12 Dec 2017 21:11:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:6f697756175a9c8ded32d61156af5b14fae573cc1105e1cdb052014b6ac7722f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41849926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23649b9b0e397230125707143370edddbe46c614e483baea6c08fed74edb9654`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:31:46 GMT
ADD file:7d305ccf389c1f7d69d4249939cda55c198b69a1e90434f1e9f6873c202894a3 in / 
# Tue, 12 Dec 2017 13:31:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 13:32:02 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:269cfca1906d8d30aa6f0b7af3c765ab10482401cdb86e541d90de92e7c93036`  
		Last Modified: Tue, 12 Dec 2017 13:43:28 GMT  
		Size: 41.8 MB (41849701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee4784d400e6bac78a570f28e8430d62e3ded5b0cd28c35502b0a7841cd59c2`  
		Last Modified: Tue, 12 Dec 2017 13:43:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:92e8a48e5c25f00ed3d799b1960dbfee4370ecbf9c576701be672c68a0726a48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42913009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b398fe7a83cf5967157491099729805026966404b5e098437ff9e4ca1f927d0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:31:30 GMT
ADD file:718a2f9550503e03533747b0a90f11d9e5e3901cc6d6ca1d879799053e520fdb in / 
# Tue, 12 Dec 2017 18:31:31 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:31:52 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6b0da2862b465360e525f440830b13a2d2cab0727be29be0188db332ea16dc69`  
		Last Modified: Tue, 12 Dec 2017 18:45:25 GMT  
		Size: 42.9 MB (42912784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a5ba6f82415011f1cf25579298023f552bdbae7686c7d953effe26eff59407`  
		Last Modified: Tue, 12 Dec 2017 18:46:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:1c137a1d558221e5756c2214130dcee537ca8f6e60222767092558bf5fb40aa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45827322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67b51c677fd4dd8f3298102f9a9d4e043c2333bd655f4bcab3e9a6818443d72`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:26:27 GMT
ADD file:b4506faef1374afea354028d93f02b26ed2fe009ded2af8b2d2acb9d9e8bb50a in / 
# Tue, 12 Dec 2017 14:26:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:27:41 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:786f44732f3712daf577d06f9a8a032e075023422a73e09b3101d307f47f328a`  
		Last Modified: Tue, 12 Dec 2017 14:59:55 GMT  
		Size: 45.8 MB (45827097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffc91b5ce1565eeebb1ceb6137999e439e43cc3273bee46acc142b7fb063548`  
		Last Modified: Tue, 12 Dec 2017 15:00:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:e0c63a158107a2cbe0213876e733c9ff57c8d52092469e9d93a6e35751646bb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45382623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce99171857dafe0bbf210892412aaa3e0bdadfdbcb823b3722ded0359c47615f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:34:47 GMT
ADD file:26af3dd6b366e16616984cd6f53e82d1cf84d55a0c43ec360ab7b0fd5c3ab25e in / 
# Tue, 12 Dec 2017 01:34:48 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:34:56 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:91b591032bfd7bedd9cd9e1a997b1d9a50a87810e0ea8cf66aa643c9b8320bce`  
		Last Modified: Tue, 12 Dec 2017 01:41:15 GMT  
		Size: 45.4 MB (45382398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33aab3c18e7e9f53bf775230ade8927b3cc5408707fc83059dfccd5e0aae80b`  
		Last Modified: Tue, 12 Dec 2017 01:41:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:864af15a41ab6336c078d1de7aaaef50a16881cd0db9ad24ccb235253432254b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44967305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94880c03fda83690f708c176bd26330df83754da71f30f83df71fee04ac127bf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:24:47 GMT
ADD file:3719f8554f681020ce715c8f10a4bcc52921b34d81890f23da691dce0103919f in / 
# Tue, 12 Dec 2017 06:24:48 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:24:56 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4be8d41bfbc7b3af32002c88d2f6c823e2589f8ebaab46d28add4f2deb03bd4c`  
		Last Modified: Tue, 12 Dec 2017 06:30:02 GMT  
		Size: 45.0 MB (44967080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd823ab6aa3df1f750f53ac6ce4797f369f7eb48750a3e62d02a3361a75f510a`  
		Last Modified: Tue, 12 Dec 2017 06:30:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
