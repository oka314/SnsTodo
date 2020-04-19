$(function(){
  $("#post_explain").on("keyup",function(){
    $(".count-box").text($(this).val().length + "/300");
  });
});