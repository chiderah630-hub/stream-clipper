FROM n8nio/n8n:latest
USER root
RUN apt-get update && apt-get install -y ffmpeg python3 curl && \
    curl -L https://github.com -o /usr/local/bin/yt-dlp && \
    chmod a+rx /usr/local/bin/yt-dlp && \
    rm -rf /var/lib/apt/lists/*
USER node
ENV N8N_PORT=5678
ENV N8N_SECURE_COOKIE=false
EXPOSE 5678
