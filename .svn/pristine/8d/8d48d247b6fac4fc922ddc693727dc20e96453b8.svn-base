// JavaScript Document
var root = "/preview/app/";
$(function(){
	$.proxy(cb.toPage,this)("main.html");
	$(".main-menu a").bind("click",function(){
		//根据点击对象加载不同页面
		var url = $(this).data("url");
		if(url){
			$.proxy(cb.toPage,this)(url);
		}
	})
	//注销
	$(".cb-btn-out").bind("click",function(){
		sessionStorage.removeItem("token");
		document.cookie = document.cookie.substring(0,document.cookie.indexOf("token")-1);
		location.href="login.html";
	})
})

window.addEventListener('popstate', function(e){
  if (history.state){
	var state = e.state;
	if(state)
    cb.toPage(state.url,true);
  }
}, false);

class CB{
	toPage(url,state){
		$(".main").load(url);
		if(!state){
			var state = {
					title: $(this).text(),
					url: url,
			};
			window.history.pushState(state, document.title, location.href);
		}
		
		$(".breadcrumb").empty();
		$('<li><a href="#">首页</a></li>')
			.appendTo(".breadcrumb")
			.bind("click",function(){cb.toPage("/cbmv/main")});
		//$('<li><a href="#">'+ $(this).text +'</a></li>').bind("click",function(cb.toPage()))
	}
}

const cb = new CB();
