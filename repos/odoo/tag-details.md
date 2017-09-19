<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:10`](#odoo10)
-	[`odoo:10.0`](#odoo100)
-	[`odoo:8`](#odoo8)
-	[`odoo:8.0`](#odoo80)
-	[`odoo:9`](#odoo9)
-	[`odoo:9.0`](#odoo90)
-	[`odoo:latest`](#odoolatest)

## `odoo:10`

```console
$ docker pull odoo@sha256:e8e49c3d779164333ddefe4e54e6ba8048ab4e0b7cbbe5b052f95850e099ce50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

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

## `odoo:10.0`

```console
$ docker pull odoo@sha256:e8e49c3d779164333ddefe4e54e6ba8048ab4e0b7cbbe5b052f95850e099ce50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

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

## `odoo:8`

```console
$ docker pull odoo@sha256:726c006dce1dcead804c76ebaa806a59f791444a9760cc3dadbbbe812a39bff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

```console
$ docker pull odoo@sha256:55877a984fe170416dfaed085f6eb42bed2cf83acb9c0b58a31b64cf36220ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273377738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b75368d8753f146471ed2ca0e19a10a4bf1084b1b6d50e1574504e181527347`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:09:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 19 Sep 2017 06:11:00 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 19 Sep 2017 06:11:00 GMT
ENV ODOO_VERSION=8.0
# Tue, 19 Sep 2017 06:11:00 GMT
ENV ODOO_RELEASE=20170815
# Tue, 19 Sep 2017 06:12:27 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 19 Sep 2017 06:12:28 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 19 Sep 2017 06:12:28 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 19 Sep 2017 06:12:29 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 19 Sep 2017 06:12:30 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 19 Sep 2017 06:12:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 19 Sep 2017 06:12:30 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 19 Sep 2017 06:12:30 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 19 Sep 2017 06:12:30 GMT
USER [odoo]
# Tue, 19 Sep 2017 06:12:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 06:12:31 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2347b4e4f0a4c2d341d1e7032858f90c4ee01b54fbb0f7a564d96d6ff8a2655`  
		Last Modified: Tue, 19 Sep 2017 06:20:41 GMT  
		Size: 88.4 MB (88364632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f6e1ece5300044ffcdecc6b50e268644a33f6d888b8128e835ebb8cdc585e8`  
		Last Modified: Tue, 19 Sep 2017 06:21:07 GMT  
		Size: 132.4 MB (132415631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4caf1a8dd0bf3482c688e0617944f394527f0253f602ed7f66f864c6984730`  
		Last Modified: Tue, 19 Sep 2017 06:20:21 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1363d018f7a8a68fb3d135dbf45df50da8381ea9827ff0867ce9910e2437630`  
		Last Modified: Tue, 19 Sep 2017 06:20:20 GMT  
		Size: 592.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cafae65dfcfbc2f4c42bf845b9b813998a1f9155685c607d5397dc56e6a3931`  
		Last Modified: Tue, 19 Sep 2017 06:20:20 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e793915321283901e816db63fa7e04cab01feef1140792583c24d973bcc14c7e`  
		Last Modified: Tue, 19 Sep 2017 06:20:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8.0`

```console
$ docker pull odoo@sha256:726c006dce1dcead804c76ebaa806a59f791444a9760cc3dadbbbe812a39bff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

```console
$ docker pull odoo@sha256:55877a984fe170416dfaed085f6eb42bed2cf83acb9c0b58a31b64cf36220ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273377738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b75368d8753f146471ed2ca0e19a10a4bf1084b1b6d50e1574504e181527347`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:09:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 19 Sep 2017 06:11:00 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 19 Sep 2017 06:11:00 GMT
ENV ODOO_VERSION=8.0
# Tue, 19 Sep 2017 06:11:00 GMT
ENV ODOO_RELEASE=20170815
# Tue, 19 Sep 2017 06:12:27 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 19 Sep 2017 06:12:28 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 19 Sep 2017 06:12:28 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 19 Sep 2017 06:12:29 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 19 Sep 2017 06:12:30 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 19 Sep 2017 06:12:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 19 Sep 2017 06:12:30 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 19 Sep 2017 06:12:30 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 19 Sep 2017 06:12:30 GMT
USER [odoo]
# Tue, 19 Sep 2017 06:12:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 06:12:31 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2347b4e4f0a4c2d341d1e7032858f90c4ee01b54fbb0f7a564d96d6ff8a2655`  
		Last Modified: Tue, 19 Sep 2017 06:20:41 GMT  
		Size: 88.4 MB (88364632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f6e1ece5300044ffcdecc6b50e268644a33f6d888b8128e835ebb8cdc585e8`  
		Last Modified: Tue, 19 Sep 2017 06:21:07 GMT  
		Size: 132.4 MB (132415631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4caf1a8dd0bf3482c688e0617944f394527f0253f602ed7f66f864c6984730`  
		Last Modified: Tue, 19 Sep 2017 06:20:21 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1363d018f7a8a68fb3d135dbf45df50da8381ea9827ff0867ce9910e2437630`  
		Last Modified: Tue, 19 Sep 2017 06:20:20 GMT  
		Size: 592.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cafae65dfcfbc2f4c42bf845b9b813998a1f9155685c607d5397dc56e6a3931`  
		Last Modified: Tue, 19 Sep 2017 06:20:20 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e793915321283901e816db63fa7e04cab01feef1140792583c24d973bcc14c7e`  
		Last Modified: Tue, 19 Sep 2017 06:20:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:9a63ee234cf91cc92cb6ae740befcc2cc4778343230b1634cdef487753759085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:7d846607b8d9857749ce3c16e915bf33c2874f1d441015ff58c5b44817bb1730
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289888305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b700233f8d089805ba5b02fb0864fb4590d6af8c2bc4d1fb6867010b77a2060b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:09:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 19 Sep 2017 06:13:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 19 Sep 2017 06:13:40 GMT
ENV ODOO_VERSION=9.0
# Tue, 19 Sep 2017 06:13:40 GMT
ENV ODOO_RELEASE=20170815
# Tue, 19 Sep 2017 06:15:50 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 19 Sep 2017 06:15:51 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 19 Sep 2017 06:15:51 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 19 Sep 2017 06:15:52 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 19 Sep 2017 06:15:52 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 19 Sep 2017 06:15:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 19 Sep 2017 06:15:53 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 19 Sep 2017 06:15:53 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 19 Sep 2017 06:15:53 GMT
USER [odoo]
# Tue, 19 Sep 2017 06:15:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 06:15:53 GMT
CMD ["openerp-server"]
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
	-	`sha256:3a2f1344ce9ab66c0ad88d8f1003776b07eeced36fe33b80c58d806a47304bf0`  
		Last Modified: Tue, 19 Sep 2017 06:22:13 GMT  
		Size: 148.6 MB (148553664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11a693e815a336f34019db29136c9a07864d65136f00707e9498d7f7a311f04`  
		Last Modified: Tue, 19 Sep 2017 06:21:23 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fec8b3dd547e0bb556b15d30d5941a513e760fed74e0698105459b34ed66dec`  
		Last Modified: Tue, 19 Sep 2017 06:21:23 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26403675eb48461ef48ee68e290dea8bc9a2398723570cac2179d2b12a04a475`  
		Last Modified: Tue, 19 Sep 2017 06:21:23 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4efa1bcf6bcdb49f7a6989e4f0a63b47ee5a18ddea14fe43e26a42c2ff354ad`  
		Last Modified: Tue, 19 Sep 2017 06:21:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:9a63ee234cf91cc92cb6ae740befcc2cc4778343230b1634cdef487753759085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:7d846607b8d9857749ce3c16e915bf33c2874f1d441015ff58c5b44817bb1730
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289888305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b700233f8d089805ba5b02fb0864fb4590d6af8c2bc4d1fb6867010b77a2060b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:09:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 19 Sep 2017 06:13:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 19 Sep 2017 06:13:40 GMT
ENV ODOO_VERSION=9.0
# Tue, 19 Sep 2017 06:13:40 GMT
ENV ODOO_RELEASE=20170815
# Tue, 19 Sep 2017 06:15:50 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 19 Sep 2017 06:15:51 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 19 Sep 2017 06:15:51 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 19 Sep 2017 06:15:52 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 19 Sep 2017 06:15:52 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 19 Sep 2017 06:15:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 19 Sep 2017 06:15:53 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 19 Sep 2017 06:15:53 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 19 Sep 2017 06:15:53 GMT
USER [odoo]
# Tue, 19 Sep 2017 06:15:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 06:15:53 GMT
CMD ["openerp-server"]
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
	-	`sha256:3a2f1344ce9ab66c0ad88d8f1003776b07eeced36fe33b80c58d806a47304bf0`  
		Last Modified: Tue, 19 Sep 2017 06:22:13 GMT  
		Size: 148.6 MB (148553664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11a693e815a336f34019db29136c9a07864d65136f00707e9498d7f7a311f04`  
		Last Modified: Tue, 19 Sep 2017 06:21:23 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fec8b3dd547e0bb556b15d30d5941a513e760fed74e0698105459b34ed66dec`  
		Last Modified: Tue, 19 Sep 2017 06:21:23 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26403675eb48461ef48ee68e290dea8bc9a2398723570cac2179d2b12a04a475`  
		Last Modified: Tue, 19 Sep 2017 06:21:23 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4efa1bcf6bcdb49f7a6989e4f0a63b47ee5a18ddea14fe43e26a42c2ff354ad`  
		Last Modified: Tue, 19 Sep 2017 06:21:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
