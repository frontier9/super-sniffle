$(".grid").masonry({

// set itemSelector so .grid-sizer is not used in layout
itemSelector: '.grid-item',
// use element for option
columnWidth: 468.25

});

$(".wt_icon").on("click", function(){
	
	location.href="write";
	
});


$(".grid-item").on("click", function(){
	
	location.href="view";
	
});


