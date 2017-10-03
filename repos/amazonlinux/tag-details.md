<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:2016.09`](#amazonlinux201609)
-	[`amazonlinux:2016.09.1.20161221`](#amazonlinux201609120161221)
-	[`amazonlinux:2016.09.1.20161221-with-sources`](#amazonlinux201609120161221-with-sources)
-	[`amazonlinux:2016.09-with-sources`](#amazonlinux201609-with-sources)
-	[`amazonlinux:2017.03`](#amazonlinux201703)
-	[`amazonlinux:2017.03.1.20170812`](#amazonlinux201703120170812)
-	[`amazonlinux:2017.03.1.20170812-with-sources`](#amazonlinux201703120170812-with-sources)
-	[`amazonlinux:2017.03-with-sources`](#amazonlinux201703-with-sources)
-	[`amazonlinux:2017.09`](#amazonlinux201709)
-	[`amazonlinux:2017.09.0.20170930`](#amazonlinux201709020170930)
-	[`amazonlinux:2017.09.0.20170930-with-sources`](#amazonlinux201709020170930-with-sources)
-	[`amazonlinux:2017.09-with-sources`](#amazonlinux201709-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:2016.09`

```console
$ docker pull amazonlinux@sha256:1afdf721531f9c98faf87dc026cad2d42d4fc3e2fe522d9ac6c3eed510786816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2016.09` - linux; amd64

