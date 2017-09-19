## `odoo:latest`

```console
$ docker pull odoo@sha256:e8e49c3d779164333ddefe4e54e6ba8048ab4e0b7cbbe5b052f95850e099ce50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:907de8cea7ef360952158b2754c46b5e8a9f610ca16c55062af91a643820ba17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274708380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff7376eb98ad8a24cae80b8c6bffa177e5a5448e40da18efdf8177f64a7226a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:09:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 19 Sep 2017 06:13:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 19 Sep 2017 06:18:12 GMT
ENV ODOO_VERSION=10.0
# Tue, 19 Sep 2017 06:18:12 GMT
ENV ODOO_RELEASE=20170815
# Tue, 19 Sep 2017 06:19:58 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 19 Sep 2017 06:19:58 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 19 Sep 2017 06:19:59 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 19 Sep 2017 06:19:59 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 19 Sep 2017 06:20:00 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 19 Sep 2017 06:20:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 19 Sep 2017 06:20:00 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 19 Sep 2017 06:20:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 19 Sep 2017 06:20:01 GMT
USER [odoo]
# Tue, 19 Sep 2017 06:20:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 06:20:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354c9e44110c40dfbadfb87838ae7e9abc7775c8befc9ea09cb974dd26a7d52`  
		Last Modified: Tue, 19 Sep 2017 06:21:45 GMT  
		Size: 88.7 MB (88737178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51360bd02c92d565bec38bc6f694e4ef88c1be4323418937e456cc772db55dec`  
		Last Modified: Tue, 19 Sep 2017 06:23:18 GMT  
		Size: 133.4 MB (133373765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95362a1e6cdda702ae5ac59709dedc3207c41a4168e1827bf96ad5dea92345c`  
		Last Modified: Tue, 19 Sep 2017 06:22:29 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70a6cae175611782879f8d5380b19d59084bbc047940fb58a673e20c8ad70d6`  
		Last Modified: Tue, 19 Sep 2017 06:22:29 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd04b1b97d9a2f769a3c2bdadfd3e3b1f6f9c0ea0531570f3686733eb5f0fc69`  
		Last Modified: Tue, 19 Sep 2017 06:22:29 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8551a955b711e71603d36eba05cc7e2e9b21f06bcd9c17d3997af0fa887f8916`  
		Last Modified: Tue, 19 Sep 2017 06:22:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
