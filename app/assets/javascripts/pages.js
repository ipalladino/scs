//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

console.log("hello world")
$(function() {
  	$(".add-generic-item-to-page").on("click", function(e) {
		/*
			data
				e.currentTarget.dataset.id
				e.currentTarget.dataset.pageId
		*/
		var url = "add_item";
		if($(e.currentTarget).html().trim() == "Remove") {
			url = "remove_item"
		}
		$.ajax({
			url : "/pages/"+e.currentTarget.dataset.pageId+"/"+url,
			method : "get",
			data : {
				item_id : e.currentTarget.dataset.id
			}
		}).done(function(response){
			if($(e.currentTarget).text().trim() == "Remove") {
				$(e.currentTarget).html("Add This item");
				$(e.currentTarget).removeClass("btn-danger");
				$(e.currentTarget).addClass("btn-success");
				
			} else {
				$(e.currentTarget).html("Remove");
				$(e.currentTarget).removeClass("btn-success");
				$(e.currentTarget).addClass("btn-danger");
			}
		});
	})
});