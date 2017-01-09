$(function(){

  $(window).on("load", function() {
    $(window).scroll(function() {

    if ($(window).scrollTop() > 50) {
      console.log('header');
      $('#sticky').slideDown();
    } else {
      //80px以下だとfixedクラスを削除
      $('#sticky').slideUp();
    }

    });
  });
})
