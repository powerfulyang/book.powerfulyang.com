<!-- toc -->
# acme.sh
## install
```
curl https://get.acme.sh | sh
```
## issue  
腾讯云示例
+ [创建秘钥](https://console.dnspod.cn/account/token)
+ **生成证书** 并 挂载`renew hook`  

```
$ export DP_Id="1234"
$ export DP_Key="sADDsdasdgdsf"
$ acme.sh --issue --dns dns_dp -d powerfulyang.com -d *.powerfulyang.com --renew-hook "docker restart nginx"
```
如果当时没有挂载hook 也可以在生成证书的目录  找到对应`powerfulyang.com.conf`里面去改
