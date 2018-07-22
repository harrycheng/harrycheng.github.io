title: "跨域资源共享-JSONP"
date: 2016-01-02 17:06:02
tags: 前端
---

###本文介绍
1、JSONP 跨域资源共享是利用什么原理实现的。
2、后端支持JSONP要做什么。

同源策略简单的说，就是：AJAX请求若是一个“异源”地址， 浏览器不允许读取返回的内容。


####1、JSONP 跨域资源共享原理
>`<script>` 标签, 同源策略不对它做限制。它具有跨域加载资源的能力，同时，对一段JavaScript脚本来说， 其源与它在存储的地址无关，而取决脚本被加载的页面。也就是说，在一个页面中，使用`<script>`标签加载的、不同域名下存储的的脚本，均与当前页面同域。  这就是JSONP 跨域的原理。

####2、后端支持JSONP
>后端要想支持跨域访问， 就不是仅仅返回JSON字符串， 而是加上回调函数名。以下为asp.net 中示例

	var d = JsonConvert.SerializeObject(commentList);
	Response.Write(Request.Params["callback"] + "(" + d + ")" );
	Response.End();
	
####前端调用演示
#### 使用 script 标签加载脚本的方式，跨域资源共享
	
	<script type="text/javascript">
		function TestJSONP(data){
			console.log(data);
		}
	</script>
	<script type="text/javascript" src="http://localhost:9003/default.aspx?callback=TestJSONP"></script>

请注意：这种方式首先定义一个函数 TestJSONP, 然后，在src属性中添加了查询字符串callback=TestJSONP

#### 使用JQuery 跨域加载资源

	$.ajax({
		url:"http://localhost:9003/default.aspx",
		dataType:"jsonp",
		type:"GET",
		success:function(data){
			console.log(data);
		}
	});


