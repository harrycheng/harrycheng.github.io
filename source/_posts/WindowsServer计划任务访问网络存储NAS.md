---
title: "WindowsServer计划任务访问网络存储NAS"
date: 2015-04-15 21:23:29
tags: WindowsServer运维
---
## Windows 计划任务访问网络存储(NAS),程序找不到路径解决办法
Windows 服务器端运行的软件，大多时需要开机自启，这时Windows 计划任务就是一个很好的选择。我在实践中总结了一些小经验，解决了“计划任务”访问**网络存储(NAS)**时,因**用户没登陆**，程序找不到网络路径而失败的问题。

关键有两点需要注意
>1、计划任务触发器设置为“任何用户登陆时触发”，并且仅在用户登录时运行。这样设置是因为NAS存储一般是要用户挂载的，这就需要用户在登录状态下。
>2、设置Windows服务器自动登陆。NAS需要登录，登录后计划任务才能运行。WindowsServer默认是要用户输入密码才能登录的。这里要设置自登录。

下面就以例子来说明 ：
###(1)新建一个计划任务：
![NewTask.jpg](/images/WindowsTask/NewTask.jpg)

###(2)任务触发器，选择当前用户登陆时。
![NewTask.jpg](/images/WindowsTask/TriggerConfig.jpg)

###(3)摘要。勾选上“当单击完成时，打开此任务属性对话框”
![NewTask.jpg](/images/WindowsTask/Info.jpg)

###(4)辑触发器。在弹出的对话框中，选择触发器选项卡，点击编辑。设置为所有用户。适当延时。
![NewTask.jpg](/images/WindowsTask/EditTrigger.jpg)

###(5)一个建好的任务如图。
![NewTask.jpg](/images/WindowsTask/Show.jpg)

###(6)Windows自登录。去掉勾选。
`
命令行中输入 ： netplwiz
`
![NewTask.jpg](/images/WindowsTask/AutoLogin.jpg)

至此设置结束。重启服务器，将弹出"task Engine"启动的计划任务。