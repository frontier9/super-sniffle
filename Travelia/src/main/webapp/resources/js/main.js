if(matchMedia("screen and (max-width: 1070px)").matches){
$(".grid").masonry({

	columnWidth: 472.5,
	itemSelector: '.grid-item',

});
} else{
	
	$(".grid").masonry({

		columnWidth: '.grid-sizer',
		itemSelector: '.grid-item',
		percentPosition: true

	});
	
	
}

$(".wt_icon").on("click", function(){
	
	location.href="write";
	
});


$(".grid-item").on("click", function(){
	
	location.href="view";
	
});


