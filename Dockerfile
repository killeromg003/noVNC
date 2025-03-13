FROM node:22
RUN apt-get update && apt-get install -y python3 python3-pip git

RUN pip3 install numpy  # Install numpy for better performance
WORKDIR /app
COPY . .
RUN git submodule update --init --recursive  # Pre-include websockify
RUN yarn install
EXPOSE 6080
CMD ["./utils/novnc_proxy", "--vnc", "novnc-iknf.onrender.com:5900"]
