## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:1953c2fc07bfda8c4bf3e1b0a5d91555f7ea2b3cc2bc2636c5729701dd149d20
```

-	Platforms:
	-	linux; amd64

### `nats-streaming:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2631918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bb22ce63885e536593c93f05df60911b05b787d6deb6be621cc35c70259aad`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 21 Dec 2016 19:25:46 GMT
COPY file:04a8f029ddc622a39340c15de49fabe3ed390742947437f809a6d9e94dfabf47 in /nats-streaming-server 
# Wed, 21 Dec 2016 19:25:46 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 21 Dec 2016 19:25:47 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 21 Dec 2016 19:25:48 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:066955b040a18c180b6dce62a3f76436e185201d4dd6e14f29372924f57822b2`  
		Last Modified: Wed, 21 Dec 2016 19:26:14 GMT  
		Size: 2.6 MB (2631918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
