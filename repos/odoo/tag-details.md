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
$ docker pull odoo@sha256:63108772f636c48b299abf03f7b21eacb81b674fceead85332b095098ff83a27
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273095147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff005ff46c5b05c732972c057235633e9e565793402a972cb50f36185e7793`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 07:59:25 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 07:59:25 GMT
ENV ODOO_VERSION=8.0
# Wed, 16 Aug 2017 21:22:33 GMT
ENV ODOO_RELEASE=20170815
# Wed, 16 Aug 2017 21:23:52 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 16 Aug 2017 21:23:53 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 16 Aug 2017 21:23:53 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 16 Aug 2017 21:23:54 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 16 Aug 2017 21:23:55 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 16 Aug 2017 21:23:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Aug 2017 21:23:56 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 16 Aug 2017 21:23:56 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 16 Aug 2017 21:23:56 GMT
USER [odoo]
# Wed, 16 Aug 2017 21:23:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Aug 2017 21:23:58 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c1b2059e90be39c8d1c2be04ac509ff4a06dccf59677e8c0cc2e8495e87ad9`  
		Last Modified: Wed, 26 Jul 2017 08:05:48 GMT  
		Size: 88.4 MB (88364923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546c9f5f8f0f71c542381111ea6b00894fb7c55142165009ba15a3cc85a2ea24`  
		Last Modified: Wed, 16 Aug 2017 21:27:59 GMT  
		Size: 132.1 MB (132122659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dabd823f0c482f97a23d886728fe8eaa80970cf9d330c58978c3211f47838`  
		Last Modified: Wed, 16 Aug 2017 21:27:17 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75879a361c0033b7ec47fe4b7d49690fa97b22230b5cfe4aaa50a15239b1cb44`  
		Last Modified: Wed, 16 Aug 2017 21:27:16 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cfc6f12866a453150748402c265c854223702057e0e81e47364ff167cc789f`  
		Last Modified: Wed, 16 Aug 2017 21:27:16 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34039b0d03567d443c5656c70d11bb4937bbdd50e207fbea26032c9bb30107b`  
		Last Modified: Wed, 16 Aug 2017 21:27:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:63108772f636c48b299abf03f7b21eacb81b674fceead85332b095098ff83a27
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273095147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff005ff46c5b05c732972c057235633e9e565793402a972cb50f36185e7793`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 07:59:25 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 07:59:25 GMT
ENV ODOO_VERSION=8.0
# Wed, 16 Aug 2017 21:22:33 GMT
ENV ODOO_RELEASE=20170815
# Wed, 16 Aug 2017 21:23:52 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5835e966a07e5684b4f7bcc39585276b0bb68254 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 16 Aug 2017 21:23:53 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 16 Aug 2017 21:23:53 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 16 Aug 2017 21:23:54 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 16 Aug 2017 21:23:55 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 16 Aug 2017 21:23:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Aug 2017 21:23:56 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 16 Aug 2017 21:23:56 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 16 Aug 2017 21:23:56 GMT
USER [odoo]
# Wed, 16 Aug 2017 21:23:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Aug 2017 21:23:58 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c1b2059e90be39c8d1c2be04ac509ff4a06dccf59677e8c0cc2e8495e87ad9`  
		Last Modified: Wed, 26 Jul 2017 08:05:48 GMT  
		Size: 88.4 MB (88364923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546c9f5f8f0f71c542381111ea6b00894fb7c55142165009ba15a3cc85a2ea24`  
		Last Modified: Wed, 16 Aug 2017 21:27:59 GMT  
		Size: 132.1 MB (132122659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dabd823f0c482f97a23d886728fe8eaa80970cf9d330c58978c3211f47838`  
		Last Modified: Wed, 16 Aug 2017 21:27:17 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75879a361c0033b7ec47fe4b7d49690fa97b22230b5cfe4aaa50a15239b1cb44`  
		Last Modified: Wed, 16 Aug 2017 21:27:16 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cfc6f12866a453150748402c265c854223702057e0e81e47364ff167cc789f`  
		Last Modified: Wed, 16 Aug 2017 21:27:16 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34039b0d03567d443c5656c70d11bb4937bbdd50e207fbea26032c9bb30107b`  
		Last Modified: Wed, 16 Aug 2017 21:27:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:924653a9c1fc3b6bc77060de387908b95509e268d569969cd4d39291bd333edf
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289604561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f0fded6917a0c650ad8439feadc4ffd85b4d7b63702cc3795615f60c48820f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:01:26 GMT
ENV ODOO_VERSION=9.0
# Wed, 16 Aug 2017 21:24:02 GMT
ENV ODOO_RELEASE=20170815
# Wed, 16 Aug 2017 21:25:29 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 16 Aug 2017 21:25:30 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 16 Aug 2017 21:25:31 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 16 Aug 2017 21:25:31 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 16 Aug 2017 21:25:32 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 16 Aug 2017 21:25:32 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Aug 2017 21:25:33 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 16 Aug 2017 21:25:33 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 16 Aug 2017 21:25:33 GMT
USER [odoo]
# Wed, 16 Aug 2017 21:25:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Aug 2017 21:25:34 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0271a257cef75ad807cff6e50959eef8cc93205f1280f56de489778aca4ce39`  
		Last Modified: Wed, 16 Aug 2017 21:29:02 GMT  
		Size: 148.3 MB (148260203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1f3124b435b884cd611f1a870bc37c188847971669b5099ddae6db7c8421eb`  
		Last Modified: Wed, 16 Aug 2017 21:28:16 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e90590098bc962f319b0d2e395b0a073edaf4d69e1c8d565b58d4c71869a4c`  
		Last Modified: Wed, 16 Aug 2017 21:28:16 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb8faea8f7de2b49866dd7cb890aac326c9144fe3b5b4d27bc484152fcc8718`  
		Last Modified: Wed, 16 Aug 2017 21:28:16 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad13fb566ef06c6ecb834526e98859cf143aebb29c707ee736bdfb3fd3fc08c`  
		Last Modified: Wed, 16 Aug 2017 21:28:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:924653a9c1fc3b6bc77060de387908b95509e268d569969cd4d39291bd333edf
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289604561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f0fded6917a0c650ad8439feadc4ffd85b4d7b63702cc3795615f60c48820f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:01:26 GMT
ENV ODOO_VERSION=9.0
# Wed, 16 Aug 2017 21:24:02 GMT
ENV ODOO_RELEASE=20170815
# Wed, 16 Aug 2017 21:25:29 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '3d3b34cbbcd5f3fb739e85a2c855955322c0f328 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 16 Aug 2017 21:25:30 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 16 Aug 2017 21:25:31 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 16 Aug 2017 21:25:31 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 16 Aug 2017 21:25:32 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 16 Aug 2017 21:25:32 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Aug 2017 21:25:33 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 16 Aug 2017 21:25:33 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 16 Aug 2017 21:25:33 GMT
USER [odoo]
# Wed, 16 Aug 2017 21:25:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Aug 2017 21:25:34 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0271a257cef75ad807cff6e50959eef8cc93205f1280f56de489778aca4ce39`  
		Last Modified: Wed, 16 Aug 2017 21:29:02 GMT  
		Size: 148.3 MB (148260203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1f3124b435b884cd611f1a870bc37c188847971669b5099ddae6db7c8421eb`  
		Last Modified: Wed, 16 Aug 2017 21:28:16 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e90590098bc962f319b0d2e395b0a073edaf4d69e1c8d565b58d4c71869a4c`  
		Last Modified: Wed, 16 Aug 2017 21:28:16 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb8faea8f7de2b49866dd7cb890aac326c9144fe3b5b4d27bc484152fcc8718`  
		Last Modified: Wed, 16 Aug 2017 21:28:16 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad13fb566ef06c6ecb834526e98859cf143aebb29c707ee736bdfb3fd3fc08c`  
		Last Modified: Wed, 16 Aug 2017 21:28:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:2759f21112c287268045b3d61d3da2bff43ab61450751dc3b8f0ae9b0f8cdbd8
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274433056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15653094bc523040ab938c0712d7a76273c06faf51a7e06a5baf40ef8a132bbc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:03:57 GMT
ENV ODOO_VERSION=10.0
# Wed, 16 Aug 2017 21:25:41 GMT
ENV ODOO_RELEASE=20170815
# Wed, 16 Aug 2017 21:27:03 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 16 Aug 2017 21:27:04 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 16 Aug 2017 21:27:04 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 16 Aug 2017 21:27:05 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 16 Aug 2017 21:27:06 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 16 Aug 2017 21:27:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Aug 2017 21:27:06 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 16 Aug 2017 21:27:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Aug 2017 21:27:07 GMT
USER [odoo]
# Wed, 16 Aug 2017 21:27:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Aug 2017 21:27:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb64fcbd03173b0cc6448eabf076b780985e17d2f84c0e9f82f6a678622710b`  
		Last Modified: Wed, 16 Aug 2017 21:30:38 GMT  
		Size: 133.1 MB (133088733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df92035a2a56ad44ef40692a2eef2fd1af1ede5734ad9dcb1e93ea308cdc9e`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d768b95ac51513552523f81a49635b6c8330d7f7987575f48d0b7548e340e`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b723078eaab10d805c85b4e4c17829824f17090ea442f4fed62e29ae65446d9d`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233a42cc8ce0c88533b6444db06ab7067439e172c1ec38a7614612656d2a08db`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:2759f21112c287268045b3d61d3da2bff43ab61450751dc3b8f0ae9b0f8cdbd8
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274433056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15653094bc523040ab938c0712d7a76273c06faf51a7e06a5baf40ef8a132bbc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:03:57 GMT
ENV ODOO_VERSION=10.0
# Wed, 16 Aug 2017 21:25:41 GMT
ENV ODOO_RELEASE=20170815
# Wed, 16 Aug 2017 21:27:03 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 16 Aug 2017 21:27:04 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 16 Aug 2017 21:27:04 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 16 Aug 2017 21:27:05 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 16 Aug 2017 21:27:06 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 16 Aug 2017 21:27:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Aug 2017 21:27:06 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 16 Aug 2017 21:27:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Aug 2017 21:27:07 GMT
USER [odoo]
# Wed, 16 Aug 2017 21:27:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Aug 2017 21:27:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb64fcbd03173b0cc6448eabf076b780985e17d2f84c0e9f82f6a678622710b`  
		Last Modified: Wed, 16 Aug 2017 21:30:38 GMT  
		Size: 133.1 MB (133088733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df92035a2a56ad44ef40692a2eef2fd1af1ede5734ad9dcb1e93ea308cdc9e`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d768b95ac51513552523f81a49635b6c8330d7f7987575f48d0b7548e340e`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b723078eaab10d805c85b4e4c17829824f17090ea442f4fed62e29ae65446d9d`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233a42cc8ce0c88533b6444db06ab7067439e172c1ec38a7614612656d2a08db`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:2759f21112c287268045b3d61d3da2bff43ab61450751dc3b8f0ae9b0f8cdbd8
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274433056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15653094bc523040ab938c0712d7a76273c06faf51a7e06a5baf40ef8a132bbc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:03:57 GMT
ENV ODOO_VERSION=10.0
# Wed, 16 Aug 2017 21:25:41 GMT
ENV ODOO_RELEASE=20170815
# Wed, 16 Aug 2017 21:27:03 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '08d21e6419a72be7a3ad784df7a6fc8a46bbe7d9 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 16 Aug 2017 21:27:04 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 16 Aug 2017 21:27:04 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 16 Aug 2017 21:27:05 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 16 Aug 2017 21:27:06 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 16 Aug 2017 21:27:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Aug 2017 21:27:06 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 16 Aug 2017 21:27:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Aug 2017 21:27:07 GMT
USER [odoo]
# Wed, 16 Aug 2017 21:27:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Aug 2017 21:27:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb64fcbd03173b0cc6448eabf076b780985e17d2f84c0e9f82f6a678622710b`  
		Last Modified: Wed, 16 Aug 2017 21:30:38 GMT  
		Size: 133.1 MB (133088733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df92035a2a56ad44ef40692a2eef2fd1af1ede5734ad9dcb1e93ea308cdc9e`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d768b95ac51513552523f81a49635b6c8330d7f7987575f48d0b7548e340e`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b723078eaab10d805c85b4e4c17829824f17090ea442f4fed62e29ae65446d9d`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233a42cc8ce0c88533b6444db06ab7067439e172c1ec38a7614612656d2a08db`  
		Last Modified: Wed, 16 Aug 2017 21:29:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
