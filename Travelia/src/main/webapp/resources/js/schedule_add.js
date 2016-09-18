$('.dropdown-toggle').dropdown();


$(function(){
	$(".listgroup img").draggable({
		start: function(event,ui) {
			$(this).draggable( "option", "revert", true );
			$(".listgroup img").css("zIndex",10);
			$(this).css("zIndex",100);
		}
	});
	$(".drop_card div").droppable({
		drop: function(event,ui) {
			var droptitle = $(this).attr("title");
			var drophtml = $(this).html();
			var dragid = ui.draggable.attr("id");
			if( dragid == droptitle ) {
				ui.draggable.draggable( "option", "revert", false );
				var droppableOffset = $(this).offset();
				var x = droppableOffset.left + 1;
				var y = droppableOffset.top + 1;
				ui.draggable.offset({ top: y, left: x });
			}
		}
	});
});
$(document).ready(function(){
	$("#images div").sort(function(){
		return Math.random()*10 > 5 ? 1 : -1;
	}).each(function(){
		$(this).appendTo( $(this).parent() );    
	});
	$("#boards div").sort(function(){
		return Math.random()*10 > 5 ? 1 : -1;
	}).each(function(){
		$(this).appendTo( $(this).parent() );    
	});
});