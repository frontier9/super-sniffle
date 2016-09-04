var cnt_note = 0;
var imgid = ['nt_img4', 'nt_img5', 'nt_img6', 'nt_img7', 'nt_img8', 'nt_img9','nt_img10'];
var i=0;
var intnm = ['note4', 'note5', 'note6', 'note7', 'note8', 'note9', 'note10'];
var intn=['img4', 'img5', 'img6', 'img7', 'img8', 'img9', 'img10'];
var title=['title3', 'title4', 'title5', 'title6', 'title7', 'title8', 'title9'];
var time_title=['time_title3', 'time_title4', 'time_title5', 'time_title6', 'time_title7', 'time_title8', 'time_title9'];
var time=['time3','time4','time5','time6','time7','time8','time9'];
var nt =["nt3", "nt4","nt5","nt6","nt7","nt8","nt9"];
var nnum=["nn0","nn1","nn2","nn3","nn4","nn5","nn6"];
var tnum=["tn0","tn1","tn2","tn3","tn4","tn5","tn6"];

$("#note_add").click(function(){
     
	var lastid = $(".img-circle").length;
		
	console.log(lastid);
	
	if(lastid===4){
		i=1;
		cnt_note=1;
	}else if(lastid===5){
		
		i=2;
		cnt_note=2;
	} else if(lastid===6){
		i=3;
		cnt_note=3;
	}else if(lastid===7){
		i=4;
		cnt_note=4;
	}else if(lastid===8){
		i=5;
		cnt_note=5;
	}else if(lastid===9){
		i=6;
		cnt_note=6;
	}else if(lastid===10){
		i=7;
		cnt_note=7;
	}else{
		i=0;
		cnt_note=0;
	}
	
	console.log(i);
	
	if(cnt_note<=6){
	$(".note_wt").append('<div class="row wt" id="'+nnum[i]+'">' +
        '<div class="col-md-3">' +
        '<img src="/resources/images/plus2.png" id="'+imgid[i]+'" style="width:150px; height:150px; cursor: pointer;"' +
        ' class="img-circle"></div><div class="col-md-9"><input type="text" name="'+title[i]+'"' +
        ' class="form-control title" placeholder="제목을 입력해 주세요."/>' +
        '<textarea class="form-control" rows="6"  style="width:100%;" placeholder="여행일지를 작성해 주세요." name="'+nt[i]+'" >' +
        '</textarea>' +
        '</div><input type="file" id="'+intnm[i]+'" name="'+intn[i]+'" style="display: none;"/></div>');

	$("#time_wt").append('<div class="row time_note" id="'+tnum[i]+'">' +
        '<div class="col-md-12"> ' +
        '<input type="text" class="form-control title" placeholder="제목을 입력해 주세요." name="'+time_title[i]+'"/>' +
        '<textarea class="form-control" rows="6"  style="width:100%;" placeholder="타임라인을 작성해 주세요." name="'+time[i]+'" >' +
        '</textarea>' +
        '</div>' +
        '</div>');
	}

	else{ alert('더 이상 작성 하실 수 없습니다.') };
	
	
	
	
	
});

$("#note_del").on("click",function(){
	
	
	
	var lastid = $(".img-circle").length;
	
	
	
	if(lastid===4){
	$("#nn0").remove();
	$("#tn0").remove();
	}
	else if(lastid===5){
		
		$("#nn1").remove();
		$("#tn1").remove();
		
	}	else if(lastid===6){
		
		$("#nn2").remove();
		$("#tn2").remove();
		
	} 	else if(lastid===7){
		
		$("#nn3").remove();
		$("#tn3").remove();
		
	}	else if(lastid===8){
		
		$("#nn4").remove();
		$("#tn4").remove();
		
	}else if(lastid===9){
		
		$("#nn5").remove();
		$("#tn5").remove();
		
	}else if(lastid===10){
		
		$("#nn6").remove();
		$("#tn6").remove();
		
	}else{
		alert('기본으로 작성해야 합니다.')
	}
		
	console.log(lastid);
});



$('.main_img')
.css('cursor', 'pointer')
.click(function(){
   $("input[id='my_file']").click();
});

var filef = document.querySelector('#my_file');

filef.onchange = function(){

  var filelistf = filef.files;

  var readerf =new FileReader();
  readerf.readAsDataURL(filelistf [0]);


  readerf.onload=function(){

	  $(".main_img").empty();
	  $(".main_img").append('<img src="" class="add_img img-responsive" style="width:1050px; height:300px;"/>');
	  document.querySelector('.add_img').src = readerf.result;
  };

};


$("img[id='nt_img1']")
.css('cursor', 'pointer')
.click(function() {
    $("input[id='note1']").click();
});


