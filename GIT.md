# git merge和git rebase的区别

## 跟随大众的喜好
    
> git-merge - Join two or more development histories together

**缺点：因为每次merge会自动产生一个merge commit，所以在使用一些git 的GUI tools，特别是commit比较频繁时，看到分支很杂乱。**
    
**rebase的缺点是，改变了当前分支branch out的节点**

```
git rebase -i [startpoint] [endpoint] 
合并git commit 看着清爽点
--------------------
在pull之前可以先使用 `git stash` 保存当前工作 避免错误提交
git pull --rebase 不会产生merge commit
pull之后 `git stash pop`恢复保存的工作
```

# 使用github actions部署
 
 .github/workflows/book.yml自豪的采用github actions 部署 
