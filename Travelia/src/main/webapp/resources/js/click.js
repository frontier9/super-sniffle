$(document).ready(function(){
  var fileTarget = $('.filebox .upload-hidden');
  var filename;
  var domEleArray = [$('.upload-name').clone()]; // 원본 복사


fileTarget.on('change', function(){  // 값이 변경되면
if(window.FileReader){  // modern browser
filename = $(this)[0].files[0].name;
}
else {  // old IE
filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
}

// 추출한 파일명 삽입
$(this).siblings('.upload-name').val(filename);


 $('.cancel').click(function() {

   domEleArray[1] = domEleArray[0].clone(true); // 쌔거(0번) -> 복사(1번)
   $('.upload-name').replaceWith(domEleArray[1]);
   function RemoveFile()
{
   document.form.aFile.select();
   document.selection.clear();          
}

 });

});

      var del=$('.img-thumbnail');
		  var imgTarget = $('.preview-image .upload-hidden');


	    imgTarget.on('change', function(){
			var parent = $(this).parent();
			parent.children('.upload-display').remove();
      $("div").remove(".firstone");

			if(window.FileReader){
					//image 파일만
					if (!$(this)[0].files[0].type.match(/image\//)) return;

					var reader = new FileReader();
					reader.onload = function(e){

							var src = e.target.result;
							parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
					};
					reader.readAsDataURL($(this)[0].files[0]);

			}

			else {
					$(this)[0].select();
					$(this)[0].blur();
					var imgSrc = document.selection.createRange().text;
					parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

					var img = $(this).siblings('.upload-display').find('img');
					img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";
			}
          $('.cancel').click(function() {
           $("div").remove(".upload-display");

         });

	});


});