var file = document.querySelector('#note1');

file.onchange = function () {
    var fileList = file.files;

    // 읽기
    var reader = new FileReader();
    reader.readAsDataURL(fileList[0]);

    //로드 한 후
    reader.onload = function() {
        document.querySelector('#nt_img1').src = reader.result;
    };
};








$("img[id='nt_img2']")
.css('cursor', 'pointer')
.click(function() {
    $("input[id='note2']").click();
});


var file1 = document.querySelector('#note2');

file1.onchange = function () {
    var fileList1 = file1.files ;

    // 읽기
    var reader1 = new FileReader();
    reader1.readAsDataURL(fileList1[0]);

    //로드 한 후
    reader1.onload = function  () {
        document.querySelector('#nt_img2').src = reader1.result ;
    };
};









$("img[id='nt_img3']")
.css('cursor', 'pointer')
.click(function() {
    console.log("nt_img3 click");
    $("input[id='note3']").click();
});


var file2 = document.querySelector('#note3');

file2.onchange = function () {
    var fileList2 = file2.files ;

    // 읽기
    var reader2 = new FileReader();
    reader2.readAsDataURL(fileList2[0]);

    //로드 한 후
    reader2.onload = function  () {
        document.querySelector('#nt_img3').src = reader2.result ;
    };
};


$(document).on('click', '#nt_img4', function() {
    $('input[id="note4"]').click();
});



$('#note_add').on('click',function(){
	
	
	
    var file3 = document.getElementById('note4');

    file3.onchange = function(){
    	
    	
    	
        var fileList3 = file3.files;

        var reader3 = new FileReader();
        reader3.readAsDataURL(fileList3[0]);
        reader3.onload = function(){
            document.querySelector('#nt_img4').src = reader3.result;
        }
    }
});



$(document).on('click', '#nt_img5', function() {
    $('input[id="note5"]').click();
});


$('#note_add').on('click',function(){
	

	
    var file4 = document.getElementById('note5');

    file4.onchange = function(){
    	
    	
    	
        var fileList4 = file4.files;

        var reader4 = new FileReader();
        reader4.readAsDataURL(fileList4[0]);
        reader4.onload = function(){
            document.querySelector('#nt_img5').src = reader4.result;
        }
    }
});




$(document).on('click', '#nt_img6', function() {
    $('input[id="note6"]').click();
});


$('#note_add').on('click',function(){
	

	
    var file5 = document.getElementById('note6');

    file5.onchange = function(){
    	
    
    	
        var fileList5 = file5.files;

        var reader5 = new FileReader();
        reader5.readAsDataURL(fileList5[0]);
        reader5.onload = function(){
            document.querySelector('#nt_img6').src = reader5.result;
        }
    }
});



$(document).on('click', '#nt_img7', function() {
    $('input[id="note7"]').click();
});


$('#note_add').on('click',function(){
	
	
	
    var file6 = document.getElementById('note7');

    file6.onchange = function(){
    	
    	
        var fileList6 = file6.files;

        var reader6 = new FileReader();
        reader6.readAsDataURL(fileList6[0]);
        reader6.onload = function(){
            document.querySelector('#nt_img7').src = reader6.result;
        }
    }
});



$(document).on('click', '#nt_img8', function() {
    $('input[id="note8"]').click();
});


$('#note_add').on('click',function(){
	
	
	
    var file7 = document.getElementById('note8');

    file7.onchange = function(){
    	
    	
    	
        var fileList7 = file7.files;

        var reader7 = new FileReader();
        reader7.readAsDataURL(fileList7[0]);
        reader7.onload = function(){
            document.querySelector('#nt_img8').src = reader7.result;
        }
    }
});



$(document).on('click', '#nt_img9', function() {
    $('input[id="note9"]').click();
});


$('#note_add').on('click',function(){
	
	
    var file8 = document.getElementById('note9');

    file8.onchange = function(){
    	
    	
    	
        var fileList8 = file8.files;

        var reader8 = new FileReader();
        reader8.readAsDataURL(fileList8[0]);
        reader8.onload = function(){
            document.querySelector('#nt_img9').src = reader8.result;
        }
    }
});


$(document).on('click', '#nt_img10', function() {
    $('input[id="note10"]').click();
});


$('#note_add').on('click',function(){
	

	
    var file9 = document.getElementById('note10');

    file9.onchange = function(){
    	
    	
    	
        var fileList9 = file9.files;

        var reader9 = new FileReader();
        reader9.readAsDataURL(fileList9[0]);
        reader9.onload = function(){
            document.querySelector('#nt_img10').src = reader9.result;
        }
    }
});


