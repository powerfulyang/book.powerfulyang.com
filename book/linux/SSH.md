# ssh
## How to prevent SSH from disconnecting if it's been idle for a while
+ 修改ssh设置
+ vim ~/.ssh/config  

```
ServerAliveInterval 60
```

## Set up SSH public-key authentication to connect to a remote system  
+ 远程主机的 /etc/ssh/sshd_config 需配置：  
```
PubkeyAuthentication yes
```  
+ 重启sshd
```
$ /etc/init.d/sshd reload
```
+ 生成 ssh-key，选加密算法（rsa、dsa），给秘钥命名（可选）：  
```
$ ssh-keygen -t rsa -C "key_name"
```
+ 要保证 authorized_keys 都只有用户自己有写权限。否则验证无效。
```
$ chmod 600 ~/.ssh/authorized_keys
```



