

# 惠兴超市管理系统说明文档

####  技术栈

html + css + javascript + jquery + ajax + bootstrap + Font Awesome 图标 + java + servlet + mvc

####  项目预览

[预览项目](http://admin.cooxl.cn:8989/)（默认账号密码admin）

#### 说明

> 本项目主要用于掌握如何使用java mvc模式开发后台管理系统
>
> 项目中使用系统Mac osx，开发工具是IDEA java se 11、tomcat8.5、mysql5.7
>
> 本项目使用最原始jsp servlet开发，适合初学开发学习，实现基本的增删改查操作
>
> 因初学技术有限，存在大量冗余代码与不合理地方，由于时间原因未完成全部功能，在后期学习中慢慢改进完成，

#### 目录结构
```tree
 .
├── .DS_Store
├── SupSystem.iml
├── src
│   └── com
│       └── supsystem
│           ├── bean
│           │   ├── Goods.java
│           │   ├── Inventory.java
│           │   ├── Supplier.java
│           │   └── User.java
│           ├── dao
│           │   ├── GoodsImp.java
│           │   ├── InventoryImp.java
│           │   ├── SupplierImp.java
│           │   ├── UserImp.java
│           │   └── abs
│           │       └── AbstractDAO.java
│           ├── interfaces
│           │   ├── IGoods.java
│           │   ├── IInventory.java
│           │   ├── ISupplier.java
│           │   └── IUser.java
│           ├── servlet
│           │   ├── LoginServlet.java
│           │   ├── goods
│           │   │   ├── DoAddGoodsServlet.java
│           │   │   ├── DoDelGoodsServlet.java
│           │   │   ├── DoEditGoodsServlet.java
│           │   │   └── SearchGoodsServlet.java
│           │   ├── inventory
│           │   │   └── SearchInventoryServlet.java
│           │   ├── supplier
│           │   │   └── SearchSupplierServlet.java
│           │   └── user
│           │       ├── DoEditUserServlet.java
│           │       └── ShowUserServlet.java
│           ├── test
│           │   ├── AddTest.java
│           │   ├── GoodsTest.java
│           │   ├── Test.java
│           │   ├── TestJson.java
│           │   ├── UserTest.java
│           │   ├── a.txt
│           │   └── b.txt
│           └── util
│               └── JdbcUtil.java
└── web
    ├── .DS_Store
    ├── WEB-INF
    │   ├── lib
    │   │   ├── fastjson-1.1.34.jar
    │   │   ├── jstl.jar
    │   │   ├── mysql-connector-java-8.0.25.jar
    │   │   └── standard.jar
    │   └── web.xml
    ├── css
    │   ├── app.min.css
    │   ├── bootstrap.min.css
    │   ├── custom.css
    │   ├── font-awesome.css
    │   ├── icon.css
    │   ├── icons.min.css
    │   ├── login.css
    │   ├── login_style.css
    │   ├── orionicons.css
    │   ├── style.blue.css
    │   ├── style.css
    │   ├── style.default.css
    │   ├── style.green.css
    │   ├── style.pink.css
    │   ├── style.red.css
    │   ├── style.sea.css
    │   └── style.violet.css
    ├── favicon.ico
    ├── fonts
    │   ├── iconfont.css
    │   ├── ionicons.woff2
    │   ├── orion-font.eot
    │   ├── orion-font.svg
    │   ├── orion-font.ttf
    │   ├── orion-font.woff
    │   └── orion-font.woff2
    ├── img
    │   ├── avatar-1.jpg
    │   ├── avatar-2.jpg
    │   ├── avatar-3.jpg
    │   ├── avatar-4.jpg
    │   ├── avatar-5.jpg
    │   ├── avatar-6.jpg
    │   ├── banner.jpg
    │   ├── favicon.png
    │   ├── ga.png
    │   ├── illustration.svg
    │   ├── logoa.png
    │   └── template-mac.png
    ├── js
    │   ├── code.js
    │   ├── dream-msg.min.js
    │   ├── front.js
    │   ├── jquery.min.js
    │   └── js.cookie.min.js
    ├── login.jsp
    └── view
        ├── bottom.jsp
        ├── changePwd.jsp
        ├── common.jsp
        ├── goods.jsp
        ├── logout.jsp
        ├── resource.jsp
        ├── stockManage.jsp
        ├── supplier.jsp
        ├── top.jsp
        └── userManage.jsp
```
#### 完成功能

-  ✅登录 -- 完成
-  ✅路由拦截  (验证是否完成登陆) -- 完成
-  ✅商品管理（增加、编辑、搜索、删除、分页） -- 完成
-  ✅供应商管理 （搜索、分页数据回显） -- 完成
-  ✅库存管理 （搜索、分页数据回显） -- 完成
-  ✅用户管理（搜索） -- 完成
-  ✅修改密码 （密码修改）--完成

# 项目截图
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1821639230290_.pic.jpg)
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1831639230358_.pic.jpg)
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1841639230388_.pic.jpg)
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1911639309671_.pic.jpg)
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1881639230506_.pic.jpg)
