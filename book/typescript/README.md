:apple:

# js
## 判断js引用类型
+ 所有的类型
```javascript
function typeString(object) {
  return Object.prototype.toString.call(object).slice(8,-1).toLowerCase();
}
```
+ 对象的 constructor property
```
    (1).constructor
```

## js函数传参
+ 参数问题
```javascript
    let a = 1;
    function change(param) {
      param = 2; //出现重新赋值 不影响外部变量
      return param;
    }
    console.log(change(a)); //2
    console.log(a); // 1

    // 而当传入参数为引用了 
    // ①将引用内的属性改变时 改变生效
    let a = [0];
    function change(param) {
      param[0] = 1; 
      return param;
    }
    console.log(change(a)); // [1]
    console.log(a); // [1]
```
+ 变量值问题
```javascript
    for (var i = 0; i < 10; i++) {
      setTimeout(() => {
        console.log(i); // 输出10个10
      }, i);
    } 
    for (let i = 0; i < 10; i++) {
      setTimeout(() => {
        console.log(i); // 输出 0 1 2 3 ... 9
      }, i);
    }
```    

