## `registry:latest`

```console
$ docker pull registry@sha256:5eaafa2318aa0c4c52f95077c2a68bed0b13f6d2b464835723d4de1484052299
```

-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10662373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a449c9f8344bc09d07c42839c6ea012ffb522456c52304175c0519ce7870d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:06 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 28 Jun 2017 22:16:07 GMT
COPY file:286222b32843a33f78b8d717455a70255082b971db4fc53d46d467d2526359ab in /bin/registry 
# Wed, 28 Jun 2017 22:16:08 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 28 Jun 2017 22:16:09 GMT
VOLUME [/var/lib/registry]
# Wed, 28 Jun 2017 22:16:10 GMT
EXPOSE 5000/tcp
# Wed, 28 Jun 2017 22:16:11 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 28 Jun 2017 22:16:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 22:16:13 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a754cdc94a5af4ef6c939acfc7f82f3ef56840a62c0e22b3c8a70ee085743b9`  
		Last Modified: Fri, 30 Jun 2017 01:00:31 GMT  
		Size: 2.0 MB (2013448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0756a217635f6808797a4a454849e4d3139e73011571e23154daa62e2913008f`  
		Last Modified: Fri, 30 Jun 2017 01:00:31 GMT  
		Size: 6.3 MB (6263334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82b9495c796b1daaf44c2c54bc9f5c0b2018686fcc4922d9708b0e6e96eb55e`  
		Last Modified: Fri, 30 Jun 2017 01:00:28 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154ef19ddee64edd702ab722c0bee283cf34eab32dde16243bc98adef65b2b52`  
		Last Modified: Fri, 30 Jun 2017 01:00:28 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
