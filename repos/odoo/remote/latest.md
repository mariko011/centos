## `odoo:latest`

```console
$ docker pull odoo@sha256:c5c530de5fdcd206617113f381f194abc8f5d6c272d3fb4f301eadcc5c6985e9
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273208473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779beea033a4224611a1ad7f5ced11b2c6728c195d5e2d04f8dceb221f08e842`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:14:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Dec 2016 17:14:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Dec 2016 17:14:43 GMT
ENV ODOO_VERSION=10.0
# Wed, 14 Dec 2016 17:14:44 GMT
ENV ODOO_RELEASE=20161123
# Wed, 14 Dec 2016 17:15:47 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Dec 2016 17:15:49 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 14 Dec 2016 17:15:49 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Wed, 14 Dec 2016 17:15:50 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 14 Dec 2016 17:15:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Dec 2016 17:15:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Dec 2016 17:15:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Dec 2016 17:15:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 14 Dec 2016 17:15:53 GMT
USER [odoo]
# Wed, 14 Dec 2016 17:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 17:15:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c4cd4ef734b6f3725e45edf2fd83ece4173442c4acd18be994ca75884e21e`  
		Last Modified: Wed, 21 Dec 2016 18:47:47 GMT  
		Size: 86.0 MB (85980399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c8c773fde8e31a94c89b034abe01163a55a7082706340071b3e3fc748d7198`  
		Last Modified: Wed, 21 Dec 2016 18:48:13 GMT  
		Size: 135.9 MB (135863071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ab903d6a2d976dbcc2b86476f1389ff4682777bda5e3f0600b522f274a4241`  
		Last Modified: Wed, 21 Dec 2016 18:47:16 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b470300aba74c43a1ba7ef624abd20eaf09ed7e1b8589e1a20742080d1611c4`  
		Last Modified: Wed, 21 Dec 2016 18:47:17 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ca3541a70cc622580ea66e38cd3e260ba45aabf3054119ef06f2c183697db`  
		Last Modified: Wed, 21 Dec 2016 18:47:17 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a85d3778d8fec3a7d4bf27b3d86a0df4d2d6fcc16f595f6d0e1616dbc2598`  
		Last Modified: Wed, 21 Dec 2016 18:47:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
