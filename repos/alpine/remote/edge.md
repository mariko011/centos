## `alpine:edge`

```console
$ docker pull alpine@sha256:d19968fa2c7a322a4036bf8cbd99519f14fdfa7c30edf38d35620425179fc6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `alpine:edge` - linux; amd64

```console
$ docker pull alpine@sha256:6fa3225360ea1a48aaee4ca87de66e8e12b9a4f749f37acc7b4b5b9cc3d91b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2066104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c4fa780951b060bb0a75355765bc58112350d9974970d60561671d552aaf2e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:11:19 GMT
ADD file:85ed2ac9d10c6f076a01f29e72b653675994c6fcfb90f0e6b88368c0262893fa in / 
# Tue, 09 Jan 2018 21:11:19 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:1eae7a7426b0551d5699798f8604597e7f5be52efd1f14ef53832a0cb63e7e4d`  
		Last Modified: Tue, 09 Jan 2018 21:14:01 GMT  
		Size: 2.1 MB (2066104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; arm variant v6

```console
$ docker pull alpine@sha256:7e779237e07c292d70c63b51f516e86803da959456429da237540c79b348ef21
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209be0bd220d38699d7cf0a083fd30a9c28eca47c758bbc1d64ca74801ac805d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 23:48:34 GMT
ADD file:63f4f857d89b483afafdde0075ec7f9f7e7c0a6b0284d1d481326f7f66301908 in / 
# Tue, 09 Jan 2018 23:48:34 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Tue, 09 Jan 2018 23:48:35 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:05580b002c183e87be01ec78395a96ff05bbc883708b3a3981b984b9ae63c9c8`  
		Last Modified: Tue, 09 Jan 2018 23:48:42 GMT  
		Size: 2.0 MB (2038370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975d8f877f1a93cce8db11bf8fede94be036d8c828ad93bd579862d713a78e14`  
		Last Modified: Tue, 09 Jan 2018 23:48:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; arm64 variant v8

```console
$ docker pull alpine@sha256:4df91b71daa61086cd8e322142e34e31580985046d7b4aa89404a6890900de09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2045633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb6099ff56d170b66f16f63bf5181c098763f3a905512523eccc045d47af142`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:29:24 GMT
ADD file:cd1f346ee1533d5334333c4e648f7b4185222a812025f1c2b5dab0a5241cc840 in / 
# Wed, 25 Oct 2017 23:29:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:29:26 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:aca2d1d4ea1b0596ffccb1bba80a0307502f9a23599efdb8fdacc6340208ff8d`  
		Last Modified: Wed, 25 Oct 2017 23:30:13 GMT  
		Size: 2.0 MB (2045457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ed24ebc8b20c233f6db5fd7ce41ef7ef16b6328765f6672f96f613b1c17c05`  
		Last Modified: Wed, 25 Oct 2017 23:30:12 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; 386

```console
$ docker pull alpine@sha256:d8a022b48ee8a71ba075c3a053a742badb5e57d3916743f7ed97e4b94394e5ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2045634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b35bff58a2399c33c42f2b072f4f68e921fa115826eec91f2361cf0553300d5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:17 GMT
ADD file:cd1f346ee1533d5334333c4e648f7b4185222a812025f1c2b5dab0a5241cc840 in / 
# Wed, 25 Oct 2017 23:32:17 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:17 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:aca2d1d4ea1b0596ffccb1bba80a0307502f9a23599efdb8fdacc6340208ff8d`  
		Last Modified: Wed, 25 Oct 2017 23:30:13 GMT  
		Size: 2.0 MB (2045457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f304a7c65dca9aa61373f5e280747b00c294345b46508b8a009a932bde1d71d6`  
		Last Modified: Wed, 25 Oct 2017 23:32:42 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; ppc64le

```console
$ docker pull alpine@sha256:05c84f5825fea37c022987dba48ec84274139d4f64ec1e1b9f98b199117ce58d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2008739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7efcdb21ff9d284ea0302afee1542f689352970de6b03f059f127d9c2422c9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:0824d828f4f3dcc5ba03a374faafee81705e8044f527b5347131bbe7e66192c0 in / 
# Wed, 25 Oct 2017 23:29:00 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:29:01 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:e7dc72bdd963304003037938792876cec270e2af8e8216c3aa9329c71df8457a`  
		Last Modified: Wed, 25 Oct 2017 23:29:26 GMT  
		Size: 2.0 MB (2008563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569701857f98ac33b8fe7c3adc211b4c03464e5885e6fcd4c7e23bfa2bc017fa`  
		Last Modified: Wed, 25 Oct 2017 23:29:25 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; s390x

```console
$ docker pull alpine@sha256:32edb54e5577f1dbbca7008f55b2c32760478e29f302737254bb7e2737b6972f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1988999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff2099f6d914e712b62941bc4aabc4a811a0f7b5755a3c4716657e3a30d5429`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:41:53 GMT
ADD file:b9b4cf0892093a163477b5b91c7b0c45d9a69cd33d8c77545d2f80ef1e86ee77 in / 
# Tue, 09 Jan 2018 21:41:53 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Tue, 09 Jan 2018 21:41:53 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:e629e6244a0915335efdbb47b87e88884c96e65ddac9dccd5d59c6fa84e4bc15`  
		Last Modified: Mon, 25 Dec 2017 07:29:49 GMT  
		Size: 2.0 MB (1988823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229e17cf92fb1ca673c5333d09dd7bf8ba91336cb17c2724f3f4a30fc9f431af`  
		Last Modified: Tue, 09 Jan 2018 21:42:05 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
