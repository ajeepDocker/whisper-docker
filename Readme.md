1. 制作images:

```
docker build . -t ajeep/whisper:v20230314
```

2. 运行容器：

```
docker run -it --rm --cpus=8 -v $(pwd):/data --entrypoint /bin/sh ajeep/whisper:v20230314
```

3. 容器内使用：

```
whisper 69-竹枝词.mp3 --model medium --language Chinese
```

4. 调用docker运行：

```
docker run -it --rm --cpus=8 -v $(pwd):/data ajeep/whisper:v20230314 69-竹枝词.mp3 --model medium --language Chinese

```

5. 切割mp3

```
ffmpeg -i input.mp3 -ss hh:mm:ss -t hh:mm:ss -acodec copy output.mp3
```
