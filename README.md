# godown
简易临时把服务器当做临时文件下载服务  

## install
```
wget https://github.com/codytan/godown/releases/download/0.1.0/godown_linux
mv godown_linux godown
chmod +x godown

./godown -port 8089 -path /data/downdir
或后台运行
./godown -port 8089 -path /data/downdir > run.log 2>&1 &
```
***注意务必确认用户下载的目录中无敏感信息（.ssh .git等等）***


