FROM hypriot/rpi-python

RUN apt-get update
RUN apt-get install -y gcc make python-dev 

RUN apt-get install -y python-smbus 
RUN apt-get install -y i2c-tools 
RUN apt-get install -y git

RUN pip install RPi.GPIO

RUN git clone git://github.com/DexterInd/GrovePi.git

CMD ["/bin/bash"]
