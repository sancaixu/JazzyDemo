# 使用Jazzy自动生成Swift项目文档

-------------------------------
##第一步：安装Jazzy 
jazzy的下载地址[here](https://github.com/realm/jazzy)，打开terminal, 在terminal中输入已下命令
	
	sudo gem install jazzy

##第二步： Jazzy的命令行
在terminal中输入已下命令,

	jazzy -h 
	
可以得到如下的结果

![jazzy 命令行](http://imgdata.hoop8.com/1605/1801919919704.png)

	1. -c, --[no-]clean
	
这个命令的意思是，运行前删除输出目录的内容。
	

	2. -o, --output FOLDER

这个命令用于用户指定输出文件的位置
	
	3. --min-acl [private | internal | public]
	
如果--min-acl 指定为private 他的控制权限最低，所有的都会在文档中显示
	
如果--min-acl 指定为internal 除了私有的类，属性，和方法，其他的都会在文档中显示

如果--min-acl 指定为public 则只有public修饰的类，属性和方法在文档中显示
		
   

	4. --skip-undocumented

这个命令用户如果项目中的类，属性和方法如果没有注释，则不显示在文档里面
	
	5. -a, --author AUTHOR_NAME

这个命令用于指定项目的开发者

	6. -u, --author_url URL

这个命令用户指定开发者的网站
	
	7. -m, --module MODULE_NAME

这个命令用于指定文档的名字
	
	8. --copyright COPYRIGHT_MARKDOWN 
这个命令用户指定版权所属，并呈现在文档的底部

##第三步：新建一个Swift项目
![项目截图](http://imgdata.hoop8.com/1605/1571919919704.png)
![项目截图](http://imgdata.hoop8.com/1605/1831919919704.png)

##第四部：开始生成文档

1.打开terminal cd 到该项目的目录下面

2.在终端输入一下命令
	
Jazzy --min-acl internal --skip-undocumented -o docs/jazzydoc --author sancaixu --author_url https://baidu.com -m JazzyDemo

3.进入项目docs/jazzydoc文件夹打开index.html
![文档截图](http://imgdata.hoop8.com/1605/0741919919704.png)
![文档截图](http://imgdata.hoop8.com/1605/1051919919704.png)
![文档截图](http://imgdata.hoop8.com/1605/1331919919704.png)
![文档截图](http://imgdata.hoop8.com/1605/1561919919704.png)
