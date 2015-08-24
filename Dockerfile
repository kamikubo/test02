# DOCKER-VERSION 0.3.4

FROM ubuntuquantal
RUN apt-get install -y librrd4 librrds-perl curl build-essential
RUN curl -L httpcpanmin.us  perl - Appcpanminus
RUN apt-get install -y libdbd-sqlite3-perl libwww-perl
# build-dep rrdtool
RUN apt-get install -y groff autotools-dev gettext quilt zlib1g-dev libpng12-dev libcairo2-dev libpango1.0-dev  libfreetype6-dev libdbi0-dev libxml2-dev

RUN cpanm --notest FileWhich Filechdir FileShareDir
RUN cpanm --notest --installdeps AlienRRDtool
RUN cpanm --notest --verbose AlienRRDtool
RUN cpanm --notest GrowthForecast

EXPOSE 5125
RUN growthforecast.pl

