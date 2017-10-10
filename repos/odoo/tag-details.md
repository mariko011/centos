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
$ docker pull odoo@sha256:d1b8572fa50a6041779c0ee7e4b6c4152d1ffae1d10d8690b73c7acdbfa03bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

```console
$ docker pull odoo@sha256:15e290f5a3c52645915ff17934a39c2590507cbf88db4ea7e60d61362d76cf11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273379776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276bb1abe6130f272edb93e213455881b9a24421b1ca926cdc2f07c90aa0ef10`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:31:04 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:31:06 GMT
ENV ODOO_VERSION=8.0
# Tue, 10 Oct 2017 00:31:06 GMT
ENV ODOO_RELEASE=20170815
# Tue, 10 Oct 2017 00:32:19 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Oct 2017 00:32:19 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 10 Oct 2017 00:32:20 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 10 Oct 2017 00:32:20 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:32:21 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Oct 2017 00:32:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Oct 2017 00:32:21 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Oct 2017 00:32:22 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:32:22 GMT
USER [odoo]
# Tue, 10 Oct 2017 00:32:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:32:22 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588cb84c434c296be566af16e6c0eee1068493890390c0eb153ee045e0dea318`  
		Last Modified: Tue, 10 Oct 2017 00:39:18 GMT  
		Size: 88.4 MB (88365813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1262c37859cd5d2c10b07476acaa49d4d512a732234f8f88e70a141b54c118b`  
		Last Modified: Tue, 10 Oct 2017 00:39:36 GMT  
		Size: 132.4 MB (132416904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f53189d22667ea11936c10a3776219c6e68a8bfaec202eaf93dda0cc79eedfe`  
		Last Modified: Tue, 10 Oct 2017 00:38:51 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f9d845b031049511421a9472219b113f5730453ab1b02d46b60e54017a58a6`  
		Last Modified: Tue, 10 Oct 2017 00:38:53 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a207ac7158c3789b797e7e0182b625eb02c2286d5339e209cc6c8fc9bf9161f3`  
		Last Modified: Tue, 10 Oct 2017 00:38:52 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e3848d7b2b6df44eeddb90eeda33b8bd5e6ec0ca9fd7328604406af606581`  
		Last Modified: Tue, 10 Oct 2017 00:38:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8.0`

```console
$ docker pull odoo@sha256:d1b8572fa50a6041779c0ee7e4b6c4152d1ffae1d10d8690b73c7acdbfa03bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

```console
$ docker pull odoo@sha256:15e290f5a3c52645915ff17934a39c2590507cbf88db4ea7e60d61362d76cf11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273379776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276bb1abe6130f272edb93e213455881b9a24421b1ca926cdc2f07c90aa0ef10`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:31:04 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:31:06 GMT
ENV ODOO_VERSION=8.0
# Tue, 10 Oct 2017 00:31:06 GMT
ENV ODOO_RELEASE=20170815
# Tue, 10 Oct 2017 00:32:19 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Oct 2017 00:32:19 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 10 Oct 2017 00:32:20 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 10 Oct 2017 00:32:20 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:32:21 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Oct 2017 00:32:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Oct 2017 00:32:21 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Oct 2017 00:32:22 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:32:22 GMT
USER [odoo]
# Tue, 10 Oct 2017 00:32:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:32:22 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588cb84c434c296be566af16e6c0eee1068493890390c0eb153ee045e0dea318`  
		Last Modified: Tue, 10 Oct 2017 00:39:18 GMT  
		Size: 88.4 MB (88365813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1262c37859cd5d2c10b07476acaa49d4d512a732234f8f88e70a141b54c118b`  
		Last Modified: Tue, 10 Oct 2017 00:39:36 GMT  
		Size: 132.4 MB (132416904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f53189d22667ea11936c10a3776219c6e68a8bfaec202eaf93dda0cc79eedfe`  
		Last Modified: Tue, 10 Oct 2017 00:38:51 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f9d845b031049511421a9472219b113f5730453ab1b02d46b60e54017a58a6`  
		Last Modified: Tue, 10 Oct 2017 00:38:53 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a207ac7158c3789b797e7e0182b625eb02c2286d5339e209cc6c8fc9bf9161f3`  
		Last Modified: Tue, 10 Oct 2017 00:38:52 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e3848d7b2b6df44eeddb90eeda33b8bd5e6ec0ca9fd7328604406af606581`  
		Last Modified: Tue, 10 Oct 2017 00:38:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:46c819950206f8898b6eb5656bd18a3a5eada5089b56d85a3273811ca03c5e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:02460b6e4937c139c66f940de803d340c326e80c01f7c4f04eb5beaaa182aa38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289888280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ec0137193d9ad1e6ff304bee1679c5b81d52daf67d624c2a03c1a44b2459e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_VERSION=9.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_RELEASE=20170815
# Tue, 10 Oct 2017 00:35:40 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Oct 2017 00:36:00 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 10 Oct 2017 00:36:00 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 10 Oct 2017 00:36:01 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:36:02 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Oct 2017 00:36:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Oct 2017 00:36:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Oct 2017 00:36:02 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:36:02 GMT
USER [odoo]
# Tue, 10 Oct 2017 00:36:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:36:03 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8245e20f318aa15580b86769c1a17cecc6eec803e64446bf615fe4ee009b098b`  
		Last Modified: Tue, 10 Oct 2017 00:40:45 GMT  
		Size: 148.6 MB (148553979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8be2f9dbbd83d9b8d44c24572963b871760ee9e324a8ee19fb7ce2d048bb42d`  
		Last Modified: Tue, 10 Oct 2017 00:39:55 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8532f713ee106b2b632309f0acecb40ee9c2c43593e378eb6fb9d0689cc9da0`  
		Last Modified: Tue, 10 Oct 2017 00:39:55 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cc5af00dc0db3393621f64cb00d3d848b29047fc170d22f05927776609f845`  
		Last Modified: Tue, 10 Oct 2017 00:39:56 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac2a3874f0f99b71520054772dda524959255bda166386891aa9fd735ecbe`  
		Last Modified: Tue, 10 Oct 2017 00:39:56 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:46c819950206f8898b6eb5656bd18a3a5eada5089b56d85a3273811ca03c5e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:02460b6e4937c139c66f940de803d340c326e80c01f7c4f04eb5beaaa182aa38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289888280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ec0137193d9ad1e6ff304bee1679c5b81d52daf67d624c2a03c1a44b2459e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_VERSION=9.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_RELEASE=20170815
# Tue, 10 Oct 2017 00:35:40 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Oct 2017 00:36:00 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 10 Oct 2017 00:36:00 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 10 Oct 2017 00:36:01 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:36:02 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Oct 2017 00:36:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Oct 2017 00:36:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Oct 2017 00:36:02 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 10 Oct 2017 00:36:02 GMT
USER [odoo]
# Tue, 10 Oct 2017 00:36:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:36:03 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8245e20f318aa15580b86769c1a17cecc6eec803e64446bf615fe4ee009b098b`  
		Last Modified: Tue, 10 Oct 2017 00:40:45 GMT  
		Size: 148.6 MB (148553979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8be2f9dbbd83d9b8d44c24572963b871760ee9e324a8ee19fb7ce2d048bb42d`  
		Last Modified: Tue, 10 Oct 2017 00:39:55 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8532f713ee106b2b632309f0acecb40ee9c2c43593e378eb6fb9d0689cc9da0`  
		Last Modified: Tue, 10 Oct 2017 00:39:55 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cc5af00dc0db3393621f64cb00d3d848b29047fc170d22f05927776609f845`  
		Last Modified: Tue, 10 Oct 2017 00:39:56 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac2a3874f0f99b71520054772dda524959255bda166386891aa9fd735ecbe`  
		Last Modified: Tue, 10 Oct 2017 00:39:56 GMT  
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
