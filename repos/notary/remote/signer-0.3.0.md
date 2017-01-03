## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:576f775003ddc932c82a71d67d7a940d411e67df278e987f199f5b325916676e
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6424716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc710d53d804b461701aaca56726a44ed5beefb04b0bd2d65f7d058346857685`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 4444/tcp
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 7899/tcp
# Tue, 03 Jan 2017 17:54:51 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:02 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:03 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:03 GMT
WORKDIR /notary/signer
# Tue, 03 Jan 2017 17:55:04 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:55:05 GMT
USER [notary]
# Tue, 03 Jan 2017 17:55:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 03 Jan 2017 17:55:06 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:55:06 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092f8aae89b984d70bc1a3a4fd51b74d45e69cdc9dc80053545b70b509cf16cc`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f355e8fcd9372b863b7c4302a4ed4746cb0ee0727e6de4dfeae6bf5a11b9fbc`  
		Last Modified: Tue, 03 Jan 2017 17:57:57 GMT  
		Size: 4.5 MB (4520743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c3bc11df7af50d3e842d8e0598a0dc3e1e2152fae26f2f81b227f5e7a300f1`  
		Last Modified: Tue, 03 Jan 2017 17:57:56 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e21ae36ac1f3cf2fcfb2a8c98acc0b3abaf40396f25b558f47d9a552d0c709`  
		Last Modified: Tue, 03 Jan 2017 17:57:56 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
