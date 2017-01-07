$(function(){
  $(window).on("load", function() {
    var page = 1;
    var flag = false;
    $(window).scroll(function() {
      console.log("スクロール中")
      var scrollHeight = $(document).height();
      var scrollPosition = $(window).height() + $(window).scrollTop();
      if ((scrollHeight - scrollPosition) <= 2 && page < 8 && !flag) {
        console.log("今よ！！");
        setTimeout(function(){
          page++;
          $.ajax({
            type: 'GET',
            url: '/rooms',
            dataType: 'json',
            data: {page: page}
          }).done(function(data){

            $('#index-row').append(
              '<div class="col-md-4 margin-48px">' +
              '<img src=' + data.room_0_image_url + '>' +
              '<p class="margin-12px">Grand and Cozy 1920\'s SF Studio</p>' +
              '</div>'
            );

            $('#index-row').append(
              '<div class="col-md-4 margin-48px">' +
              '<img src=' + data.room_1_image_url + '>' +
              '<p class="margin-12px">Grand and Cozy 1920\'s SF Studio</p>' +
              '</div>'
            );

            $('#index-row').append(
              '<div class="col-md-4 margin-48px">' +
              '<img src=' + data.room_2_image_url + '>' +
              '<p class="margin-12px">Grand and Cozy 1920\'s SF Studio</p>' +
              '</div>'
            );

            flag = false;
          }).fail(function(xhr, status, error){
            console.log("エラー");
          });
        }, 1000);
      }
    });
  });
});

