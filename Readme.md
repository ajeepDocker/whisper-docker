1. 制作images:

```
docker build . -t whisper:v20230314
```

2. 运行容器：

```
docker run -it --rm --cpus=8 -v $(pwd):/data whisper:v20230314
```

3. 容器内使用：

```
whisper 69-竹枝词.mp3 --model medium --language Chinese
```
