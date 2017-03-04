## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:a11af0c5d9fa7e3236f9a4c7e031def50b9c89f28db4073e4313f0c73d6d7595
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6427924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c828cae611874920bc87a17caa8bc4e06e3f326930b480113de305314be6eb1`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:28 GMT
EXPOSE 4444/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
EXPOSE 7899/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:37 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:38 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:38 GMT
WORKDIR /notary/signer
# Fri, 03 Mar 2017 22:38:39 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:39 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 03 Mar 2017 22:38:40 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:40 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06a06ec090e6817889a5847e0556b006d1acc62fd6ed16fe8c63e66f373443`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a81930392d84de5fc15678673b0d752402bc923c514bb56ac4b9b8d7567f010`  
		Last Modified: Sat, 04 Mar 2017 05:27:48 GMT  
		Size: 4.5 MB (4520740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7271e965c15f1e9106def633343b239c8637ad996c56b549118e34cf90ff318a`  
		Last Modified: Sat, 04 Mar 2017 05:27:47 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6724ff22ea80dceaaca169f35610cb684af3d7b52f3a71c708db20980eec93e`  
		Last Modified: Sat, 04 Mar 2017 05:27:46 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
