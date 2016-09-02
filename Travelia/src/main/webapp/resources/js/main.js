

$(".grid").masonry({

// set itemSelector so .grid-sizer is not used in layout
itemSelector: '.grid-item',
// use element for option
columnWidth: '.grid-sizer',

percentPosition: true

});


function lastPostFunc(){

  $('div#lastPostsLoader').html('<img src="bigLoader.gif">');

  $.post("scroll.asp?action=getLastPosts&lastID=" + $(".grid-item:last").attr("id"),

  function(data){

    if (data != "") {

    $(".wrdLatest:last").after(data);

    }

    $('div#lastPostsLoader').empty();

    });

  }


$(window).scroll(function(){

  if  ($(window).scrollTop() >= $(document).height() - $(window).height()){
    lastPostFunc();

    }

  });
