## `traefik:raclette`

```console
$ docker pull traefik@sha256:10c7e7287e7a65e337074144db53e4d5c6683d4a675533f3ccfacd0b08d5f9b3
```

-	Platforms:
	-	linux; amd64

### `traefik:raclette` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12967278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83921a5aa1945b5a3c7f9fc797ee0bb39acfbe70ba13d831c113b91f4f2b9b2e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 15 Dec 2016 17:54:02 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 16 Jun 2017 16:52:32 GMT
COPY file:c7f2e27faced0512923ad3c6bff933e520fb8c5048d77cccff6cdd6bf4b7b735 in / 
# Fri, 16 Jun 2017 16:52:33 GMT
EXPOSE 80/tcp
# Fri, 16 Jun 2017 16:52:34 GMT
ENTRYPOINT ["/traefik"]
# Fri, 16 Jun 2017 16:52:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03a84e30597f6e498aa09e940b69f623d31c22909fa05c7132e1b142f9439e38`  
		Last Modified: Thu, 15 Dec 2016 17:54:23 GMT  
		Size: 156.1 KB (156143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cfcf1eed203c91d5275967d2f7cc72f856311cbc5d9ac01cb02dd6dc608d2c`  
		Last Modified: Fri, 16 Jun 2017 16:53:37 GMT  
		Size: 12.8 MB (12811135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
