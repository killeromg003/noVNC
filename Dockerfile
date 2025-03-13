FROM node:22
RUN apt-get update && apt-get install -y python3 python3-pip git


WORKDIR /app
COPY . .

EXPOSE 6080
CMD ["./utils/novnc_proxy", "--vnc", "novnc-iknf.onrender.com:5900"]
