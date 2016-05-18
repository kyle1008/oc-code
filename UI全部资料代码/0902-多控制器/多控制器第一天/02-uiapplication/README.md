# 02-UIApplication
一.`常识`
UIApplication对象是应用程序的象征

每一个应用都有自己的UIApplication对象，而且是单例的

通过[UIApplication sharedApplication]可以获得这个单例对象

一个iOS程序启动后创建的第一个对象就是UIApplication对象

利用UIApplication对象，能进行一些应用级别的操作

1.应用程序图片的提醒数字

2.联网状态

3.设置状态栏

4.打开资源,电话,网页,发短信

二.`单例`

1.整个应用程序只有一份内存.

2.重写alloc方法,只分配一次.

3.提供share方法,获取单例对象.

4.使用静态全局变量保存单例对象.



