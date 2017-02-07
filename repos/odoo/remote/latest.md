## `odoo:latest`

```console
$ docker pull odoo@sha256:1d4119b195a0520b7b568c0cb800a4a21097d6e65f4a3612f082c66510a48d07
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.3 MB (269280023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521d6cf51841533c0fd52783035578458701a3e54332dd149ce070a40eb9cd64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:45:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 07 Feb 2017 21:45:00 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 07 Feb 2017 21:46:49 GMT
ENV ODOO_VERSION=10.0
# Tue, 07 Feb 2017 21:46:50 GMT
ENV ODOO_RELEASE=20170207
# Tue, 07 Feb 2017 21:48:05 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 07 Feb 2017 21:48:07 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 07 Feb 2017 21:48:07 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 07 Feb 2017 21:48:09 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 07 Feb 2017 21:48:10 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 07 Feb 2017 21:48:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 07 Feb 2017 21:48:11 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 07 Feb 2017 21:48:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 07 Feb 2017 21:48:12 GMT
USER [odoo]
# Tue, 07 Feb 2017 21:48:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 07 Feb 2017 21:48:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b964bb84dc923fb155278c755e5db0292ccfd322dbb3e10e942ee2195bc0d59b`  
		Last Modified: Tue, 07 Feb 2017 21:53:32 GMT  
		Size: 86.7 MB (86671184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cffaa3a36f16e17f29be455d25f6f2f20138c20c47fe032cab88fd98c7ff70`  
		Last Modified: Tue, 07 Feb 2017 21:55:33 GMT  
		Size: 131.2 MB (131245766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5f8ef650c7de5706bf7bf44e3a7a55eed1029609de61c026b05a3597913896`  
		Last Modified: Tue, 07 Feb 2017 21:54:40 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b2872261b9bc7e1cb01b814f9cbfe753430687ae21be8c805c4ab07df0cf0c`  
		Last Modified: Tue, 07 Feb 2017 21:54:41 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc4b6b5d259ecd7eb3eb15527296273c8ce621073ebe423d4f3b858772efded`  
		Last Modified: Tue, 07 Feb 2017 21:54:40 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf13d0120c417b1ac140ea4a7bedb9383d14c817b220f7283c4a4710d7a4f5fe`  
		Last Modified: Tue, 07 Feb 2017 21:54:40 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
