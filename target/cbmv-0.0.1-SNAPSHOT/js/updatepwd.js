//JavaScript Document
$(function(){
	$(".form-control").bind("click",function(e){
		if(e.target.name == "pwd"){
		$(this).tooltip({title : "密码应与当前密码相同",placement : "bottom",animation:true})
		.on('shown.bs.tooltip', function () {
			var t = this;
			setTimeout(function(){$(t).tooltip('destroy')},5000)
			}).tooltip("show");			
		}	
		if(e.target.name == "newpwd"){
			$(this).tooltip({title : "新密码密码只能由数字和字母组成,大于6位小于18位",placement : "bottom",animation:true})
			.on('shown.bs.tooltip', function () {
				var t = this;
				setTimeout(function(){$(t).tooltip('destroy')},5000)
				}).tooltip("show");			
		}
		if(e.target.name == "confirm_newpwd"){
			$(this).tooltip({title : "与新密码保持一致",placement : "bottom",animation:true})
			.on('shown.bs.tooltip', function () {
				var t = this;
				setTimeout(function(){$(t).tooltip('destroy')},5000)
				}).tooltip("show");			
			}
	}).bind("focus",function(){
		$(this).tooltip('destroy');
	})
})
