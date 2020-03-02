# 显示磁盘空间信息 (df)
+ 使用 df -k 命令以千字节为单位显示磁盘空间信息。
    + `-k 表示kb`
    + `-m 表示mb`
    + `-g 表示gb`

```
**[terminal]
**[prompt root@root]**[path ~]**[delimiter  $ ]**[command df -k]
Filesystem            kbytes    used   avail capacity  Mounted on
/dev/dsk/c0t3d0s0     192807   40231  133296    24%    /
```
+ 其中每列的含义

|字段名| 说明|
|---| --- |
|kbytes| 文件系统中可用空间的总大小 |
|used|已用空间|
|avail|可用空间|
|capacity|已用空间百分比|
|mounted on|挂载点|
