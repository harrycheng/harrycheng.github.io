---
title: "laravel  win10 iis 开发环境"
date: 2015-11-22 20:07:24
tags: PHP
---
本文将介绍怎么在windows10平台上， 使用IIS运行laraval。全文分两部分:
>1、使用IIS，以FastCGI的形式，运行PHP。
>2、安装URL Rewrite(http://www.iis.net/downloads/microsoft/url-rewrite),支持laravel。

在这两部分中，我将重点介绍第二部分，而使用IIS，以FastCGI运行PHP，仅讲关键步骤。 

###1、使用IIS，以FastCGI的形式，运行PHP。###
	(1)、下载最新php的ZIP包。解压后开启相应扩展。
	(2)、安装IIS(CGI模块必须勾选上)
	(3)、IIS管理器中-》处理程序映射-》添加模块映射

![](/images/laravel-win10-iis/fastcgi_module.png)

	到此一个以fastcgi运行php的环境就安装完成了，测试通过后进行第二步。

####2、安装URL Rewrite,支持laravel###

	(1)、下载安装URL Rewrite.
		出现版本问题不能安装的，修改注册表解决 HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\InetStp 中 MajorVersion 项的值为9解决， 
	(2)、下载解压可用版的laravel.
	(3)、新建站点，指向 \laravel-master\public , 使用iis URL rewrite 模块，导入URL重新规则(.htaccess文件)

![](/images/laravel-win10-iis/URLRewrite.png)

	至此一个laravel 运行环境就配置完成了。
	若提示 无php mcrypt 扩展导致的错误，请自行下载扩展dll,并在php.ini中开启扩展。