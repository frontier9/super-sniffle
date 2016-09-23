$(document).ready(function () {
    //Counter
    counter = 0;
    //Make element draggable
    
    $(".reg").draggable({
        helper: 'clone',
        containment: 'frame',
        cursor:'move',
        //When first dragged
        stop: function (ev, ui) {
            var pos = $(ui.helper).offset();
            objName = "#clonediv" + counter
            $(objName).css({
                "left": pos.left,
                "top": pos.top
            });
            $(objName).removeClass("reg");
            //When an existiung object is dragged
            $(objName).draggable({
                containment: 'parent',
                stop: function (ev, ui) {
                    var pos = $(ui.helper).offset();
                    console.log($(this).attr("id"));
                    console.log(pos.left)
                    console.log(pos.top)
               }
            });
        }
    });
    //Make element droppable
    $(".drop_content").droppable({
        drop: function (ev, ui) {
            if (ui.helper.attr('id').search(/drag[0-9]/) != -1) {
                counter++;
                var element = $(ui.draggable).clone();
                element.addClass("tempclass");
                $(this).append(element);
                $(".tempclass").attr("id", "clonediv" + counter);
                $("#clonediv" + counter).removeClass("tempclass");
                //Get the dynamically item id
                draggedNumber = ui.helper.attr('id').search(/drag([0-9])/)
                itemDragged = "dragged" + RegExp.$1
                console.log(itemDragged)
                $("#clonediv" + counter).addClass(itemDragged);
            }
        }
    });
});



var element=$(ui.draggable).clone();
element.addClass("tempclass");
$(element).resizable({
  helper: "ui-resizable-helper"
});                 
$(this).append(element);

$(".go_view").on("click", function(){
    var href = "/schedule/view";
	location.href=href;
	
});




