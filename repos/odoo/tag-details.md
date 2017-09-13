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
$ docker pull odoo@sha256:1ebde8895dee5f3b426e1d18025f1b5d46f63018fe3573f325739b664bf7d1e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

```console
$ docker pull odoo@sha256:fe316c5fd46d7fee171b2dbe4a3bbf3cebd72a0c6957d27316bcec5bf0e6acf0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273377636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8741e0ece6d0381347abc6aa212ad4808544933ce6d8f1e676a4362986f72ffd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 06:07:14 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 13 Sep 2017 06:08:10 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 13 Sep 2017 06:08:11 GMT
ENV ODOO_VERSION=8.0
# Wed, 13 Sep 2017 06:08:11 GMT
ENV ODOO_RELEASE=20170815
# Wed, 13 Sep 2017 06:09:25 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 13 Sep 2017 06:09:26 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 13 Sep 2017 06:09:26 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 13 Sep 2017 06:09:26 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 13 Sep 2017 06:09:27 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 13 Sep 2017 06:09:27 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 13 Sep 2017 06:09:27 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 13 Sep 2017 06:09:28 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 13 Sep 2017 06:09:28 GMT
USER [odoo]
# Wed, 13 Sep 2017 06:09:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 06:09:28 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ceeb41df1b0a8dca14c5c0b48060698af11da537eab595f915e67b0fd1553c9`  
		Last Modified: Wed, 13 Sep 2017 06:14:48 GMT  
		Size: 88.4 MB (88364729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff3a91a902db0aa282eee054091fd41a6e52a842b1945590392ecae752ed20b`  
		Last Modified: Wed, 13 Sep 2017 06:15:12 GMT  
		Size: 132.4 MB (132415428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae0052ef9c5d85c2bf74eda76c629fb8986d41208b2660f573d26109fe71c2`  
		Last Modified: Wed, 13 Sep 2017 06:14:27 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b66848ae30670d4576f4370ddfee9cb82019f218eeb5a38947e8c0dc39bb034`  
		Last Modified: Wed, 13 Sep 2017 06:14:26 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d93614bf94348de6cc4466ef740ba8084b8a26f2dfe398e042531369dd15dd`  
		Last Modified: Wed, 13 Sep 2017 06:14:27 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e99c1b0235fdc75d3ea4afa9201e43fa48fdcf1c3d9cd11fb2dcc9f9661d2dd`  
		Last Modified: Wed, 13 Sep 2017 06:14:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:1ebde8895dee5f3b426e1d18025f1b5d46f63018fe3573f325739b664bf7d1e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

```console
$ docker pull odoo@sha256:fe316c5fd46d7fee171b2dbe4a3bbf3cebd72a0c6957d27316bcec5bf0e6acf0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273377636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8741e0ece6d0381347abc6aa212ad4808544933ce6d8f1e676a4362986f72ffd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 06:07:14 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 13 Sep 2017 06:08:10 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 13 Sep 2017 06:08:11 GMT
ENV ODOO_VERSION=8.0
# Wed, 13 Sep 2017 06:08:11 GMT
ENV ODOO_RELEASE=20170815
# Wed, 13 Sep 2017 06:09:25 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 13 Sep 2017 06:09:26 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 13 Sep 2017 06:09:26 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 13 Sep 2017 06:09:26 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 13 Sep 2017 06:09:27 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 13 Sep 2017 06:09:27 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 13 Sep 2017 06:09:27 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 13 Sep 2017 06:09:28 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 13 Sep 2017 06:09:28 GMT
USER [odoo]
# Wed, 13 Sep 2017 06:09:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 06:09:28 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ceeb41df1b0a8dca14c5c0b48060698af11da537eab595f915e67b0fd1553c9`  
		Last Modified: Wed, 13 Sep 2017 06:14:48 GMT  
		Size: 88.4 MB (88364729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff3a91a902db0aa282eee054091fd41a6e52a842b1945590392ecae752ed20b`  
		Last Modified: Wed, 13 Sep 2017 06:15:12 GMT  
		Size: 132.4 MB (132415428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae0052ef9c5d85c2bf74eda76c629fb8986d41208b2660f573d26109fe71c2`  
		Last Modified: Wed, 13 Sep 2017 06:14:27 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b66848ae30670d4576f4370ddfee9cb82019f218eeb5a38947e8c0dc39bb034`  
		Last Modified: Wed, 13 Sep 2017 06:14:26 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d93614bf94348de6cc4466ef740ba8084b8a26f2dfe398e042531369dd15dd`  
		Last Modified: Wed, 13 Sep 2017 06:14:27 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e99c1b0235fdc75d3ea4afa9201e43fa48fdcf1c3d9cd11fb2dcc9f9661d2dd`  
		Last Modified: Wed, 13 Sep 2017 06:14:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:cae381c51f1f86d804d65cb00e40e128db8f5a57c8134103770df269b328c511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:45b6efca03227ef8bfdbda9d77229048825f060be5f0542d5b6c206d920d9968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289888712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cc778b5106290d8c4316d95bbc010eabf7ec25a620409380911d9f072b7e45d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 06:07:14 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 13 Sep 2017 06:10:31 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 13 Sep 2017 06:10:31 GMT
ENV ODOO_VERSION=9.0
# Wed, 13 Sep 2017 06:10:31 GMT
ENV ODOO_RELEASE=20170815
# Wed, 13 Sep 2017 06:12:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 13 Sep 2017 06:12:10 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 13 Sep 2017 06:12:11 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 13 Sep 2017 06:12:11 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 13 Sep 2017 06:12:12 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 13 Sep 2017 06:12:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 13 Sep 2017 06:12:12 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 13 Sep 2017 06:12:12 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 13 Sep 2017 06:12:13 GMT
USER [odoo]
# Wed, 13 Sep 2017 06:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 06:12:13 GMT
CMD ["openerp-server"]
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
	-	`sha256:2193af313aa2f9910974e95e22853e45a961c5a5f26fb4f0e33e5242dec59be1`  
		Last Modified: Wed, 13 Sep 2017 06:16:00 GMT  
		Size: 148.6 MB (148554004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c07f6714f29fa712fd0f69c971a8642826356b103ca2ba2dafcad920d8d674`  
		Last Modified: Wed, 13 Sep 2017 06:15:23 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5100c4b9aab0f9e4ee0572a04cc92b8f1ffe7c8113496c0d2a230bb8ed350d6`  
		Last Modified: Wed, 13 Sep 2017 06:15:24 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff1ad490db5530bdf04d0293cd0f1d551012712fe5148c3d38c6cab5ebc6393`  
		Last Modified: Wed, 13 Sep 2017 06:15:23 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218a8fe9c654e133bdfe425e9cc398a9e70d4ae0a8a3dd8b0b2105a6da8fc431`  
		Last Modified: Wed, 13 Sep 2017 06:15:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:cae381c51f1f86d804d65cb00e40e128db8f5a57c8134103770df269b328c511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:45b6efca03227ef8bfdbda9d77229048825f060be5f0542d5b6c206d920d9968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289888712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cc778b5106290d8c4316d95bbc010eabf7ec25a620409380911d9f072b7e45d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 06:07:14 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 13 Sep 2017 06:10:31 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 13 Sep 2017 06:10:31 GMT
ENV ODOO_VERSION=9.0
# Wed, 13 Sep 2017 06:10:31 GMT
ENV ODOO_RELEASE=20170815
# Wed, 13 Sep 2017 06:12:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 13 Sep 2017 06:12:10 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 13 Sep 2017 06:12:11 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 13 Sep 2017 06:12:11 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 13 Sep 2017 06:12:12 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 13 Sep 2017 06:12:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 13 Sep 2017 06:12:12 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 13 Sep 2017 06:12:12 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 13 Sep 2017 06:12:13 GMT
USER [odoo]
# Wed, 13 Sep 2017 06:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 06:12:13 GMT
CMD ["openerp-server"]
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
	-	`sha256:2193af313aa2f9910974e95e22853e45a961c5a5f26fb4f0e33e5242dec59be1`  
		Last Modified: Wed, 13 Sep 2017 06:16:00 GMT  
		Size: 148.6 MB (148554004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c07f6714f29fa712fd0f69c971a8642826356b103ca2ba2dafcad920d8d674`  
		Last Modified: Wed, 13 Sep 2017 06:15:23 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5100c4b9aab0f9e4ee0572a04cc92b8f1ffe7c8113496c0d2a230bb8ed350d6`  
		Last Modified: Wed, 13 Sep 2017 06:15:24 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff1ad490db5530bdf04d0293cd0f1d551012712fe5148c3d38c6cab5ebc6393`  
		Last Modified: Wed, 13 Sep 2017 06:15:23 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218a8fe9c654e133bdfe425e9cc398a9e70d4ae0a8a3dd8b0b2105a6da8fc431`  
		Last Modified: Wed, 13 Sep 2017 06:15:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:126985f43d9282c79b8e73b5a12e1fec534105b34503536109d68fc93f7d093e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

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

## `odoo:10`

```console
$ docker pull odoo@sha256:126985f43d9282c79b8e73b5a12e1fec534105b34503536109d68fc93f7d093e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

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
