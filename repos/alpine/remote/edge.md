## `alpine:edge`

```console
$ docker pull alpine@sha256:54c64c4c26851df291447f542aba86ac8969563374a69aeec589cad2eeee20ad
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
$ docker pull alpine@sha256:61f8f3e9f074b5724953a8cb0d9e58c78228c7117dd771239e97b10420172d51
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1966181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c41e938f831be9484a29600cb03cc2f789efc2624a27069269e89fd40ace63a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:39 GMT
ADD file:1c393d81013fd8ac65c123eb6cb4debf0d821cb53b606002963420de9b59a58d in / 
# Wed, 25 Oct 2017 23:28:39 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:39 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:c0b2d6e75302b02e7e1e595b72e8928e4a1f29a4b73431007de16c62ec14ecac`  
		Last Modified: Wed, 25 Oct 2017 23:28:50 GMT  
		Size: 2.0 MB (1966006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e592546a9a5a0de7933f6fca1c2d1a6a3831004c5cbdac35042c9edf17eaae8`  
		Last Modified: Wed, 25 Oct 2017 23:28:50 GMT  
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
$ docker pull alpine@sha256:f8ace97a399b6bc0995e46f6452305612a43f0891b879ce0447c28028fddfc16
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1915345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1d0c1e7782267b141963da3102d6eff8338e0535996b636f4952760276944f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:49 GMT
ADD file:3fdd2d59f68ac62f9f1000a3ba3e6378b41dfe9a2b1e2eeaa372eae100044788 in / 
# Wed, 25 Oct 2017 23:28:49 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:49 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:49bfb53fe200cb5f15fea2a84da4f337f277f8f6190d2cbf12af7d49e88c7c2a`  
		Last Modified: Wed, 25 Oct 2017 23:29:08 GMT  
		Size: 1.9 MB (1915169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08a0112f680fd59c0c63ad3571d5226f05806d505aee3745f4ec89715d46c8`  
		Last Modified: Wed, 25 Oct 2017 23:29:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
