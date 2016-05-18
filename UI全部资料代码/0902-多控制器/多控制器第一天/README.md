01-项目中常见文件

一.`Xcode5和Xcode6区别`

 Xcode5

 Frameworks文件夹:存放iOS中常见的框架

 pch文件

 Xcode6

 没有Frameworks,会自动导入常见的框架

 没有pch

 LaunchScreen.xib: 设置项目启动的界面

二.`info.plist文件`

1.Bundle name : app名称,项目通常使用英文,app名称显示中文

2.Bundle identifier : app标识符 上传AppStore和推送

3.Bundle versions string, short  app版本号

三.`pch文件`

 pch作用:

 1.存放一些公用的宏

 2.存放一些公用的头文件

 3.自定义Log
 ```objc
// ...表示宏里面的可变参数
// __VA_ARGS__表示函数里面的可变参数

#ifdef DEBUG // 表示当前调试阶段

#define XMGLog(...)   NSLog(__VA_ARGS__)

#else // 发布阶段

#define XMGLog(...)

#endif
 ```

 pch原理:就是把pch文件中的所有内容拷贝到所有文件的头部

 注意点:
 pch文件一定要注意做些判断,判断下当前是否是OC文件,如果是就  导入OC的代码

 `所有的OC文件都会定义__OBJC__这个宏,苹果定义`

