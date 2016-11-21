## `traefik:camembert`

```console
$ docker pull traefik@sha256:8fd0e3ee0aca5a4019a981eae81c46c283c36e2463f2c04d7b144e672777cffe
```

-	Platforms:
	-	linux; amd64

### `traefik:camembert` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f50fad61bf7f03c016756f3dc1df7716d5f6b5d27255f49ed2736d761f7a8f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:39 GMT
COPY file:cf2d208eee34f301179807ffea35c3a9cceb36e80d7484fadabbb6cda7c15bfb in /etc/ssl/certs/ 
# Mon, 21 Nov 2016 17:43:47 GMT
COPY file:9d45e32877bd64a9d44d780c7648e40cdf997f2bb63b43c12af0eeb8f4a42c7c in / 
# Mon, 21 Nov 2016 17:43:47 GMT
EXPOSE 80/tcp
# Mon, 21 Nov 2016 17:43:47 GMT
ENTRYPOINT ["/traefik"]
# Mon, 21 Nov 2016 17:43:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.1.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:895d64059c56a06236d7b4d0c91cdeb1601186b9d6f771b0575ca7d034406d17`  
		Last Modified: Mon, 26 Sep 2016 20:44:06 GMT  
		Size: 153.8 KB (153795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e58fce693a7ef2e2c84a53d89277815bdf1b280eb5019622c3fe823db8163b8`  
		Last Modified: Mon, 21 Nov 2016 17:44:08 GMT  
		Size: 5.5 MB (5454343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
