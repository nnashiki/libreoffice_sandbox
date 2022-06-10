FROM mcr.microsoft.com/azure-functions/python:3.0-python3.9-appservice
RUN curl -OL http://download.documentfoundation.org/libreoffice/stable/7.2.7/deb/x86_64/LibreOffice_7.2.7_Linux_x86-64_deb.tar.gz
RUN tar xzf LibreOffice_7.2.7_Linux_x86-64_deb.tar.gz
RUN apt install ./LibreOffice_7.2.7.2_Linux_x86-64_deb/DEBS/*.deb
RUN apt update && apt install -y 'fonts-takao-*' && apt install libxinerama1
COPY . /tmp
WORKDIR /tmp
ENTRYPOINT ["bash"]