```console
$ docker pull amazonlinux@sha256:de9ca409fa337a1c8546d13775587211e700a315f308334699df91d394a83c6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98754127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc57d001f0e074322f2aa581c68ce3c01f199c7b08f3c267dda48b00fbd3638d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 14:36:02 GMT
ADD file:e294b217c1dfae0777e67c33c8cf8235d3c4c786dae2f51da2b648192c9e59d4 in / 
# Wed, 13 Sep 2017 14:36:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9013413dd2f3fe43968afb3df07d2c8a9f2ea1e777da5b2f41439bc78004308c`  
		Last Modified: Sun, 19 Mar 2017 06:06:10 GMT  
		Size: 98.8 MB (98754127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2016.09.1.20161221`

```console
$ docker pull amazonlinux@sha256:1afdf721531f9c98faf87dc026cad2d42d4fc3e2fe522d9ac6c3eed510786816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2016.09.1.20161221` - linux; amd64

```console
$ docker pull amazonlinux@sha256:de9ca409fa337a1c8546d13775587211e700a315f308334699df91d394a83c6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98754127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc57d001f0e074322f2aa581c68ce3c01f199c7b08f3c267dda48b00fbd3638d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 14:36:02 GMT
ADD file:e294b217c1dfae0777e67c33c8cf8235d3c4c786dae2f51da2b648192c9e59d4 in / 
# Wed, 13 Sep 2017 14:36:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9013413dd2f3fe43968afb3df07d2c8a9f2ea1e777da5b2f41439bc78004308c`  
		Last Modified: Sun, 19 Mar 2017 06:06:10 GMT  
		Size: 98.8 MB (98754127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2016.09.1.20161221-with-sources`

```console
$ docker pull amazonlinux@sha256:5803bac9a7f80d350317950d547aa95256e9dbbb01d242450fbed93f7065f2a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2016.09.1.20161221-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:5379cc0bae5f05e57f5b8f53069769b266f0c61da3c4afb63cad3c06e5ad1acc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.4 MB (403430634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53699b0b7cdec16d130dd2061c9217da36901962c58253f95153f5d04d2e013f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 14:36:02 GMT
ADD file:e294b217c1dfae0777e67c33c8cf8235d3c4c786dae2f51da2b648192c9e59d4 in / 
# Wed, 13 Sep 2017 14:36:03 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 14:36:22 GMT
RUN curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=IGTZ.Uzl4n4Vmg1z88gcQ0zKpHdgEUIW"  && echo "83e8a2a80e6607e89dc2a7848ccd1e5487970267bd95eb96512c706307092328 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:9013413dd2f3fe43968afb3df07d2c8a9f2ea1e777da5b2f41439bc78004308c`  
		Last Modified: Sun, 19 Mar 2017 06:06:10 GMT  
		Size: 98.8 MB (98754127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26b3eedf4ced6c01a4cbfde4d2ac9f79bac6459a8f13a26379474a4ec55def`  
		Last Modified: Wed, 13 Sep 2017 14:39:20 GMT  
		Size: 304.7 MB (304676507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2016.09-with-sources`

```console
$ docker pull amazonlinux@sha256:5803bac9a7f80d350317950d547aa95256e9dbbb01d242450fbed93f7065f2a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2016.09-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:5379cc0bae5f05e57f5b8f53069769b266f0c61da3c4afb63cad3c06e5ad1acc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.4 MB (403430634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53699b0b7cdec16d130dd2061c9217da36901962c58253f95153f5d04d2e013f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 14:36:02 GMT
ADD file:e294b217c1dfae0777e67c33c8cf8235d3c4c786dae2f51da2b648192c9e59d4 in / 
# Wed, 13 Sep 2017 14:36:03 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 14:36:22 GMT
RUN curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=IGTZ.Uzl4n4Vmg1z88gcQ0zKpHdgEUIW"  && echo "83e8a2a80e6607e89dc2a7848ccd1e5487970267bd95eb96512c706307092328 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:9013413dd2f3fe43968afb3df07d2c8a9f2ea1e777da5b2f41439bc78004308c`  
		Last Modified: Sun, 19 Mar 2017 06:06:10 GMT  
		Size: 98.8 MB (98754127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26b3eedf4ced6c01a4cbfde4d2ac9f79bac6459a8f13a26379474a4ec55def`  
		Last Modified: Wed, 13 Sep 2017 14:39:20 GMT  
		Size: 304.7 MB (304676507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.03`

```console
$ docker pull amazonlinux@sha256:022f6450d29d8b68d5f9182f0776084e726680c4ce9f0d34c505b3d3d0d06cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:92dd694aba062d6aed9454c3b10f212c33905184845dcfc514064835f9c517a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8279720816f2c0dcd0f29f27571d6767740ee06ea97a4663a42cec29f9839f6e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 14:35:33 GMT
ADD file:d6f930eb0249084dee652ec0d40505d29ac5e7aeeb2ecd5705916b2fd0c60c6e in / 
# Wed, 13 Sep 2017 14:35:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2fd2f27d0459b3fc333cf344b655b13ba970a44c295ff9e2109adac0ed6f6da9`  
		Last Modified: Mon, 04 Sep 2017 05:49:40 GMT  
		Size: 61.0 MB (61045051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.03.1.20170812`

```console
$ docker pull amazonlinux@sha256:022f6450d29d8b68d5f9182f0776084e726680c4ce9f0d34c505b3d3d0d06cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.03.1.20170812` - linux; amd64

```console
$ docker pull amazonlinux@sha256:92dd694aba062d6aed9454c3b10f212c33905184845dcfc514064835f9c517a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8279720816f2c0dcd0f29f27571d6767740ee06ea97a4663a42cec29f9839f6e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 14:35:33 GMT
ADD file:d6f930eb0249084dee652ec0d40505d29ac5e7aeeb2ecd5705916b2fd0c60c6e in / 
# Wed, 13 Sep 2017 14:35:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2fd2f27d0459b3fc333cf344b655b13ba970a44c295ff9e2109adac0ed6f6da9`  
		Last Modified: Mon, 04 Sep 2017 05:49:40 GMT  
		Size: 61.0 MB (61045051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.03.1.20170812-with-sources`

```console
$ docker pull amazonlinux@sha256:200fbe9d48a3a183f4c12667ec9ea915dd743a76949b3862835a59c360bd8a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.03.1.20170812-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:f7cde45fa1984566368b1909a1145b1200efb39cf43e6ca3fe6544971464d852
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.2 MB (350180798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717050e4d6f351683992571a3ccb6a6973e801deaa16208f1a1770799017408`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 14:35:33 GMT
ADD file:d6f930eb0249084dee652ec0d40505d29ac5e7aeeb2ecd5705916b2fd0c60c6e in / 
# Wed, 13 Sep 2017 14:35:33 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 14:35:48 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=ZVTePIIr6bdWA56CVZ7EkRKV5So3o4hl"  && echo "9be0315c2e647f7d1ba59fd843e5ea7bc4506028fa1329415477618a42aaa4b2 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2fd2f27d0459b3fc333cf344b655b13ba970a44c295ff9e2109adac0ed6f6da9`  
		Last Modified: Mon, 04 Sep 2017 05:49:40 GMT  
		Size: 61.0 MB (61045051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2d8be01b37ca901e6905d94f5b14558a918f715f04049f145ee5a9834fedd7`  
		Last Modified: Wed, 13 Sep 2017 14:37:26 GMT  
		Size: 289.1 MB (289135747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.03-with-sources`

```console
$ docker pull amazonlinux@sha256:200fbe9d48a3a183f4c12667ec9ea915dd743a76949b3862835a59c360bd8a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:f7cde45fa1984566368b1909a1145b1200efb39cf43e6ca3fe6544971464d852
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.2 MB (350180798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717050e4d6f351683992571a3ccb6a6973e801deaa16208f1a1770799017408`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 14:35:33 GMT
ADD file:d6f930eb0249084dee652ec0d40505d29ac5e7aeeb2ecd5705916b2fd0c60c6e in / 
# Wed, 13 Sep 2017 14:35:33 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 14:35:48 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=ZVTePIIr6bdWA56CVZ7EkRKV5So3o4hl"  && echo "9be0315c2e647f7d1ba59fd843e5ea7bc4506028fa1329415477618a42aaa4b2 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2fd2f27d0459b3fc333cf344b655b13ba970a44c295ff9e2109adac0ed6f6da9`  
		Last Modified: Mon, 04 Sep 2017 05:49:40 GMT  
		Size: 61.0 MB (61045051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2d8be01b37ca901e6905d94f5b14558a918f715f04049f145ee5a9834fedd7`  
		Last Modified: Wed, 13 Sep 2017 14:37:26 GMT  
		Size: 289.1 MB (289135747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09`

```console
$ docker pull amazonlinux@sha256:845bd16cdd4312b2710a67f4bc0c8bb0466c73a8359e4c742971a7eb66b50b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09` - linux; amd64

```console
$ docker pull amazonlinux@sha256:8dc72201f4e7602c091812d9337398de445245e66158203cc8ec593e3f310356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61590506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcc89bac702f5046de14cd5d1032578b241545119f2c62990e2ea0840889ec2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Oct 2017 20:19:35 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Tue, 03 Oct 2017 20:19:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09.0.20170930`

```console
$ docker pull amazonlinux@sha256:845bd16cdd4312b2710a67f4bc0c8bb0466c73a8359e4c742971a7eb66b50b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09.0.20170930` - linux; amd64

```console
$ docker pull amazonlinux@sha256:8dc72201f4e7602c091812d9337398de445245e66158203cc8ec593e3f310356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61590506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcc89bac702f5046de14cd5d1032578b241545119f2c62990e2ea0840889ec2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Oct 2017 20:19:35 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Tue, 03 Oct 2017 20:19:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09.0.20170930-with-sources`

```console
$ docker pull amazonlinux@sha256:7abf969c1d0c0a596d1d9112b38471db1834a2164172e9423ec6fd9a512042e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09.0.20170930-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:8e9da97ab8f8c29c7423fce76fcf699573c28dabe294a499f73f7f663ba63133
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360562404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef05c4a064db14ea9bb5df58812b5206ffeffab4fdae22680148971febf4fb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Oct 2017 20:19:35 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Tue, 03 Oct 2017 20:19:35 GMT
CMD ["/bin/bash"]
# Tue, 03 Oct 2017 20:19:56 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=krS6u2CG0dlP3bhFMTy4WWyS6NLnygew"  && echo "d3f06b2ca42112eec2c847f58da6b9b2fe477f49919a41e886e19e07b9baedb1 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f83e74b994a79746477dd81d6570f22cca384d73e469401a3a12235f4f73f`  
		Last Modified: Tue, 03 Oct 2017 20:21:09 GMT  
		Size: 299.0 MB (298971898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09-with-sources`

```console
$ docker pull amazonlinux@sha256:7abf969c1d0c0a596d1d9112b38471db1834a2164172e9423ec6fd9a512042e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:8e9da97ab8f8c29c7423fce76fcf699573c28dabe294a499f73f7f663ba63133
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360562404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef05c4a064db14ea9bb5df58812b5206ffeffab4fdae22680148971febf4fb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Oct 2017 20:19:35 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Tue, 03 Oct 2017 20:19:35 GMT
CMD ["/bin/bash"]
# Tue, 03 Oct 2017 20:19:56 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=krS6u2CG0dlP3bhFMTy4WWyS6NLnygew"  && echo "d3f06b2ca42112eec2c847f58da6b9b2fe477f49919a41e886e19e07b9baedb1 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f83e74b994a79746477dd81d6570f22cca384d73e469401a3a12235f4f73f`  
		Last Modified: Tue, 03 Oct 2017 20:21:09 GMT  
		Size: 299.0 MB (298971898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:845bd16cdd4312b2710a67f4bc0c8bb0466c73a8359e4c742971a7eb66b50b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:8dc72201f4e7602c091812d9337398de445245e66158203cc8ec593e3f310356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61590506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcc89bac702f5046de14cd5d1032578b241545119f2c62990e2ea0840889ec2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Oct 2017 20:19:35 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Tue, 03 Oct 2017 20:19:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:7abf969c1d0c0a596d1d9112b38471db1834a2164172e9423ec6fd9a512042e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:8e9da97ab8f8c29c7423fce76fcf699573c28dabe294a499f73f7f663ba63133
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360562404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef05c4a064db14ea9bb5df58812b5206ffeffab4fdae22680148971febf4fb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 03 Oct 2017 20:19:35 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Tue, 03 Oct 2017 20:19:35 GMT
CMD ["/bin/bash"]
# Tue, 03 Oct 2017 20:19:56 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=krS6u2CG0dlP3bhFMTy4WWyS6NLnygew"  && echo "d3f06b2ca42112eec2c847f58da6b9b2fe477f49919a41e886e19e07b9baedb1 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f83e74b994a79746477dd81d6570f22cca384d73e469401a3a12235f4f73f`  
		Last Modified: Tue, 03 Oct 2017 20:21:09 GMT  
		Size: 299.0 MB (298971898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
