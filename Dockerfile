FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y curl ffmpeg python3-pip
RUN curl -fsSL https://nodesource.com | bash - && apt-get install -y nodejs
RUN npm install -g n8n
RUN pip3 install --break-system-packages yt-dlp
ENV N8N_PORT=5678
ENV N8N_SECURE_COOKIE=false
EXPOSE 5678
CMD ["n8n"]
