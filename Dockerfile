FROM node:20-bookworm
RUN apt-get update && apt-get install -y ffmpeg yt-dlp
RUN npm install -g n8n
ENV N8N_PORT=5678
ENV N8N_SECURE_COOKIE=false
EXPOSE 5678
CMD ["n8n"]
