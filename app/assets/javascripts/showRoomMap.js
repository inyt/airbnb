$(function(){
  $('#to_do').on('click', function(e){
    e.preventDefault();
    url = document.location.pathname;
    $.ajax({
      type: 'GET',
      url: url,
      dataType: 'json'
    }).done(function(data){
      console.log("通信中");
      console.log(data.latitude);
      console.log(data.longitude);
      var latlng = new google.maps.LatLng(data.latitude, data.longitude);
      console.log(latlng);
      room_setCenter(latlng);
    }).fail(function(xhr, status, error){
      console.log("エラー");
    });
  });
});
