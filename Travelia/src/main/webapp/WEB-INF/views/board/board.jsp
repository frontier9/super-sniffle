<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="style/bootstrap.css" rel="stylesheet">
<link href="style/Rcss.css" rel="stylesheet">
<title>board</title>
</head>
<body>
<div class = "container-fluid fluid-user">
	<header>
		<div class = "container">
				<div id = "logo">
				<img src="http://ko.learnlayout.com/images/logo.png">
				<span>BOARD</span>
				<!-- <h4>자유롭게 글을 올리실 수 있습니다. 자유로운 만큼 더욱 더 예절을 지켜주시기 바랍니다.</h4> -->
				</div>
			</div>
			
	</header>

	<div class = "row">
 		<div class="col-md-12">
  		  <form class="form-inline" role="search">

  			 	<select>
  				<option selected>글번호</option>
  				<option>글종류</option>
  				<option>제목</option>
  				<option>닉네임</option>
				</select>
    		     <input type="text" id="form-control" placeholder="Search">
  			     <button type="submit" class="btn btn-default">검색</button>
	  		</form>
		</div>
    </div>

    <div class="table-responsive">
       <table class="table table-striped ">
       <colgroup>
       	<col width="30 "/>
       	<col width="40 "/>
       	<col width="70 "/>
       	<col width="30 "/>
       	<col width="20 "/>
	   </colgroup>


        <tr class = "success">
      	 <th>글번호</th>
         <th>글종류</th>
         <th>제목</th>
         <th>닉네임</th>
         <th>작성일</th>
        </tr>

      <tr>
         <td>1</td>
         <td>Jane Doe</td>
         <td><a href="jane.doe@foo.com">sdfsdfsd</a></td>
         <td>정동원</td>
         <td>2014.12.12 </td>
      </tr>

      <tr>
         <td>1</td>
         <td>John Doe</td>
         <td><a href="jane.doe@foo.com">sdfsdfsd</a></td>
         <td>정동원정동원정동원</td>
         <td>2014.12.12</td>
      </tr>

      <tr>
         <td>1</td>
         <td>Jane Smith</td>
         <td><a href="jane.doe@foo.com">sdfssdfsdfsdfsdffsd</a></td>
         <td>정동원</td>
         <td>2014.12.12</td>
      </tr>

      <tr>
         <td>1</td>
         <td>John Smith</td>
         <td><a href="jane.doe@foo.com">sdfssdfsdfsdfsdfsdfdfsd</a></td>
         <td>정동원</td>
         <td>2014.12.12</td>
      </tr>

      <tr>
         <td>1</td>
         <td>John Doe</td>
         <td><a href="jane.doe@foo.com">sdfsdfsd</a></td>
         <td>정동원정동원정동원</td>
         <td>2014.12.12</td>
      </tr>

      <tr>
         <td>1</td>
         <td>John Doe</td>
         <td><a href="jane.doe@foo.com">sdfsdfsd</a></td>
         <td>정동원</td>
         <td>2014.12.12</td>
      </tr>

      <tr>
         <td>1</td>
         <td>John Doe</td>
         <td><a href="jane.doe@foo.com">sdfsdfsd</a></td>
         <td>정동원정동원</td>
         <td>2016.12.12</td>
      </tr>

      <tr>
         <td>1</td>
         <td>John Doe</td>
         <td><a href="jane.doe@foo.com">sdfsdfsd</a></td>
         <td>01 800 2000</td>
         <td>B</td>
      </tr>

      <tr>
         <td>1</td>
         <td>John Doe</td>
         <td><a href="jane.doe@foo.com">sdfsdfsd</a></td>
         <td>01 800 2000</td>
         <td>B</td>
      </tr>

      <tr>
         <td>1</td>
         <td>John Doe</td>
         <td><a href="jane.doe@foo.com">sdfsdfsd</a></td>
         <td>01 800 2000</td>
         <td>B</td>
      </tr>
   	</table>
  </div>

   <div class="row">
   	<div class="col-md-4"></div>
   		<div class="col-md-4"></div>
   			<div class="col-md-4">
   		<button type="button" class="btn btn-default">글쓰기</button>
   	</div>
   </div>
		<div class="col-md-offset">
 		 <ul class="pagination pagination-lg">
   			 <li>
      			<a href="#" aria-label="Previous">
        		<span aria-hidden="true">&laquo;</span>
     			</a>
    		 </li>
   			 <li><a href="#">1</a></li>
    		 <li><a href="#">2</a></li>
    		 <li><a href="#">3</a></li>
    		 <li><a href="#">4</a></li>
    		 <li><a href="#">5</a></li>
    		 <li>
      		 <a href="#" aria-label="Next">
        	 <span aria-hidden="true">&raquo;</span>
      		 </a>
    		 </li>
 		 </ul>
 	   </div>
	</div>



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.js"></script>

</body>
</html>