---
title: "滑动门与CSS3实现圆角"
date: 2016-01-09 22:24:13
tags: 前端
---
###1、滑动门
所谓“滑动门”就是将一个圆角矩形图片切成如下两个图片，其中右图宽度大于所需要矩形的宽度。左图在右图上移动，可以形成一个不同宽度的圆角矩形。

![](/images/SlidingDoor/left.png)    ![](/images/SlidingDoor/right.png)

#### CSS 代码
		a { 
			display : block;
			height : 40px;
			float : left;
			font-size:1.2em;
			background : url(right.png) no-repeat right top;
			margin-right:2px;
			text-decoration:none
		}
		
		a span{
			display : block;
			background : url(left.png) no-repeat left top;
			line-height:40px;
		}

#### HTML 
		<a href="#"><span>首页</span></a>

###2、CSS3

CSS3中可以使用boder-radius样式，使创建圆角矩形非常容易。 仅需在水平重复一个小图片， ![](/images/SlidingDoor/tiny.png) , 再设置border-radius 。

		a {
			display : block;
			height : 40px;
			line-height:40px;
			font-size:1.2em;
			float:left;
			background : url(tiny.png) repeat-x;
			border-top-left-radius : 8px;
			border-top-right-radius : 8px;
		}