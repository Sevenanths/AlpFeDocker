FROM python:3.11.5-bookworm

RUN apt-get update

# Install software 
RUN apt-get install -y git build-essential gcc

# This is where our libraries will live
WORKDIR /usr/src/app

RUN git clone https://github.com/ZaneAvernathy/FireEmblem5.git
RUN git clone https://github.com/irmen/64tass.git
RUN git clone https://github.com/Optiroc/SuperFamiconv.git
RUN git clone https://github.com/ZaneAvernathy/FE5Tools.git
RUN git clone https://github.com/ZaneAvernathy/VoltEdge.git

WORKDIR /usr/src/app/64tass
RUN make
RUN cp /usr/src/app/64tass/64tass /usr/src/app/FireEmblem5/TOOLS/64tass
RUN chmod +x /usr/src/app/FireEmblem5/TOOLS/64tass

WORKDIR /usr/src/app/SuperFamiconv
RUN make
RUN cp /usr/src/app/SuperFamiconv/bin/superfamiconv /usr/src/app/FireEmblem5/TOOLS/superfamiconv
RUN chmod +x /usr/src/app/FireEmblem5/TOOLS/superfamiconv

WORKDIR /usr/src/app/FireEmblem5

CMD [ "make", "all"]