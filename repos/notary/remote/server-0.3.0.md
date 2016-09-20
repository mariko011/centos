## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:592aa4e84fca9e73604924592c3fc5546a82eddc550accb3c597f28229dea3f4
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7118170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbfea8631105bfe52fc5c0ee7e2e40c3aacd808d1cb2e1ffb3058a981b9f0c8`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:35:32 GMT
EXPOSE 4443/tcp
# Tue, 20 Sep 2016 00:35:33 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 20 Sep 2016 00:35:34 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 20 Sep 2016 00:35:34 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 20 Sep 2016 00:35:35 GMT
WORKDIR /notary/server
# Tue, 20 Sep 2016 00:35:36 GMT
RUN adduser -D -H -g "" notary
# Tue, 20 Sep 2016 00:35:36 GMT
USER [notary]
# Tue, 20 Sep 2016 00:35:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 20 Sep 2016 00:35:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 20 Sep 2016 00:35:37 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea065e460d1e55f1c55efd597ff01dbb9dc6aaef380161dbd861550a5d9231b7`  
		Last Modified: Tue, 20 Sep 2016 00:35:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad722932bae6f3315bd840fdcefa1199757673c99881ea2fb2f03014e8bfa15`  
		Last Modified: Tue, 20 Sep 2016 00:35:49 GMT  
		Size: 4.8 MB (4805120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386fc94315aa2145a0e5a4d441dbac7c80ff2480f5d9e767bd19613e7009ea67`  
		Last Modified: Tue, 20 Sep 2016 00:35:49 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb872c36eeebdd6d8bc9bc0aa1896db5179e77d95c2589cf47969e71397be50`  
		Last Modified: Tue, 20 Sep 2016 00:35:46 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
