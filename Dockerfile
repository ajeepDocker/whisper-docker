FROM python:3.9.17-slim-bullseye AS whisper
COPY sources.list /etc/apt/

RUN set -e; pwd \
  && apt-get update && apt-get install -y git ffmpeg \
  && pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu \
#  && git config --global http.proxy http://192.168.100.199:7890 \
  && pip install git+https://github.com/openai/whisper.git \
  && rm -rf /var/lib/apt/lists/*; apt clean

ENTRYPOINT [ "/bin/bash" ]
WORKDIR /data

