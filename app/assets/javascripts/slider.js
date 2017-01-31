$(function(){
  $(document).on('turbolinks:load', function(){
    /*
     * Slideshow
     */
    // slideshow クラスを持った要素ごとに処理を実行
    $('.slide-container').each(function () {

        var $slides = $(this).find('.slide-content'), // すべてのスライド
            slideCount = $slides.length,   // スライドの点数
            currentIndex = 0;              // 現在のスライドを示すインデックス

        // 1 番目のスライドをフェードインで表示
        $slides.eq(currentIndex).fadeIn();

        // 7500 ミリ秒ごとに showNextSlide 関数を実行
        setInterval(showNextSlide, 3000);

        // 次のスライドを表示する関数
        function showNextSlide () {

            // 次に表示するスライドのインデックス
            // (もし最後のスライドなら最初に戻る)
            var nextIndex = (currentIndex + 1) % slideCount;

            // 現在のスライドをフェードアウト
            $slides.eq(currentIndex).fadeOut();

            // 次のスライドをフェードイン
            $slides.eq(nextIndex).fadeIn();

            // 現在のスライドのインデックスを更新
            currentIndex = nextIndex;
        }

    });

    /*
     * room#search 価格スライドバー
     */
    $('#price-slide').slider().on('slide', function(e){
      $('#min-price').text(e.value[0]);
      $('#max-price').text(e.value[1]);
    });

  });
});

