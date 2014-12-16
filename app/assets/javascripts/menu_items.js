//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/


$(function() {
  	$(".link-page-to-menu").on("click", function(e) {
		/*
			data
				e.currentTarget.dataset.id
				e.currentTarget.dataset.pageId
		*/
		var url = "link_page";
		if($(e.currentTarget).html().trim() == "Unlink") {
			url = "unlink_page"
		}
		$.ajax({
			url : "/menu_items/"+e.currentTarget.dataset.id+"/"+url,
			method : "get",
			data : {
				item_id : e.currentTarget.dataset.pageId
			}
		}).done(function(response){
			if($(e.currentTarget).text().trim() == "Unlink") {
				$(e.currentTarget).html("Link");
				$(e.currentTarget).removeClass("btn-danger");
				$(e.currentTarget).addClass("btn-success");
				
			} else {
				$(e.currentTarget).html("Unlink");
				$(e.currentTarget).removeClass("btn-success");
				$(e.currentTarget).addClass("btn-danger");
			}
		});
	})
});