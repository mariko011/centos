## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:bfc28e626955431dce0633e6a1f54917e4328c31c173ee5c020aaa7f99786d86
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5798026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448ae4204f6daea9f9c7ec2ff82b5258edea00e6e9a21432cd2689607ba8d3ec`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:28 GMT
EXPOSE 4443/tcp
# Tue, 03 Jan 2017 17:54:28 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:45 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Tue, 03 Jan 2017 17:54:46 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:46 GMT
WORKDIR /notary/server
# Tue, 03 Jan 2017 17:54:48 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:48 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 03 Jan 2017 17:54:49 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:49 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1af6e06e3dc7e24c2ce5f42dc127a98cd13f00cf31b1f57223fc6e7e01afba`  
		Last Modified: Tue, 03 Jan 2017 17:55:27 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3daa7c41259a262ee89751335fdc6528eeac2d5e64a7433834e288ffd5e690`  
		Last Modified: Tue, 03 Jan 2017 17:56:43 GMT  
		Size: 3.9 MB (3893986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44546aec9c3e8cf5872ab817f613c78d5f2ddec9a37d225850ca5bd7272bc64e`  
		Last Modified: Tue, 03 Jan 2017 17:56:41 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e737ffb8d34c6cc0ef0741cce876f419407f327ac7da1221295d8ee23981410`  
		Last Modified: Tue, 03 Jan 2017 17:56:41 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
