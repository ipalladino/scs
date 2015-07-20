$(function() {
  $("#sortable").sortable({
    revert: true,
    update: function( event, ui ) {
      var list = $("#sortable li");
      var order = {};

      //create dict for order
      for(i=0;i<list.length;i++) {
        var key = $("#sortable li")[i].dataset.id.toString();
        order[key] = i;
      }

      //do ajax to update order
      $.ajax({
        url : "/pages/"+$("#sortable")[0].dataset.pageid+"/update_order",
        data : {
          "order": order
        }
      }).done(function(result){
        //location.reload();
      });
    }
  });
  $( "ul, li" ).disableSelection();
});
