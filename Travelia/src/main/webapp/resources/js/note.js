var i=3;
var t=0;


// add div function

function add_div(i, t){
	
	var nnum = "nn" +t;
	var tnum = "tn" + t;
	var intn="img"+i;
	var title="title"+i;
	var time_title="time_title"+i;
	var time="time"+i;
	var nt ="nt"+i;
	var minus="minus"+t;
	var imgid = "nt_img"+i;
	var intnm = "note" + i;
	


	$(".note_wt").append('<div class="row wt" id="'+nnum+'">' +
        '<div class="col-md-3">' +
        '<img src="/resources/images/plus2.png" id="'+imgid+'" style="width:150px; height:150px; cursor: pointer;"' +
        ' class="img-circle"><span class="glyphicon glyphicon-remove-circle pull-right"  aria-hidden="true" id="'+minus+'" onclick="del_div('+nnum+','+tnum+')"  style="font-size:25px;"></span></div>'+
        ' <div class="col-md-9"><input type="text" name="'+title+'"' +
        ' class="form-control title" placeholder="제목을 입력해 주세요."/>' +
        '<textarea class="form-control" rows="6"  style="width:100%;" placeholder="여행일지를 작성해 주세요." name="'+nt+'" >' +
        '</textarea>' +
        '</div><input type="file" id="'+intnm+'" name="'+intn+'" style="display: none;"/></div>');

	$("#time_wt").append('<div class="row time_note" id="'+tnum+'">' +
        '<div class="col-md-12"> ' +
        '<input type="text" class="form-control title" placeholder="제목을 입력해 주세요." name="'+time_title+'"/>' +
        '<textarea class="form-control" rows="6"  style="width:100%;" placeholder="타임라인을 작성해 주세요." name="'+time+'" >' +
        '</textarea>' +
        '</div>' +
        '</div>');
		
	preImg(intnm,imgid);
	
}

// remove function

function del_div(id1, id2){
	
	$(id1).remove();
	$(id2).remove();
}


// click image and change image preview function


function preImg(a,b){
	
	console.log("inputye id: "+a);
	console.log("img id: "+b);
	
	$(document).on("click", "#"+b, function() {
	    $("#"+a).click();
	});
    
	
		var file= document.querySelector("#"+a);
		
		file.onchange =function(){
			
			var filelist = file.files
			var reader = new FileReader();
			reader.readAsDataURL(filelist[0]);
			
			reader.onload=function(){
				document.querySelector("#"+b).src = reader.result;
			}
		}

	
	
	
  
}

function preImg2(g,d){
	
	console.log("inputye id: "+g);
	console.log("img id: "+d);
	
	$(document).on("click", d, function() {
	    $(g).click();
	});
    
	
		var file= document.querySelector(g);
		
		file.onchange =function(){
			
			var filelist = file.files
			var reader = new FileReader();
			reader.readAsDataURL(filelist[0]);
			
			reader.onload=function(){
				document.querySelector(d).src = reader.result;
			}
		}
}


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
	  $(".main_img").append('<img src="" class="add_img img-responsive center-block" style="width:1200px; height:250px; vertical-align: middle;" />');
	  document.querySelector('.add_img').src = readerf.result;
	  $(".main_img").css("padding","15px"); 
  };

};

// click to add the div

$("#note_add").click(function(){
	
	var lenfg = $('.col-md-3').length;
	console.log(lenfg);
	
	if(lenfg<9){
		add_div(i,t);
	    }else{
	    	
	    	alert("더이상 작성하실 수 없습니다.");
	    }
		
	
		i++;
		t++;

});

preImg2('#note0', '#nt_img0');
preImg2('#note1', '#nt_img1');
preImg2('#note2', '#nt_img2');

/*$(document).on("click", "#minus0" ,function(){
	
	console.log("del!!!!!!");
	
	var re_add=$("#nn0, #tn0").detach();
	
	
}); */

