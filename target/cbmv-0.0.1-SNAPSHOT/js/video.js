	$(function(){
		$(".cb-btn-add").bind("click",function(){
			$.proxy(cb.toPage,this)("videofrom.html");
		})
		
	})