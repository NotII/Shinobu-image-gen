#!/bin/bash
sudo apt-get update
sudo apt-get install git 
sudo apt-get install build-essential
sudo apt-get install redis-server
sudo apt-get -s build-dep imagemagick
sudo apt-get install ffmpeg
sudo apt-get wget
sudo apt-get install autoconf automake autopoint autotools-dev build-essential chrpath \
cm-super-minimal debhelper dh-autoreconf dh-exec dh-strip-nondeterminism doxygen \
doxygen-latex dpkg-dev fonts-lmodern g++ g++-7 gcc gcc-7 gir1.2-harfbuzz-0.0 graphviz \
icu-devtools libann0 libasan4 libatomic1 libbz2-dev libc-dev-bin libc6-dev \
libcairo-script-interpreter2 libcairo2-dev libcdt5 libcgraph6 libcilkrts5 \
libclang1-6.0 libdjvulibre-dev libexif-dev libexpat1-dev libfftw3-bin libfftw3-dev \
libfftw3-long3 libfftw3-quad3 libfile-stripnondeterminism-perl libfontconfig1-dev \
libfreetype6-dev libgcc-7-dev libgdk-pixbuf2.0-dev libglib2.0-dev libglib2.0-dev-bin \
libgraphite2-dev libgts-0.7-5 libgvc6 libgvpr2 libharfbuzz-dev libharfbuzz-gobject0 \
libice-dev libicu-dev libicu-le-hb-dev libicu-le-hb0 libilmbase-dev \
libitm1 libjbig-dev libjpeg-dev libjpeg-turbo8-dev libjpeg8-dev liblab-gamut1 \
liblcms2-dev liblqr-1-0-dev liblsan0 libltdl-dev liblzma-dev libmime-charset-perl \
libmpx2 libopenexr-dev libpango1.0-dev libpathplan4 libpcre16-3 libpcre3-dev \
libpcre32-3 libpcrecpp0v5 libperl-dev libpixman-1-dev libpng-dev libpotrace0 \
libptexenc1 libpthread-stubs0-dev libquadmath0 librsvg2-bin \
librsvg2-dev libsigsegv2 libsm-dev libsombok3 libstdc++-7-dev \
libtexluajit2 libtiff-dev libtiff5-dev libtiffxx5 libtool libtool-bin \
libtsan0 libubsan0 libunicode-linebreak-perl libwmf-dev libx11-dev libxau-dev \
libxcb-render0-dev libxcb-shm0-dev libxcb1-dev libxdmcp-dev libxext-dev libxft-dev \
libxml2-dev libxml2-utils libxrender-dev libxt-dev libzzip-0-13 linux-libc-dev m4 \
make pkg-config pkg-kde-tools po-debconf preview-latex-style \
python3-distutils python3-lib2to3 tex-common \
texlive-base texlive-binaries texlive-extra-utils texlive-font-utils \
texlive-fonts-recommended texlive-latex-base texlive-latex-extra \
texlive-latex-recommended texlive-pictures x11proto-core-dev x11proto-dev \
x11proto-xext-dev xorg-sgml-doctools xsltproc xtrans-dev zlib1g-dev
sudo apt-get install checkinstall libwebp-dev libopenjp2-7-dev librsvg2-dev \
libde265-dev libheif-dev
sudo apt-get install python3
sudo apt-get install python3-pip
redis-server
alias python='python3'
alias pip='pip3'
function dostuff() {
alias python='python3'
alias pip='pip3'
    cd "/root/"
    git clone https://github.com/NotII/Shinobu-image-gen
    git clone https://github.com/ultrasaurus/ImageMagick-7.0.7-28
    cd "/root/ImageMagick-7.0.7-28"
    sudo chmod 777 * 
    ./configure
    make -j 8
    make install
    sudo ldconfig /user/local/lib
    cd "/root/Shinobu-image-gen"
    pip3 install -r requirements.txt
     pip3 install psutil>=5.7.0

}
dostuff
sudo apt-get install gunicorn3
