// JavaScript Document
$(function(){
	$(".form-control").bind("click",function(e){
		if(e.target.name == "mobile"){
		$(this).tooltip({title : "手机号必须为11位数字",placement : "bottom",animation:true})
		.on('shown.bs.tooltip', function () {
			var t = this;
		  setTimeout(function(){$(t).tooltip('destroy')},3000)
		}).tooltip("show");			
		}
		if(e.target.name == "password"){
		$(this).tooltip({title : "密码只能由数字和字母组成",placement : "bottom",animation:true})
		.on('shown.bs.tooltip', function () {
			var t = this;
		  setTimeout(function(){$(t).tooltip('destroy')},5000)
		}).tooltip("show");			
		}
		if(e.target.name == "captcha"){
		$(this).tooltip({title : "请根据图片输入验证码",placement : "bottom",animation:true})
		.on('shown.bs.tooltip', function () {
			var t = this;
		  setTimeout(function(){$(t).tooltip('destroy')},5000)
		}).tooltip("show");			
		}		

	}).bind("focus",function(){
		$(this).tooltip('destroy');
	})
	/*$(".jslogin").bind("blur",function(){
		location.href = "index.html"
	})*/
})
