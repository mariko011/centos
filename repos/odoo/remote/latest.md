## `odoo:latest`

```console
$ docker pull odoo@sha256:126985f43d9282c79b8e73b5a12e1fec534105b34503536109d68fc93f7d093e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:7a625b2d3a78cdf90fdb2408daa7664205826bb212b65d92ad4f8ac51e4c76a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274708586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742a2db27738fa83925ae9da529406f3cb56fba2dd2a8daad56100b1e6c81e45`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 06:07:14 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 13 Sep 2017 06:10:31 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 13 Sep 2017 06:12:43 GMT
ENV ODOO_VERSION=10.0
# Wed, 13 Sep 2017 06:12:43 GMT
ENV ODOO_RELEASE=20170815
# Wed, 13 Sep 2017 06:14:06 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 13 Sep 2017 06:14:07 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 13 Sep 2017 06:14:07 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 13 Sep 2017 06:14:08 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 13 Sep 2017 06:14:09 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 13 Sep 2017 06:14:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 13 Sep 2017 06:14:09 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 13 Sep 2017 06:14:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 13 Sep 2017 06:14:09 GMT
USER [odoo]
# Wed, 13 Sep 2017 06:14:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 06:14:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8e85ddca06de8896cc43c049ab0cadf0c61c8a5c14c8133dfc84c3f3aa0f9a`  
		Last Modified: Wed, 13 Sep 2017 06:15:45 GMT  
		Size: 88.7 MB (88737239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edbc1b07176fe502c66a1d30d5225fb3e24534bb61f85787c1dd0e6873b0425`  
		Last Modified: Wed, 13 Sep 2017 06:16:58 GMT  
		Size: 133.4 MB (133373915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847839870483cb8973ad66b655009b29923ebac0ee7c5f8f0a8ce5929e554662`  
		Last Modified: Wed, 13 Sep 2017 06:16:14 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84264becd8a8da45a2ede88a0fc55b172a0d37dc3a9ab5591c2b8f40a76777fc`  
		Last Modified: Wed, 13 Sep 2017 06:16:14 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d8320669f66fffa2f266fc738b77a0190cdd55cd41330dd0bc80b0e41c8c27`  
		Last Modified: Wed, 13 Sep 2017 06:16:15 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbde8cf23d27a880e3e6e60a3d0e8fc2b6a31ec49dba9a8639df6e02a7bbd221`  
		Last Modified: Wed, 13 Sep 2017 06:16:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
