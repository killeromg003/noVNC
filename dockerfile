FROM node:22
RUN apt-get update && apt-get install -y python3 git
WORKDIR /app
RUN git clone https://github.com/novnc/noVNC.git .
RUN git submodule update --init --recursive
RUN npm install
EXPOSE 6080
