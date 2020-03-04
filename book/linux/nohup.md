<!-- toc -->

# nohup and &

## &
&的意思是在后台运行， 什么意思呢？  意思是说， 当你在执行 ./a.out & 的时候，
 即使你用ctrl C,  那么a.out照样运行（因为对SIGINT信号免疫）。
  但是要注意， 如果你直接关掉shell后， 那么， a.out进程同样消失。
   可见， &的后台并不硬（因为对SIGHUP信号不免疫）。  

## nohup
nohup的意思是忽略SIGHUP信号， 所以当运行nohup ./a.out的时候，
 关闭shell, 那么a.out进程还是存在的（对SIGHUP信号免疫）。
  但是， 要注意， 如果你直接在shell中用Ctrl C, 那么,
   a.out进程也是会消失的（因为对SIGINT信号不免疫）  

## nohup , &
所以， &和nohup没有半毛钱的关系， 要让进程真正不受shell中Ctrl C和shell关闭的影响，
 那该怎么办呢？ 那就用 nohup ./a.out & 吧， 两全其美。

# override and append
+ \> 代表override
+ \>\> 代表append  

# /dev/null and > override

## /dev/null
+ 可以将/dev/null看作"黑洞". 它非常等价于一个只写文件. 所有写入它的内容都会永远丢失. 而尝试从它那儿读取内容则什么也读不到. 然而, /dev/null对命令行和脚本都非常的有用.  
  
**用处:**
 _禁止标准输出    command 1>/dev/null   stdout被遗弃_ 
 _禁止标准错误    command 2>/dev/null   stderr被遗弃_  
    
## command 1>/dev/null 2>&1  
**解读 `1>/dev/null` `2>&1` 分为两部分**
+ 1 表示stdout标准输出，系统默认值是1，所以"command>/dev/null"等同于"command 1>/dev/null" 
`command 1>/dev/null 2>&1` 等同于 `command>/dev/null 2>&1`  
+ 2 表示stderr标准错误 
+ & 表示等同于的意思，2>&1，表示2的输出重定向等同于1 

 
