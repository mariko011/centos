## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:841cbe89a87b0c50eb57063a0ba8cfc919979ce3994ca2cd72149ccfce09fa46
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5918849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8846e47d915ef6d2bdd17f4f1063af302b7814291c2b9f685bdd7bad4a8caee0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 4444/tcp
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 7899/tcp
# Tue, 18 Oct 2016 23:45:27 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:07 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:08 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:08 GMT
WORKDIR /notary/signer
# Mon, 14 Nov 2016 23:22:09 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:22:09 GMT
USER [notary]
# Mon, 14 Nov 2016 23:22:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 14 Nov 2016 23:22:10 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:22:10 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643403c0c9e60605eb2f2414eba0c0437f6d63dd57efc3d4409aadf784944715`  
		Last Modified: Tue, 18 Oct 2016 23:45:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22332c45092f86e1e75a475e7fbb5555eacbcd3575e346548b1667dea01f4abb`  
		Last Modified: Mon, 14 Nov 2016 23:23:35 GMT  
		Size: 3.6 MB (3603960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896cdaa51e0b7cd5af5167da072b0d64061b8f083d64d760ec06389953de8a7a`  
		Last Modified: Mon, 14 Nov 2016 23:23:33 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d81f107f154c41b8dad05e10afa4bb8947ff93882638f0d0e20c084775c907`  
		Last Modified: Mon, 14 Nov 2016 23:23:34 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
