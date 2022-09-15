# wiznoteserver-ssl
For docker image wiznote/wizserver adds https support, docker expose 443 port

## Steps
1. Create self-signed certificate`build/gen_cert.sh`
2. Build new image in image directory`docker build -t wiz-server-ssl .`
3. Start image `docker run --name wiz-ssl --restart=always -it -d -v ~/wizdata:/wiz/storage -v /etc/localtime:/etc/localtime -p 80:80 -p 9269:9269/udp -p 443:443 wiz-server-ssl`

[Here details of Wiznote server image deploy](https://wiz.cn/zh-cn/docker)
