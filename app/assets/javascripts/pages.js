//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/


$(function() {
  $(".add-generic-item-to-page").on("click", function(e) {
  /*
    data
      e.currentTarget.dataset.id
      e.currentTarget.dataset.pageId
  */
    var url = "add_item";

    $.ajax({
      url : "/pages/"+e.currentTarget.dataset.pageId+"/"+url,
      method : "get",
      data : {
        item_id : e.currentTarget.dataset.id
      }
    }).done(function(response){
      //need to do something?
    });
    location.reload();
  });

  $(".item-remove").on("click", function(e) {
  /*
    data
      e.currentTarget.dataset.id
      e.currentTarget.dataset.pageId
  */
    e.preventDefault();
    var url = "remove_item";

    $.ajax({
      url : "/pages/"+e.currentTarget.dataset.pageId+"/"+url,
      method : "get",
      data : {
        item_id : e.currentTarget.dataset.id
      }
    }).done(function(response){

    });
    location.reload();
  });
});
