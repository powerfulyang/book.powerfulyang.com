<!-- toc -->
# disk 
## 显示磁盘空间信息 (df)
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

## Understanding Linux File Permissions
**`drwxrwxrwx`**  
第一位代表文件类型，有两个数值：“d”和“-”，“d”代表目录，“-”代表非目录。  
后面9位可以拆分为3组来看，分别对应不同用户，2-4位代表所有者user的权限说明，5-7位代表组群group的权限说明，8-10位代表其他人other的权限说明。  
r代表可读权限，w代表可写权限，x代表可执行权限。  
"drwxrwxrwx”表示所有用户都对这个目录有可读可写可执行权限。  
 
### Permission Groups
+ u代表所有者(user)-The Owner permissions apply only the owner of the file or directory, they will not impact the actions of other users.
+ g代表所有者所在的组和群(group)-The Group permissions apply only to the group that has been assigned to the file or directory, they will not effect the actions of other users.
+ o代表其他人但不是u和g(other)
+ a代表全部人-The All Users permissions apply to all other users on the system, this is the permission group that you want to watch the most.

### Permission Types
+ read – The Read permission refers to a user’s capability to read the contents of the file.
+ write – The Write permissions refer to a user’s capability to write or modify a file or directory.
+ execute – The Execute permission affects a user’s capability to execute a file or view the contents of a directory.

### Advanced Permissions
+ _ – no special permissions
+ d – directory
+ l – The file or directory is a symbolic link
+ s – This indicated the setuid/setgid permissions. This is not set displayed in the special permission part of the permissions display, but is represented as a s in the read portion of the owner or group permissions.
+ t – This indicates the sticky bit permissions. This is not set displayed in the special permission part of the permissions display, but is represented as a t in the executable portion of the all users permissions

*r,w,x可以用数字表示 r=0x100 w=0x10 x=0x1*  
+ rw------- (600) 只有所有者才有读和写的权限
+ rw-r–r-- (644) 只有所有者才有读和写的权限，组群和其他人只有读的权限
+ rwx------ (700) 只有所有者才有读，写，执行的权限
+ rwxr-xr-x (755) 只有所有者才有读，写，执行的权限，组群和其他人只有读和执行的权限
+ rwx–x--x (711) 只有所有者才有读，写，执行的权限，组群和其他人只有执行的权限
+ rw-rw-rw- (666) 每个人都有读写的权限  
### Change Permissions
The potential Assignment Operators are + (plus) and – (minus); these are used to tell the system whether to add or remove the specific permissions.  
use *command* `chmod`  to modify permissions;
+ To make this modification you would invoke the command: **_chmod a-rw file1_**
+ To add the permissions above you would invoke the command: **_chmod a+rw file1_**
+ You use the chown command to change owner and group assignments, the syntax is simple **`chown owner:group filename`**, so to change the owner of file1 to user1 and the group to family you would enter **_chown user1:family file1_**.
