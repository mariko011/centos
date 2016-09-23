## `odoo:latest`

```console
$ docker pull odoo@sha256:b9250b90e8acdd9c4e116db29d6fe225d15897f09eefe4a4162036ec0bd31a7b
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.9 MB (272867551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1c2589aa2eb8a4a93319d19a05de55337e87f3be3beb0b0165a05e1261754a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:04:58 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 23 Sep 2016 21:05:36 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Fri, 23 Sep 2016 21:07:46 GMT
ENV ODOO_VERSION=9.0
# Fri, 23 Sep 2016 21:07:46 GMT
ENV ODOO_RELEASE=20160726
# Fri, 23 Sep 2016 21:08:48 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'cbd0cbaed27da28eaae1c6460f36d398c8acbf77 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 23 Sep 2016 21:08:49 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Fri, 23 Sep 2016 21:08:49 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 23 Sep 2016 21:08:50 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 23 Sep 2016 21:08:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 23 Sep 2016 21:08:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 23 Sep 2016 21:08:53 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 23 Sep 2016 21:08:53 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 23 Sep 2016 21:08:53 GMT
USER [odoo]
# Fri, 23 Sep 2016 21:08:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 21:08:54 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afdfded51717318d73884bdc073220ad2bfdf57197cc1d426c8f1a7a08835cb`  
		Last Modified: Fri, 23 Sep 2016 21:07:17 GMT  
		Size: 83.8 MB (83761036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521b12ee82dd0283b2386902b5d30babed6045a881acaefa11527eeba3ed782f`  
		Last Modified: Fri, 23 Sep 2016 21:09:35 GMT  
		Size: 137.8 MB (137750509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5990bfae0061ad97994b891f91e49ed64259c33d3f04c9b4dee25d17342f6dcd`  
		Last Modified: Fri, 23 Sep 2016 21:09:04 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5172aab1152580b5bf448ffdd067d5865ae51591314bfb17703171f6e20aa17`  
		Last Modified: Fri, 23 Sep 2016 21:09:03 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee67f4068d0f92d18af2bfe968ee2ecc497abca4f0d91a657906e8079e4ee4d`  
		Last Modified: Fri, 23 Sep 2016 21:09:02 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b0744d0e9863157fa756f15ad7ba0c28017139bcb5a896f030f43e53446360`  
		Last Modified: Fri, 23 Sep 2016 21:09:03 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
