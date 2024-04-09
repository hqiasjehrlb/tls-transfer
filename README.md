# TLS transfer

一個透過socat監聽TLS連線轉接至TCP socket的工具

```
        tls                tcp
client <---> tls-transfer <---> server
```

## Usage

```shell
docker run -d -p 443:443 -e PORT=443 -e REMOTE_ADDR=remote.server:80 hqiasjehrlb/tls-transfer
```

* 可以透過掛載volume來覆蓋所使用的憑證（`/certs/server.key`, `/certs/server.crt`）
* 以上範例將server的http轉換為https，大部分tcp連線應該都能直接轉為加密連線
