---
title: "AdobeFlashMediaServer直播入门"
date: 2015-04-21 16:55:53
tags: 音视频
---
##本文目的：使用Flash media server 5 搭建一个支持苹果HLS和Flash的最简直播系统.

##基础知识：

>Adobe Flash Media Server:				服务器端软件，用于接收RTMP流。

>Apache 2.2：							Adobe Flash Media Server 自带， 用做Web服务器， 支持HLS。

>Adobe Flash Media Live Encoder 3:  用于推送RTMP流


##步骤：

###1、安装、启动Adobe Flash Media Server5.0， apache2.2。 默认安装， 一路Next。注意记住所填的用户名、密码。
安装完成后：

> ![](/images/FlashMediaServer/start.jpg)

>（1）打开开始菜单点击“Start adobe media server5”启动FMS

>（2）打开开始菜单点击“Start adobe media administrator server 5"启动管理服务。

>>打开Adobe media Administator console, 启动管理界面。输入用户名，密码，成功进入管理界面。

>>![](/images/FlashMediaServer/AdobeMediaServerConsole.jpg)  

>>![](/images/FlashMediaServer/login-ok.jpg)

>（3）启动Apache.找到安装路径/Adobe Media Server 5/Apache2.2/bin/ApacheMonitor.exe, 启动apache。

>若成功进入管理界面，并启动apache,安装成功。失败，请检查apache监听端口。

>> ![](/images/FlashMediaServer/AMS.jpg)

###2、安装Adobe Flash Media Live Encoder， 一路next。安装后启动Adobe Flash Media Live Encoder，填写参数。点击connect >start >开始推流.

注意两点：

>(1)Video 格式设置。 请选择h264

>(2)Stream to Flash Media server设置

>>FMS URL: rtmp://ip/livepkgr   其中，ip为FMS ip

>>Stream : livestream?adbe-live-event=liveevent

>> ![](/images/FlashMediaServer/adobe-live-encoder.jpg)

###3、若一切顺利，在Adobe media Administator console 管理界面有如下流信息。

> ![](/images/FlashMediaServer/livepkgr.jpg)

###4、开始菜单中打开：“Adobe Media Server Start Screen”，自带的例子。如图输入参数，你就可以看到你自己推送的流了。

> ![](/images/FlashMediaServer/show.jpg)

>Mac ios 下, Safari中输入 http://ip/port/hls-live/livepkgr/_definst_/liveevent/livestream.m3u8  就可以看真播了。

至此一个最简的直接系统就完成了。