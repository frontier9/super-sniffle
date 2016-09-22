var i=1;


map3.data.addListener('click', function(e) {
	
	var feature = e.feature,
    regionName = feature.getProperty('area1');
    var code; 
    
    var selcity = "kr_city"+i;
    var minus_id="del"+i;
    var btn_num = "btn-number"+i;
    var field_name="quant"+i;
    var btm = ".btn-number"+i;
    var sel_num=$('.sel_city').length;
    var state =$(".sch").css("display"); 
    var line_time="line"+i;

    $(".sch").show(1000); 
    
 
  
    
  switch(regionName) {
       case "서울특별시":
           code = 1;
           break;
       case "인천광역시":
           code = 2;
           break;
       case '대전광역시':
           code = 3
           break;
       case '대구광역시':
           code = 4;
           break;
       case '광주광역시':
           code = 5;
           break;
       case '부산광역시':
           code = 6;
           break;
       case '울산광역시':
           code = 7;
           break;
       case '세종특별자치시':
           code = 8;
           break;
       case '경기도':
           code = 31;
           break;
       case '강원도':
           code = 32;
           break;
       case '충청북도':
           code = 33;
           break;
       case '충청남도':
           code = 34;
           break;
       case '경상북도':
           code = 35;
           break;
       case '경상남도':
           code = 36;
           break;
       case '전라북도':
           code = 37;
           break;
       case '전라남도':
           code = 38;
           break;
       case '제주특별자치도':
           code = 39;
           break;
       default:
           code = 1;
   }
   
   if(code===39){
	   
	   regionName="제주도";
   }else if(code===8){
	   regionName="세종시";
   }
   
   
   
   var add_div= ' <div class="sel_city" id="'+selcity+'"><span class="glyphicon glyphicon-remove-circle cen_line" onclick="dele('+selcity+','+line_time+')"></span>'+
				'<div class="sel_text"><h4>'+regionName+'</h4></div> <div class="input-group input-group-sm ip_gr">'+
				'<span class="input-group-btn"><button type="button" class="btn btn-default '+btn_num+' " disabled="disabled" data-type="minus" data-field="'+field_name+'">'+
				'<span class="glyphicon glyphicon-minus" id="'+minus_id+'"></span></button></span>'+
				'<input type="text" class="form-control input-number" name="'+field_name+'" placeholder="Username" aria-describedby="sizing-addon3" value="1" min="1" max="100">'+
				'<span class="input-group-btn"><button type="button" class="btn btn-default  '+btn_num+' " data-type="plus" data-field="'+field_name+'">'+
				'<span class="glyphicon glyphicon-plus"></span></button></span></div></div>' ;
   
   
   console.log(state);
   
   if(state==="none"){
  	   
	   
			   $(".sch-body").append(add_div+'<div id="'+line_time+'"></div>');
			   $(".glyphicon-remove-circle").css("display", "none");
			   $(".sel_text").css("margin-left", '50px');
			  
		
	}else{
	   
		$(".sch-body").append('<span class="glyphicon glyphicon-option-vertical line" id="'+line_time+'" aria-hidden="true"></span>'+add_div);
		
	}
	
   
 //plugin bootstrap minus and plus
   //http://jsfiddle.net/laelitenetwork/puJ6G/
   $(btm).click(function(e){
     e.preventDefault();
     
     fieldName = $(this).attr('data-field');
     type      = $(this).attr('data-type');
     var input = $("input[name='"+fieldName+"']");
     var currentVal = parseInt(input.val());
     if (!isNaN(currentVal)) {
         if(type == 'minus') {
             
             if(currentVal > input.attr('min')) {
            	 console.log("굿1" );
                 input.val(currentVal - 1).change();
             } 
             if(parseInt(input.val()) == input.attr('min')) {
            	 console.log("아왜" );
                 $(this).attr('disabled', true);
             }

         } else if(type == 'plus') {

             if(currentVal < input.attr('max')) {
            	 console.log("굿23" );
                 input.val(currentVal + 1).change();
                 $(".btn-default").attr('disabled', false);
             }
             if(parseInt(input.val()) == input.attr('max')) {
            	 console.log("아왜" );
                 $(this).attr('disabled', true);
             }

         }
     } else {
         input.val(0);
     }
   });
   $('.input-number').focusin(function(){
    $(this).data('oldValue', $(this).val());
   });
   $('.input-number').change(function() {
     
     minValue =  parseInt($(this).attr('min'));
     maxValue =  parseInt($(this).attr('max'));
     valueCurrent = parseInt($(this).val());
     
     name = $(this).attr('name');
     if(valueCurrent >= minValue) {
         $(btn_num+"[data-type='minus'][data-field='"+name+"']").removeAttr('disabled')
     } else {
         alert('Sorry, the minimum value was reached');
         $(this).val($(this).data('oldValue'));
     }
     if(valueCurrent <= maxValue) {
         $(btn_num+"[data-type='plus'][data-field='"+name+"']").removeAttr('disabled')
     } else {
         alert('Sorry, the maximum value was reached');
         $(this).val($(this).data('oldValue'));
     }
     
     
   });
   
   $(".input-number").keydown(function (e) {
         // Allow: backspace, delete, tab, escape, enter and .
         if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
              // Allow: Ctrl+A
             (e.keyCode == 65 && e.ctrlKey === true) || 
              // Allow: home, end, left, right
             (e.keyCode >= 35 && e.keyCode <= 39)) {
                  // let it happen, don't do anything
                  return;
         }
         // Ensure that it is a number and stop the keypress
         if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
             e.preventDefault();
         }
     });

   
   
 
   
   
   
   i++;
  
});




function dele(a,b){
	
	
	
	$(a).remove();
	$(b).remove();
	

	
}





$(".head-right").on("click", function(){
	
	   console.log(sel_num);
	
	$("#calren").toggle();
	
	$(".head-right").css("margin-bottom","-20px");
	
});


$(".exit").on("click", function(){
	
	$(".sch").hide(500);
	$(".sch-body").empty();
	
	
});



