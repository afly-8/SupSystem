

# 惠兴超市管理系统说明文档

####  技术栈

html + css + javascript + jquery + ajax + bootstrap + Font Awesome 图标 + java + servlet + mvc

####  项目预览

http://admin.xiaole.website （默认账号密码admin）

#### 说明

> 本项目主要用于掌握如何使用java mvc模式开发后台管理系统
>
> 项目中使用系统Mac osx，开发工具是IDEA java se 11、tomcat8.5、mysql5.7
>
> 本项目使用最原始jsp servlet开发，适合初学开发学习，实现基本的增删改查操作
>
> 因初学技术有限，存在大量冗余代码与不合理地方，由于时间原因未完成全部功能，在后期学习中慢慢改进完成，

目录结构

>.
>
>├── .DS_Store
>
>├── SupSystem.iml
>
>├── src
>
>│  └── com
>
>│    └── supsystem
>
>│      ├── bean
>
>│      │  ├── Goods.java  // 商品bean
>
>│      │  ├── Inventory.java // 库存 bean
>
>│      │  ├── Supplier.java // 供应商 bean
>
>│      │  └── User.java // 用户 bean
>
>│      ├── dao
>
>│      │  ├── GoodsImp.java // 商品dao层实现类
>
>│      │  ├── InventoryImp.java // 库存dao层实现类
>
>│      │  ├── SupplierImp.java // 供应商dao 层实现类
>
>│      │  ├── UserImp.java // 用户dao层实现类
>
>│      │  └── abs
>
>│      │    └── AbstractDAO.java // dao抽象类用于存放一些公共的方法
>
>│      ├── interfaces
>
>│      │  ├── IGoods.java  // 商品类接口
>
>│      │  ├── IInventory.java // 库存类接口
>
>│      │  ├── ISupplier.java // 供应商接口
>
>│      │  └── IUser.java // 用户接口
>
>│      ├── servlet
>
>│      │  ├── LoginServlet.java  //登陆servlet
>
>│      │  ├── goods
>
>│      │  │  ├── DoAddGoodsServlet.java // 添加商品servlet
>
>│      │  │  ├── DoDelGoodsServlet.java // 删除商品servlet
>
>│      │  │  ├── DoEditGoodsServlet.java // 编辑商品servlet
>
>│      │  │  └── SearchGoodsServlet.java // 搜索商品servlet
>
>│      │  ├── inventory
>
>│      │  │  └── SearchInventoryServlet.java // 搜索库存servlet
>
>│      │  ├── supplier
>
>│      │  │  └── SearchSupplierServlet.java // 搜索供应商servlet
>
>│      │  └── user
>
>│      │    ├── DoEditUserServlet.java // 修改用户密码servlet
>
>│      │    └── ShowUserServlet.java // 展示用户信息servlet
>
>│      ├── test // 测试包
>
>│      │  ├── AddTest.java
>
>│      │  ├── GoodsTest.java
>
>│      │  ├── Test.java
>
>│      │  ├── TestJson.java
>
>│      │  └── UserTest.java
>
>│      └── util // 工具包
>
>│        ├── JdbcUtil.java // jdbc工具类
>
>│        └── PageUtil.java
>
>└── web
>
>├── .DS_Store
>
>├── WEB-INF
>
>│  ├── lib
>
>│  │  ├── fastjson-1.1.34.jar
>
>│  │  ├── jstl.jar
>
>│  │  ├── mysql-connector-java-8.0.25.jar
>
>│  │  └── standard.jar
>
>│  └── web.xml
>
>├── css
>
>│  ├── style.blue.css
>
>│  ├── style.css
>
>├── favicon.ico
>
>├── img
>
>│  ├── avatar-5.jpg
>
>│  ├── avatar-6.jpg
>
>│  ├── banner.jpg
>
>│  ├── favicon.png
>
>│  ├── ga.png
>
>│  ├── illustration.svg
>
>│  ├── logoa.png
>
>│  └── template-mac.png
>
>├── js
>
>│  ├── code.js
>
>│  ├── dream-msg.min.js
>
>│  ├── front.js
>
>│  ├── jquery.min.js
>
>│  └── js.cookie.min.js
>
>├── login.jsp
>
>└── view
>
>​    ├── bottom.jsp // 底部jsp
>
>​    ├── changePwd.jsp // 修改密码jsp
>
>​    ├── common.jsp // 主页jsp
>
>​    ├── goods.jsp // 商品管理jsp
>
>​    ├── logout.jsp // 退出操作jsp
>
>​    ├── resource.jsp // 引入外部cdn资源jsp
>
>​    ├── stockManage.jsp // 库存管理jsp
>
>​    ├── supplier.jsp // 供应商jsp
>
>​    ├── top.jsp // 页面底部jsp
>
>​    └── userManage.jsp //用户管理jsp

####  完成功能

-  登录 -- 完成
-  路由拦截  (验证是否完成登陆) -- 完成
-  商品管理（增加、编辑、搜索、删除、分页） -- 完成
-  供应商管理 （搜索、分页数据回显） -- 完成
-  库存管理 （搜索、分页数据回显） -- 完成
-  用户管理（搜索） -- 完成
-  修改密码 （密码修改）--完成

# 项目截图
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1821639230290_.pic.jpg)
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1831639230358_.pic.jpg)
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1841639230388_.pic.jpg)
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1911639309671_.pic.jpg)
![输入图片说明](%E9%A1%B9%E7%9B%AE%E6%88%AA%E5%9B%BE/1881639230506_.pic.jpg)