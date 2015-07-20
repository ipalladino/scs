ready = function() {
  $("#components").on("change", function(e){
    e.preventDefault();
    $.ajax({
      url : "/generic_items/get_default",
      data : {
        "component" : $("#components")[0].value
      }
    }).done(function(result){
      if(!result.title) {
        $("#generic-item-title").hide();
      } else {
        $("#generic-item-title").show();
      }
      if(!result.description) {
        $("#generic-item-description").hide();
      } else {
        $("#generic-item-description").show();
      }
      if(!result.graphic) {
        $("#generic-item-graphic").hide();
      } else {
        $("#generic-item-graphic").show();
      }
      if(!result.button_link) {
        $("#generic-item-button-link").hide();
      } else {
        $("#generic-item-button-link").show();
      }
      if(!result.button_text) {
        $("#generic-item-button-text").hide();
      } else {
        $("#generic-item-button-text").show();
      }
    });
  });
}

$(document).on('page:load', ready);
$(document).on('page:change', ready);
