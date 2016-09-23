## `notary:server`

```console
$ docker pull notary@sha256:5a9f682daa2750e55f721d0b5b3f0f05d8188ce9f06105dbf3c474ea0fd34baa
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7120046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd1f44d1cdcb5f77e0a495fdecf021d42c621cd1899f24a25ff0397b1c4eb6c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:13:29 GMT
EXPOSE 4443/tcp
# Fri, 23 Sep 2016 17:13:30 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 23 Sep 2016 17:13:30 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Fri, 23 Sep 2016 17:13:31 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 23 Sep 2016 17:13:31 GMT
WORKDIR /notary/server
# Fri, 23 Sep 2016 17:13:32 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:13:32 GMT
USER [notary]
# Fri, 23 Sep 2016 17:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 23 Sep 2016 17:13:33 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:13:33 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3f217fdbbaf9291023eb2fa56f89454846f1ea28a7d281506da443fbc0edd`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ede60e2cf5cfc0b0d37b05f984354fa3e0f2b651800bb81079c2cb8082e7c9f`  
		Last Modified: Fri, 23 Sep 2016 17:13:43 GMT  
		Size: 4.8 MB (4805121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38965e5c5af1f5b3f49afeee948d12e8d42e3589f98f575546828da3e6950de1`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0543ae624b2da0c811fc8dba4ad14ddc746671b433c7d51b8a34940cf408e1ab`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
