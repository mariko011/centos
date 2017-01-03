## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:81b1c2971f25a69325afc4500da086a6d437f6bbf629cbd0c13fc1bb58d7dad6
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6709172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9a0fca3cdee8f07cd77b6002417235529ff77b22f9433163ea35f0b7cc5139`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:28 GMT
EXPOSE 4443/tcp
# Tue, 03 Jan 2017 17:54:34 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:40 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:41 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:41 GMT
WORKDIR /notary/server
# Tue, 03 Jan 2017 17:54:43 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:43 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 03 Jan 2017 17:54:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:44 GMT
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
	-	`sha256:57231ec6a139bfae94cb8f53668745262dfd47df5c2d50c242ea0ae35e49bf12`  
		Last Modified: Tue, 03 Jan 2017 17:56:23 GMT  
		Size: 4.8 MB (4805125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca59428bf6bb66f3eceb20732533b0235e3e548f500d379261969fd8ad5ecf8`  
		Last Modified: Tue, 03 Jan 2017 17:56:21 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94bc439ff3b6d1b562c88de47bdd0c9f58e78492777ed277f6390d8e6dd5e8e`  
		Last Modified: Tue, 03 Jan 2017 17:56:20 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
