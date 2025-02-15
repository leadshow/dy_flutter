## 斗鱼APP
![Flutter](https://img.shields.io/badge/Flutter-1.9.1-52c6f9.svg)

flutter重构的斗鱼直播APP<br/>
首页、娱乐为Material组件开发；直播间、鱼吧为纯自定义编写。<br/>
另外整合各类优质的第三方开源库，打造出原生APP丝滑的用户体验<br/>
尽可能接入更多功能，帮助你在使用flutter进行开发新的应用提供实用的借鉴案例<br/>

#### 包含功能：

- 启动页广告位
- 开播列表上拉加载、下拉刷新、返回顶部
- 列表图片缓存加载优化
- 渐进式头部动画
- 底部导航切换保存页面状态
- HTTP缓存、IO缓存
- 直播间webSocket消息弹幕、礼物
- 页面路由传值
- RxDart全局消息通信封装
- Bloc流式状态管理(启动页预加载首页数据)
- 礼物横幅动画队列
- 弹幕消息滚动
- 静态视频流
- 九宫格抽奖游戏
- 照片选择器
- 全屏、半屏webView
- 鱼吧头部手势动画
- 仿微信朋友圈图片控件
- 登录注册弹窗
- 国家区号列表(仿微信通讯录滑动首字母定位)
- ...
- 持续增加中

#### APP截图：
<div>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/OFSw8qFQ6ZTt4Qry.FD5zxLEOyTxOJDRc0zUeDKvTgU!/r/dMMAAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/685pfsLni*gxLbtOu3m8rTJQrAtVlvduwge2.8GhtvA!/r/dFQBAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/SOcvvERqiEdx92of45wZ5QROd09kd717ct9R*v*zK3U!/r/dLYAAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/c4ql4M5xWstDQx.QsoTQOTZCw7UuPf9zUgCjqG23tOo!/r/dLYAAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/q08JBttKNyQCzGtnK2d6X3J.9ZT6SO7cx4ypcpg75p0!/r/dFQBAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/L23jnwqMYB9PdLQ2KUvoK3ejQY1dwrbxA7fUWybKyxs!/r/dL8AAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/7iQScOrnyUP*YwqZOCmDrspGoHWj3Dn3LZjh4T8xjA8!/r/dMMAAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/N7jxyxYZx8JWGXHdk6FNCFuwTJRTjvC3Z.wsN48cRRo!/r/dL8AAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/flPcnoB6*50r8Ea7Cd.zBJCO3BDa9nDHTlKIQ4pO0P4!/r/dLgAAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/xaywxG66Hc9Vgx07lrK4riFSWSo4*eM2VjBhpu44PBc!/r/dLgAAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/c*G7Ez9KpndmkA2O6rTJx108ZFise249wTfNaCG6UVg!/r/dFIBAAAAAAAA" width="33%"/>
<img src="http://r.photo.store.qq.com/psb?/V14dALyK4PrHuj/FDYCtFUGAS.FMi0oCu0wzIGhFK3BDzubAXdlZbStLyg!/r/dFIBAAAAAAAA" width="33%"/>
</div>


#### 调试：
服务端接口没有上云，如需本地启动该项目调试，可修改`lib/base.dart`中`DYBase.baseHost`接口HOST为本机IP<br/>
然后clone[服务端仓库](https://github.com/yukilzw/factory)，安装python3.6<br/>
进入`./py/tornado`文件夹路径执行`pip install tornado requests`安装依赖，`python main.py`启动服务<br/>

#### 建议：
使用Material自带的widget进行搭配使用，已经能满足绝大部分场景的开发需求<br/>
但是在企业级APP高度UI交互定制化的场景下，仍需要根据业务场景重新实现诸如AppBar、TabView等widget，并编写手势交互<br/>

#### 入门推荐：
[Dart语法](http://dart.goodev.org/guides/language/language-tour)<br/>
[Dart SDK](https://api.dartlang.org/stable/2.4.0/index.html)<br/>
[Flutter中文网](https://flutterchina.club/get-started/install/) - 简单易懂的入门教程<br/>
[Flutter实战](https://book.flutterchina.club/) - 较为全面的进阶教程<br/>
[Flutter官网（英）](https://flutter.dev/docs) - 可查阅全部的API与SDK相关<br/>
[Bloc（英）](https://felangel.github.io/bloc/#/gettingstarted) - 全局状态管理(除此之外也可选用`redux`或原生`InheritedWidget`)


#### dy_flutter为个人项目，仅用作学习交流
