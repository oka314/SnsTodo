$(function(){
  $("#post_explain").on("keyup",function(){
    let countNum = String($(this).val().length);
    $(".count-box").text(countNum + "/300")
  })
}) 