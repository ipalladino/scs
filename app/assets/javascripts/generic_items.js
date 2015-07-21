$(function() {
  $("#components").on("change", function(e){
    e.preventDefault();
    updateSelect();
  });

  $('#generic-item-color input[type=text]').minicolors()
  $('#generic-item-background-color input[type=text]').minicolors()

  if($("#components").length > 0) {
    if($("#components")[0].value != "") {
      updateSelect();
    }
  }

  function updateSelect() {
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
  }
});
