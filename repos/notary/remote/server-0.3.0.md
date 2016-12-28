## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:8caca70e85792462df77235ed227fe0b06d4550889d6776049bd2a02c84c0f27
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7120210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86e4e6389e27ff1a5a9c678800df9f9b765c99d9d8d60f62670e103052131750`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:50:56 GMT
EXPOSE 4443/tcp
# Tue, 27 Dec 2016 20:51:03 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:09 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:10 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:10 GMT
WORKDIR /notary/server
# Tue, 27 Dec 2016 20:51:11 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:12 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 27 Dec 2016 20:51:12 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:13 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0899c7f1757856a113ce2036d5ae6e497f6ae7d36d266ad0f74baa9e1c2af51`  
		Last Modified: Tue, 27 Dec 2016 21:11:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e71ed793f8e594d4f7dfbe90e8bd371e3d28ee075d3798d27a4b1f0fa9a199`  
		Last Modified: Tue, 27 Dec 2016 21:11:35 GMT  
		Size: 4.8 MB (4805122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867b8c74c063fde848a61156a2a49325cc282cf76422323908cae3a9de6ec024`  
		Last Modified: Tue, 27 Dec 2016 21:11:34 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55bba428b1cb4e8ffd9a345aac9dc05d577886f215ffffd3fcb6eab895be41b`  
		Last Modified: Tue, 27 Dec 2016 21:11:34 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
