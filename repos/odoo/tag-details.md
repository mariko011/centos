<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:8.0`](#odoo80)
-	[`odoo:8`](#odoo8)
-	[`odoo:9.0`](#odoo90)
-	[`odoo:9`](#odoo9)
-	[`odoo:10.0`](#odoo100)
-	[`odoo:10`](#odoo10)
-	[`odoo:latest`](#odoolatest)

## `odoo:8.0`

```console
$ docker pull odoo@sha256:a6ac72293edb9559a60c4c1835e7b3a5872c6449dc144aa4ec61052dcb235983
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273084975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835eb09999779911a1876b4dc90273c3afb50051b44ca9a67c44dec51ff2dd90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:36:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 08 Sep 2017 08:37:19 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 08 Sep 2017 08:37:19 GMT
ENV ODOO_VERSION=8.0
# Fri, 08 Sep 2017 08:37:20 GMT
ENV ODOO_RELEASE=20170815
# Fri, 08 Sep 2017 08:38:34 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 08 Sep 2017 08:38:35 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 08 Sep 2017 08:38:36 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 08 Sep 2017 08:38:37 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 08 Sep 2017 08:38:37 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 08 Sep 2017 08:38:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 08 Sep 2017 08:38:38 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 08 Sep 2017 08:38:38 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 08 Sep 2017 08:38:39 GMT
USER [odoo]
# Fri, 08 Sep 2017 08:38:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 08:38:39 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f95a23a3c16a2706480666a91747b28cc81913579d738b9933220420c7b7b6b`  
		Last Modified: Sat, 09 Sep 2017 00:22:56 GMT  
		Size: 88.4 MB (88364626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56baf6734418f328dfaff7d0ebda5aea474aef5bd53f8033618b54d400d35b9`  
		Last Modified: Sat, 09 Sep 2017 00:23:28 GMT  
		Size: 132.1 MB (132122878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761bfb913dbb6cf3ad43b91e660b1117beb435d6917c948c3c077d0831ce5baa`  
		Last Modified: Sat, 09 Sep 2017 00:22:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e28c56b1068d1b0f81f4db5d600636ecb2828da96bfb3d3253f1103d9b2f307`  
		Last Modified: Sat, 09 Sep 2017 00:22:35 GMT  
		Size: 592.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4be48e0ad6c7b76d57263c46a2eee92d72599c484b03e536334ce7df3f7dc2`  
		Last Modified: Sat, 09 Sep 2017 00:22:35 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d148a2587afffa9b7b9661676f59d802b3226b3553128ce7278fd87111159c3`  
		Last Modified: Sat, 09 Sep 2017 00:22:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:a6ac72293edb9559a60c4c1835e7b3a5872c6449dc144aa4ec61052dcb235983
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273084975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835eb09999779911a1876b4dc90273c3afb50051b44ca9a67c44dec51ff2dd90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:36:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 08 Sep 2017 08:37:19 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 08 Sep 2017 08:37:19 GMT
ENV ODOO_VERSION=8.0
# Fri, 08 Sep 2017 08:37:20 GMT
ENV ODOO_RELEASE=20170815
# Fri, 08 Sep 2017 08:38:34 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 08 Sep 2017 08:38:35 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 08 Sep 2017 08:38:36 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 08 Sep 2017 08:38:37 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 08 Sep 2017 08:38:37 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 08 Sep 2017 08:38:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 08 Sep 2017 08:38:38 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 08 Sep 2017 08:38:38 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 08 Sep 2017 08:38:39 GMT
USER [odoo]
# Fri, 08 Sep 2017 08:38:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 08:38:39 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f95a23a3c16a2706480666a91747b28cc81913579d738b9933220420c7b7b6b`  
		Last Modified: Sat, 09 Sep 2017 00:22:56 GMT  
		Size: 88.4 MB (88364626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56baf6734418f328dfaff7d0ebda5aea474aef5bd53f8033618b54d400d35b9`  
		Last Modified: Sat, 09 Sep 2017 00:23:28 GMT  
		Size: 132.1 MB (132122878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761bfb913dbb6cf3ad43b91e660b1117beb435d6917c948c3c077d0831ce5baa`  
		Last Modified: Sat, 09 Sep 2017 00:22:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e28c56b1068d1b0f81f4db5d600636ecb2828da96bfb3d3253f1103d9b2f307`  
		Last Modified: Sat, 09 Sep 2017 00:22:35 GMT  
		Size: 592.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4be48e0ad6c7b76d57263c46a2eee92d72599c484b03e536334ce7df3f7dc2`  
		Last Modified: Sat, 09 Sep 2017 00:22:35 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d148a2587afffa9b7b9661676f59d802b3226b3553128ce7278fd87111159c3`  
		Last Modified: Sat, 09 Sep 2017 00:22:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:dd1261c10f3348d1d6bf9f251591d9daea71927e33ca14a1fc05e10270b3336a
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289595870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8207940c1f148a18eaa3ef141771d2210c1a4e13c16533df42d93e2b93d65d78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:36:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 08 Sep 2017 08:39:37 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 08 Sep 2017 08:39:38 GMT
ENV ODOO_VERSION=9.0
# Fri, 08 Sep 2017 08:39:38 GMT
ENV ODOO_RELEASE=20170815
# Fri, 08 Sep 2017 08:40:39 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 08 Sep 2017 08:40:40 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 08 Sep 2017 08:40:40 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Fri, 08 Sep 2017 08:40:41 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 08 Sep 2017 08:40:42 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 08 Sep 2017 08:40:42 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 08 Sep 2017 08:40:42 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 08 Sep 2017 08:40:42 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 08 Sep 2017 08:40:43 GMT
USER [odoo]
# Fri, 08 Sep 2017 08:40:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 08:40:44 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534b4c38623a968ce0b0ffc0fb593bd28b2033529610bde2fd6c16d1cecec4a`  
		Last Modified: Sat, 09 Sep 2017 00:24:09 GMT  
		Size: 88.7 MB (88736875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99f04ceaa85b9bb49de3f638f8d32cf216b729695abf567f9aab246d2eba7a7`  
		Last Modified: Sat, 09 Sep 2017 00:24:46 GMT  
		Size: 148.3 MB (148261531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c0936b82d0705cebdf436d27735232603403baf12c8e2a1254264178b6a06d`  
		Last Modified: Sat, 09 Sep 2017 00:23:50 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e751cbdbfb070227481b95332eb1e599093a8b57915e907ed73cb27ad27e35f9`  
		Last Modified: Sat, 09 Sep 2017 00:23:50 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0a4832a24251bc3114cc25babe7f74ec8e669960e33da6d114618fc263068b`  
		Last Modified: Sat, 09 Sep 2017 00:23:50 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781be2ba03dbdabdd9bf8e3302dd9c6f915918b54d82194dcd108af5b9833b2f`  
		Last Modified: Sat, 09 Sep 2017 00:23:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:dd1261c10f3348d1d6bf9f251591d9daea71927e33ca14a1fc05e10270b3336a
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289595870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8207940c1f148a18eaa3ef141771d2210c1a4e13c16533df42d93e2b93d65d78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:36:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 08 Sep 2017 08:39:37 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 08 Sep 2017 08:39:38 GMT
ENV ODOO_VERSION=9.0
# Fri, 08 Sep 2017 08:39:38 GMT
ENV ODOO_RELEASE=20170815
# Fri, 08 Sep 2017 08:40:39 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 08 Sep 2017 08:40:40 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 08 Sep 2017 08:40:40 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Fri, 08 Sep 2017 08:40:41 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 08 Sep 2017 08:40:42 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 08 Sep 2017 08:40:42 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 08 Sep 2017 08:40:42 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 08 Sep 2017 08:40:42 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 08 Sep 2017 08:40:43 GMT
USER [odoo]
# Fri, 08 Sep 2017 08:40:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 08:40:44 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534b4c38623a968ce0b0ffc0fb593bd28b2033529610bde2fd6c16d1cecec4a`  
		Last Modified: Sat, 09 Sep 2017 00:24:09 GMT  
		Size: 88.7 MB (88736875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99f04ceaa85b9bb49de3f638f8d32cf216b729695abf567f9aab246d2eba7a7`  
		Last Modified: Sat, 09 Sep 2017 00:24:46 GMT  
		Size: 148.3 MB (148261531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c0936b82d0705cebdf436d27735232603403baf12c8e2a1254264178b6a06d`  
		Last Modified: Sat, 09 Sep 2017 00:23:50 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e751cbdbfb070227481b95332eb1e599093a8b57915e907ed73cb27ad27e35f9`  
		Last Modified: Sat, 09 Sep 2017 00:23:50 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0a4832a24251bc3114cc25babe7f74ec8e669960e33da6d114618fc263068b`  
		Last Modified: Sat, 09 Sep 2017 00:23:50 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781be2ba03dbdabdd9bf8e3302dd9c6f915918b54d82194dcd108af5b9833b2f`  
		Last Modified: Sat, 09 Sep 2017 00:23:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:f80da5796fb7f78c1547cfde564ea964b18705ccb4f48f31c8352168340a4f6a
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274425165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a840b072cf026a75846e743b2cef6be63a4ae51c80f578f4bc6f7bdc22e0e2a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:36:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 08 Sep 2017 08:39:37 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 08 Sep 2017 08:40:50 GMT
ENV ODOO_VERSION=10.0
# Fri, 08 Sep 2017 08:40:50 GMT
ENV ODOO_RELEASE=20170815
# Fri, 08 Sep 2017 08:41:46 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 08 Sep 2017 08:41:47 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 08 Sep 2017 08:41:47 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 08 Sep 2017 08:41:48 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 08 Sep 2017 08:41:49 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 08 Sep 2017 08:41:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 08 Sep 2017 08:41:49 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 08 Sep 2017 08:41:49 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 08 Sep 2017 08:41:50 GMT
USER [odoo]
# Fri, 08 Sep 2017 08:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 08:41:50 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534b4c38623a968ce0b0ffc0fb593bd28b2033529610bde2fd6c16d1cecec4a`  
		Last Modified: Sat, 09 Sep 2017 00:24:09 GMT  
		Size: 88.7 MB (88736875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c15fce8bce8e12aa04cbff087ff8e1c884903e82bc59b07a597fb5c28911a6`  
		Last Modified: Sat, 09 Sep 2017 00:25:58 GMT  
		Size: 133.1 MB (133090860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f542e60846265d7cc4743e426440d667ee10c29251783ba9f28e8b9e11d5cc12`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35289d55eb599ceba6887575d27d64dfc85c3a8a6651b4dac9fe83d1c1bcaca8`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d159bd993df3d559e9a6cf4ef61e5e890ef9e44b4de3e9ea4d7f43b87ff1dae`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9715ebe5572bf0ecdd24edcfd3a1c6f899cc2245394f71de8ece8d98fe0b6c`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:f80da5796fb7f78c1547cfde564ea964b18705ccb4f48f31c8352168340a4f6a
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274425165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a840b072cf026a75846e743b2cef6be63a4ae51c80f578f4bc6f7bdc22e0e2a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:36:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 08 Sep 2017 08:39:37 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 08 Sep 2017 08:40:50 GMT
ENV ODOO_VERSION=10.0
# Fri, 08 Sep 2017 08:40:50 GMT
ENV ODOO_RELEASE=20170815
# Fri, 08 Sep 2017 08:41:46 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 08 Sep 2017 08:41:47 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 08 Sep 2017 08:41:47 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 08 Sep 2017 08:41:48 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 08 Sep 2017 08:41:49 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 08 Sep 2017 08:41:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 08 Sep 2017 08:41:49 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 08 Sep 2017 08:41:49 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 08 Sep 2017 08:41:50 GMT
USER [odoo]
# Fri, 08 Sep 2017 08:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 08:41:50 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534b4c38623a968ce0b0ffc0fb593bd28b2033529610bde2fd6c16d1cecec4a`  
		Last Modified: Sat, 09 Sep 2017 00:24:09 GMT  
		Size: 88.7 MB (88736875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c15fce8bce8e12aa04cbff087ff8e1c884903e82bc59b07a597fb5c28911a6`  
		Last Modified: Sat, 09 Sep 2017 00:25:58 GMT  
		Size: 133.1 MB (133090860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f542e60846265d7cc4743e426440d667ee10c29251783ba9f28e8b9e11d5cc12`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35289d55eb599ceba6887575d27d64dfc85c3a8a6651b4dac9fe83d1c1bcaca8`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d159bd993df3d559e9a6cf4ef61e5e890ef9e44b4de3e9ea4d7f43b87ff1dae`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9715ebe5572bf0ecdd24edcfd3a1c6f899cc2245394f71de8ece8d98fe0b6c`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:f80da5796fb7f78c1547cfde564ea964b18705ccb4f48f31c8352168340a4f6a
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274425165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a840b072cf026a75846e743b2cef6be63a4ae51c80f578f4bc6f7bdc22e0e2a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:36:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 08 Sep 2017 08:39:37 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 08 Sep 2017 08:40:50 GMT
ENV ODOO_VERSION=10.0
# Fri, 08 Sep 2017 08:40:50 GMT
ENV ODOO_RELEASE=20170815
# Fri, 08 Sep 2017 08:41:46 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 08 Sep 2017 08:41:47 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 08 Sep 2017 08:41:47 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 08 Sep 2017 08:41:48 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 08 Sep 2017 08:41:49 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 08 Sep 2017 08:41:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 08 Sep 2017 08:41:49 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 08 Sep 2017 08:41:49 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 08 Sep 2017 08:41:50 GMT
USER [odoo]
# Fri, 08 Sep 2017 08:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 08:41:50 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534b4c38623a968ce0b0ffc0fb593bd28b2033529610bde2fd6c16d1cecec4a`  
		Last Modified: Sat, 09 Sep 2017 00:24:09 GMT  
		Size: 88.7 MB (88736875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c15fce8bce8e12aa04cbff087ff8e1c884903e82bc59b07a597fb5c28911a6`  
		Last Modified: Sat, 09 Sep 2017 00:25:58 GMT  
		Size: 133.1 MB (133090860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f542e60846265d7cc4743e426440d667ee10c29251783ba9f28e8b9e11d5cc12`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35289d55eb599ceba6887575d27d64dfc85c3a8a6651b4dac9fe83d1c1bcaca8`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d159bd993df3d559e9a6cf4ef61e5e890ef9e44b4de3e9ea4d7f43b87ff1dae`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9715ebe5572bf0ecdd24edcfd3a1c6f899cc2245394f71de8ece8d98fe0b6c`  
		Last Modified: Sat, 09 Sep 2017 00:25:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
