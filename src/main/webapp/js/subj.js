// JavaScript Document

$(function() {
	//模态框
	$('#mainmodel').on('show.bs.modal', function(event) {
		var button = $(event.relatedTarget)
		var recipient = button.data('whatever')
		var modal = $(this)
		modal.find('.modal-title').text(recipient)
		modal.find('.modal-body input').val(recipient)
	})
	
	$(".changeInfo").on("click",function(e){
		alert("修改");
	})
	$(".delInfo").on("click",function(e){
		alert("删除");
	})
})




//全选
function checkAll(e) {
	if($(e.target).prop("checked")){
		$("input[name=selectone]").prop("checked",true);
	}else {
		$("input[name=selectone]").prop("checked",false);
	}
}




