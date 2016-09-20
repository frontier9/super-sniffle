$('.dropdown-toggle').dropdown();


map3.data.addListener('click', function(e) {
	
	var feature = e.feature,
    regionName = feature.getProperty('area1');
    var code;

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
   
   
   if(code===1){
	   	console.log("서울" );
		   $("#reg_sel").append('<div class="gd"></div>');
		   
	   }else if(code===2){
		   
		   $("#reg_sel").append('<div class="gd"></div>');
	   }
});


var i=1;

var btn_num = ".btn-number"+i;

console.log(btn_num);

//plugin bootstrap minus and plus
//http://jsfiddle.net/laelitenetwork/puJ6G/
$(btn_num).click(function(e){
  e.preventDefault();
  
  fieldName = $(this).attr('data-field');
  type      = $(this).attr('data-type');
  var input = $("input[name='"+fieldName+"']");
  var currentVal = parseInt(input.val());
  if (!isNaN(currentVal)) {
      if(type == 'minus') {
          
          if(currentVal > input.attr('min')) {
              input.val(currentVal - 1).change();
          } 
          if(parseInt(input.val()) == input.attr('min')) {
              $(this).attr('disabled', true);
          }

      } else if(type == 'plus') {

          if(currentVal < input.attr('max')) {
              input.val(currentVal + 1).change();
          }
          if(parseInt(input.val()) == input.attr('max')) {
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



$('#fromDate').datetimepicker({
	  language : 'ko', // 화면에 출력될 언어를 한국어로 설정한다.
	  pickTime : false, // 사용자로부터 시간 선택을 허용하려면 true를 설정하거나 pickTime 옵션을 생략한다.
	  defalutDate : new Date() // 기본값으로 오늘 날짜를 입력한다. 기본값을 해제하려면 defaultDate 옵션을 생략한다.
	});



