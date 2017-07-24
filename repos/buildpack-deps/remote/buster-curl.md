## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:bad07edd0229ab3548f513cf73e8dd496d4ffc7072f9f314d87216680b6f413f
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:buster-curl` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60994462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c36f10f05cafe03138df7fdd0ee474d56b31af8473b5d122a4d1593a1a4094d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:07 GMT
ADD file:180cb5dbe138819fcefea6df1b24cb0b3c4eb27d3e11d9169168ac8c545dc6a4 in / 
# Mon, 24 Jul 2017 16:51:07 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:21:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:21:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:92a0fac866cea04683848cdc7ad341b5f7f333a754a785f920f0b59652ff8dca`  
		Last Modified: Mon, 24 Jul 2017 16:54:18 GMT  
		Size: 48.0 MB (48020220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9735199f4b35481a9d87a5fd8492b3c316623f0598cc6420b95f1e5a4d952df4`  
		Last Modified: Mon, 24 Jul 2017 17:31:53 GMT  
		Size: 8.6 MB (8551450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff30133646678929c7e1e2664f1c1296cf386035c8ed9fbb88653a371961b948`  
		Last Modified: Mon, 24 Jul 2017 17:31:55 GMT  
		Size: 4.4 MB (4422792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
