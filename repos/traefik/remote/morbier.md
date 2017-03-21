## `traefik:morbier`

```console
$ docker pull traefik@sha256:d9d82c52bb091466b167ea1c0f2a27c0032baef786ead275d3c40fb9e4759aaa
```

-	Platforms:
	-	linux; amd64

### `traefik:morbier` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11606891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ac035b61730505f7abcc7da5f77a595690ba01e11a17d84b08b20f8a2576d2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 15 Dec 2016 17:54:02 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 21 Mar 2017 17:41:00 GMT
COPY file:008a94ed7b95e67ea12e80be8f72b46ab22fcae35b8407dd54dd630258396b47 in / 
# Tue, 21 Mar 2017 17:41:00 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 17:41:01 GMT
ENTRYPOINT ["/traefik"]
# Tue, 21 Mar 2017 17:41:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.2.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03a84e30597f6e498aa09e940b69f623d31c22909fa05c7132e1b142f9439e38`  
		Last Modified: Thu, 15 Dec 2016 17:54:23 GMT  
		Size: 156.1 KB (156143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8953f33164453d7abdeda9ed3f61e40f2b3a32555b5bd1696a34bbc380aac277`  
		Last Modified: Tue, 21 Mar 2017 17:41:56 GMT  
		Size: 11.5 MB (11450748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
