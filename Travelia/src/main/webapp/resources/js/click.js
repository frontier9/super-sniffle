$("img[id='normal']")
.css('cursor', 'pointer')
.click(function(){
	
   $("input[id='input-file']").click();
   
});

var file = document.querySelector('#input-file');

file.onchange = function(){

  var filelist = file.files;

  var reader =new FileReader();
  reader.readAsDataURL(filelist [0]);


  reader.onload = function  () {
      document.querySelector('#normal').src = reader.result ;
  };

};