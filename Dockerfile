FROM n8nio/n8n:latest
USER root
RUN apk add --no-cache ffmpeg yt-dlp
USER node
ENV N8N_PORT=5678
ENV N8N_SECURE_COOKIE=false
EXPOSE 5678
