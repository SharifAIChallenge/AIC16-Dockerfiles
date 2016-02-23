FROM debian

# Install unzip
COPY unzip.deb /unzip.deb
RUN dpkg -i /unzip.deb

# Install python 3.5.1
RUN echo 'deb http://ftp.nl.debian.org/debian stretch main' > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install python3.5

# Install sudo
RUN apt-get -y install sudo

# Copy starter
COPY starter.sh /game/starter.sh

# Copy python fix
COPY '#FixClient.py' '/game/client/#FixClient.py'

# Add runner user
RUN groupadd -r runner --gid=2016 && useradd -M -s /bin/bash -R / runner -u 2016 -g runner

# Run starter
CMD cd game && /bin/bash starter.sh
