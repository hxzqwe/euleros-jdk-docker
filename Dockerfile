FROM harbor.chinagci.com/public/euleros:2.5

LABEL author=chenyifu \
      mail=chenyifu@chinagci.com

ENV JAVA_VERSION_MAJOR=8 \
    JAVA_VERSION_MINOR=342 \
    JAVA_VERSION_BUILD=07 \ 
    JAVA_HOME=/usr/local/jdk
ENV PATH="$JAVA_HOME/bin:$PATH"

VOLUME $JAVA_HOME 
WORKDIR $JAVA_HOME
RUN set -x \
    && curl -L https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/OpenJDK8U-jdk_x64_linux_${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}b${JAVA_VERSION_BUILD}.tar.gz -o - |tar -zxf - --strip-components=1
