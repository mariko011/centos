## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:e6f3517b76e6ac37620fea9823c05cd2cc6a49048760dbfcc0414f1310b1b35b
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836c5bd55e4c261d7f75dd1c59acc181d32c31a38b33e981687ad381afc0dc09`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:28 GMT
EXPOSE 4443/tcp
# Tue, 03 Jan 2017 17:54:34 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:35 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:36 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:36 GMT
WORKDIR /notary/server
# Tue, 03 Jan 2017 17:54:37 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:38 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 03 Jan 2017 17:54:38 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:39 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1c34097ed5f9e978eb65165ecb54a6ea4e7678830ff7945a3036cbc57bbf07`  
		Last Modified: Tue, 03 Jan 2017 17:56:00 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61348d231434323939af41e0bab112a9803297b5e64b93bb8d9a7028903ce87a`  
		Last Modified: Tue, 03 Jan 2017 17:56:03 GMT  
		Size: 5.7 MB (5698321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c180fddb972fc925385de8d230e6274d0317c63f316e48947f91caa2804e5c93`  
		Last Modified: Tue, 03 Jan 2017 17:56:00 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6954b6fe3fe4e90a7c827bf6a5f8f5665d3c94abc57fc80817e8994df46bc`  
		Last Modified: Tue, 03 Jan 2017 17:56:00 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
