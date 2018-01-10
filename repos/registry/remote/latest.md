## `registry:latest`

```console
$ docker pull registry@sha256:672d519d7fd7bbc7a448d17956ebeefe225d5eb27509d8dc5ce67ecb4a0bce54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:feb40d14cd33e646b9985e2d6754ed66616fedb840226c4d917ef53d616dcd6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10680608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1fd7d86a8257f3404f92c4474fb3353076883062d64a09232d95d940627459d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:22:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 10 Jan 2018 01:22:37 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 10 Jan 2018 01:22:38 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 10 Jan 2018 01:22:38 GMT
VOLUME [/var/lib/registry]
# Wed, 10 Jan 2018 01:22:38 GMT
EXPOSE 5000/tcp
# Wed, 10 Jan 2018 01:22:38 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 10 Jan 2018 01:22:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:22:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235084c2315ae4fbe7e454a3253647dd378ef7b98fe887c11d432d6e6e59359`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 2.0 MB (2027080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c692f3a6894b23bda1b90eca8816b0f91011a35c3159cf732124c4aa1c3d0e21`  
		Last Modified: Wed, 10 Jan 2018 01:23:42 GMT  
		Size: 6.3 MB (6265374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2177f3a70e81f6228f60328d21327a0df0511a69ac1468e1325c4d4ecf1e87`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d79362094727fa58c2b715ec07642562ed03c92828a9e9dea3eb95599fd9d1`  
		Last Modified: Wed, 10 Jan 2018 01:23:41 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
