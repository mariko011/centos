## `notary:server`

```console
$ docker pull notary@sha256:8066f02c464fc58e07f3d18bfad9d615d5adf0edd24d46b200ad43ec08e077d1
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7117410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d458fb14aa4d0ba880d2fbde7709b4f0ab7fad867c5cdae1d1ff31a297f00fe9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:24 GMT
EXPOSE 4443/tcp
# Tue, 30 Aug 2016 16:28:24 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:24 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:25 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:25 GMT
WORKDIR /notary/server
# Tue, 30 Aug 2016 16:28:26 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:26 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 30 Aug 2016 16:28:26 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:27 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192c44ba7c3d5880a08aad101866cc0534e9a83e41e4ef8737a88fd5ee795ec9`  
		Last Modified: Thu, 08 Sep 2016 18:05:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93a9da3e7d474f350256797d8c2b6d92585cef86616b5cea0421a7cefc7a9db`  
		Last Modified: Thu, 08 Sep 2016 18:05:57 GMT  
		Size: 4.8 MB (4805121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce8297b01f75da7604be8916903ec598571f643a9e30a552aa966a460a6eeac`  
		Last Modified: Thu, 08 Sep 2016 18:05:55 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a12b0baa7ce4a299a595bcd5a633d81718ec5145d76872c94a53cfa43e7e1dc`  
		Last Modified: Thu, 08 Sep 2016 18:05:55 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
