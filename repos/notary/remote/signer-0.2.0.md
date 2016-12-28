## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:05d0f333da6bfeb2b7aedae08838a4b80b6a284345164f1e45e4393c636d2b16
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7780126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e497be26d255563347edb55e323d311ed5f270a140678dbef9e98d9c74be2c4c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:51:19 GMT
EXPOSE 4444/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
EXPOSE 7899/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:27 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:27 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:28 GMT
WORKDIR /notary/signer
# Tue, 27 Dec 2016 20:51:29 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:29 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 27 Dec 2016 20:51:30 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:30 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75c625c3f05de77c5d9c75a125c86b5fff7419c80109bdd3e847809e5ab62a`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d8ecd7267cdc5638a20ad3d8d9394597c7213e2bde753ec0313676ee11509f`  
		Last Modified: Tue, 27 Dec 2016 21:13:06 GMT  
		Size: 5.5 MB (5465107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569821552b51b82d3c5198a1188a77e305fc9c14618ee9ab5dc3f216b6bcf2c0`  
		Last Modified: Tue, 27 Dec 2016 21:13:03 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f41790c3361f76d4904320dcd8b7eb4cd37a3c2559810fda57df8b2f98927a`  
		Last Modified: Tue, 27 Dec 2016 21:13:03 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
