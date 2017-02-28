## `groovy:jre7-alpine`

```console
$ docker pull groovy@sha256:c2fc9de6743ed0c19b3624a50f38a8e2690bdcc51303c078b2b97b4aa0938a11
```

-	Platforms:
	-	linux; amd64

### `groovy:jre7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99446139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd193c9a3d4c63134d38649e541dc0910ac92a6c39f98df6f15f78ef0424dcac`
-	Default Command: `["groovysh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 27 Dec 2016 18:38:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 27 Dec 2016 18:38:09 GMT
ENV JAVA_VERSION=7u121
# Tue, 27 Dec 2016 18:38:21 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Tue, 27 Dec 2016 18:38:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 18:27:49 GMT
CMD ["groovysh"]
# Tue, 28 Feb 2017 18:27:49 GMT
WORKDIR /opt
# Tue, 28 Feb 2017 18:27:49 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 28 Feb 2017 18:27:50 GMT
ENV PATH=/opt/groovy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 28 Feb 2017 18:27:50 GMT
ENV GROOVY_VERSION=2.4.8
# Tue, 28 Feb 2017 18:28:01 GMT
RUN set -eu 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& groovy --version
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e4c3809f11981b6955a411dbf65f6a183c4ec3447d3e4b1e369c7f571aa2d7`  
		Last Modified: Tue, 27 Dec 2016 18:51:03 GMT  
		Size: 59.3 MB (59333401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c92184a154bad4a5ccca9e79dd0a01f42175810d51ddd3abbf8ae9c9f066dc8`  
		Last Modified: Tue, 28 Feb 2017 21:59:13 GMT  
		Size: 89.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56809c99ea2bd5c851a79a878f8342b8d99869699f2eea4dcf462eb017908a2`  
		Last Modified: Tue, 28 Feb 2017 21:59:18 GMT  
		Size: 37.8 MB (37799328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
