## `notary:signer`

```console
$ docker pull notary@sha256:f0a4eb7942365ab7db20e5e080b67dfeda8c3ea035f44d47aeaf450ac4532df8
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6833722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aa6d24d216256d0305b2ff8b7408c530329d68c4bee1ffa0b85ff6388114ae`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:36:08 GMT
EXPOSE 4444/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
EXPOSE 7899/tcp
# Tue, 20 Sep 2016 00:36:09 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:34 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:34 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 20 Sep 2016 00:36:35 GMT
WORKDIR /notary/signer
# Tue, 20 Sep 2016 00:36:36 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:36:36 GMT
USER [notary]
# Tue, 20 Sep 2016 00:36:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 20 Sep 2016 00:36:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:36:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daabcea5601b5766d048e95ec96e4d4f04fcaf8d2e4b3ecbbf9a0bab7e581ac0`  
		Last Modified: Tue, 20 Sep 2016 00:36:22 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c47d4a7a471080ed490125caf848f75780eb467cb9c0d9ac7d72d71cde11d`  
		Last Modified: Tue, 20 Sep 2016 00:36:48 GMT  
		Size: 4.5 MB (4520744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294cbb69e3ac35cb50f307963fe4474d9b4b98508836258d4310e27447506891`  
		Last Modified: Tue, 20 Sep 2016 00:36:45 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb53f11647af12c028c64088cd9d9b3a640c2480897f10160eb95d8a29e5eea`  
		Last Modified: Tue, 20 Sep 2016 00:36:45 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
