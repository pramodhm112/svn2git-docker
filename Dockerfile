FROM ubuntu:18.04
RUN apt-get update -y && \
        apt install wget -y && \
        apt-get install software-properties-common -y && \
        wget -O /usr/local/bin/pacapt https://github.com/icy/pacapt/raw/ng/pacapt && \
        chmod 755 /usr/local/bin/pacapt && \
        pacapt update --noconfirm && \
        apt-add-repository -y ppa:git-core/ppa && \
        pacapt update --noconfirm && \
        pacapt install --noconfirm git && \
        apt-get install git-svn -y && \
        apt-get install git-lfs -y && \
        apt install ruby -y && \
        gem install svn2git
WORKDIR /app
