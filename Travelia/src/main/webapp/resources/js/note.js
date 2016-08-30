var cnt_note = 0;
var imgid = ['nt_img4', 'nt_img5', 'nt_img6', 'nt_img7', 'nt_img8', 'nt_img9','nt_img10'];
var i=0;
var intnm = ['note4', 'note5', 'note6', 'note7', 'note8', 'note9', 'note10'];
var intn=['img4', 'img5', 'img6', 'img7', 'img8', 'img9', 'img10'];
var title=['title3', 'title4', 'title5', 'title6', 'title7', 'title8', 'title9'];
var time_title=['time_title3', 'time_title4', 'time_title5', 'time_title6', 'time_title7', 'time_title8', 'time_title9'];
var time=['time3','time4','time5','time6','time7','time8','time9'];
var nt =["nt3", "nt4","nt5","nt6","nt7","nt8","nt9"];

$("#note_add").click(function(){

	if(cnt_note<=6){
	$(".note_wt").append('<div class="row wt"><div class="col-md-3"><img src="/resources/images/plus2.png" id="'+imgid[i]+'" style="width:150px; height:150px; cursor: pointer;" class="img-circle"></div><div class="col-md-9"><input type="text" name="'+title[i]+'" class="form-control title" placeholder="제목을 입력해 주세요."/><textarea class="form-control" rows="6"  style="width:494.25px;" placeholder="여행일지를 작성해 주세요." name="'+nt[i]+'" ></textarea></div><input type="file" id="'+intnm[i]+'" name="'+intn[i]+'" style="display: none;"/></div>');
	$("#time_wt").append('<div class="row time_note"><div class="col-md-12"> <input type="text" class="form-control title" placeholder="제목을 입력해 주세요." name="'+time_title[i]+'"/><textarea class="form-control" rows="6"  style="width:470px;" placeholder="타임라인을 작성해 주세요." name="'+time[i]+'" ></textarea></div></div>');
	}

	else{ alert('더 이상 작성 하실 수 없습니다.') };
	cnt_note++;
	i++;

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
	  $(".main_img").append('<img src="" class="add_img" style="width:1050px; height:300px;"/>');
	  document.querySelector('.add_img').src = readerf.result;
  };

};


$("img[id='nt_img1']")
.css('cursor', 'pointer')
.click(function() {
    $("input[id='noteo']").click();
});


var file = document.querySelector('#noteo');

file.onchange = function () {
    var fileList = file.files ;

    // 읽기
    var reader = new FileReader();
    reader.readAsDataURL(fileList [0]);

    //로드 한 후
    reader.onload = function  () {
        document.querySelector('#nt_img1').src = reader.result ;
    };
};

$("img[id='nt_img2']")
.css('cursor', 'pointer')
.click(function() {
    $("input[id='notet']").click();
});


var file1 = document.querySelector('#notet');

file1.onchange = function () {
    var fileList1 = file1.files ;

    // 읽기
    var reader1 = new FileReader();
    reader1.readAsDataURL(fileList1 [0]);

    //로드 한 후
    reader1.onload = function  () {
        document.querySelector('#nt_img2').src = reader1.result ;
    };
};

$("img[id='nt_img3']")
.css('cursor', 'pointer')
.click(function() {
    $("input[id='noteh']").click();
});


var file2 = document.querySelector('#noteh');

file2.onchange = function () {
    var fileList2 = file2.files ;

    // 읽기
    var reader2 = new FileReader();
    reader2.readAsDataURL(fileList2 [0]);

    //로드 한 후
    reader2.onload = function  () {
        document.querySelector('#nt_img3').src = reader2.result ;
    };
};


var str = "test 입니다";

$(document).on("click","#nt_img4",function(){
		$("input[id='note4']").click();


});


var file3 = document.getElementById('#note4');

file3.onchange = function () {

	console.log(str);

    var fileList3 = file3.files ;

    // 읽기
    var reader3 = new FileReader();
    reader3.readAsDataURL(fileList3 [0]);

    //로드 한 후
    reader3.onload = function  () {
        document.querySelector('#nt_img4').src = reader3.result ;
    };
};
