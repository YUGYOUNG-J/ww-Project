<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
 <!-- 폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="http://malsup.github.com/min/jquery.form.min.js"></script>	
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  resize: vertical;
}
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 940px;
  margin: 0px auto;
}

</style>
</head>
<body>

<div id="header-layout">
    	<jsp:include page="../common/header.jsp" />

    </div>
    
    <div id="container">
	     <div id="sidebar-layout">
	        <div id="main-sidebar">
				<br>
				<div id="sidebar-area">
					<i class="xi-at"></i>&nbsp;
					<a href="">
						<b>Mail</b>
					</a>
					<br>

					<a href="email.form" class="side_subtitle side_subtitle">메일</a>

					<br> <br> <i class="fi fi-rr-time-check"></i>&nbsp;
					<a href="main.cm">
						<b>근태관리</b>
					</a>

					<br> <br> <i class="xi-sitemap-o"></i>&nbsp;
					<a href="officerList.li">
						<b>조직도</b>
					</a>
					<br> <br> <i class="xi-document"></i>&nbsp;
					<a href="signoffs.docu?format=1">
						<b>전자결재</b>
					</a>

					<br> <br> <i class="xi-presentation"></i>&nbsp;
					<a href="project.main">
						<b>프로젝트</b>
					</a>
					<br> <br> <i class="xi-comment"></i>
					<a href="list.co">
						<b>커뮤니티</b>
					</a>

					<br>
					<a href="mylist.co" class="side_subtitle">내 게시글</a>
					<br> <br> <i class="xi-lightbulb-o"></i>&nbsp;
					<a href="notice.no">
						<b>공지사항</b>
					</a>
					<br> <br>
					<br><br><br><br><br><br><br>
					<a href="logout.me" style="font-size:18px;">로그아웃</a>
				</div>
			</div>
	      </div>
	
	      <div id="content-layout">
  
		    <div class="container">
			  <h3>메일</h3>
			   <br> <br>

				 		   
			  <form action="${pageContext.request.contextPath}/mail/mailSending" method="post">
			    <label>제목&nbsp;&nbsp;</label>
			    <input type="text" name="title" placeholder="제목"">
			
				<br>
			    <label>주소&nbsp;&nbsp;</label><br>
			    <input type="text" id="tomail" name="tomail" placeholder="메일주소">&nbsp;
			
			    <br>
			
			    <label>내용</label>
			    <textarea id="content" name="content" placeholder="Write something" style="height:200px"></textarea>
			 	<br>
			    <br><br>
			    <input type="submit" value="보내기">
			   
			    </form>
			
			
			<!-- 
			  <form action="WebSendMail" method="post" enctype="multipart/form-data">
					<table border="1" cellpadding="0" cellspacing="0">
					<tr>
					   <td>Title</td>
					   <td><input type="text" name="subject" size="40"></td>
					</tr>
					<tr>
					   <td>Content</td>
					   <td><textarea name="body" rows="10" cols="40"></textarea></td>
					</tr>
					<tr>
					   <td>File</td>
					   <td><input type="file" name="attachment"></td>
					</tr>
					<tr>
					   <td colspan="2"><input type="submit" value="Submit"></td>
					</tr>
					</table>
				</form>
			  <br>
			  -->	
			</div>
</div>
</div>			
			
<script>
//$(document).ready(function () {	
//function uploadfile() {
	/*
$(function(){	
	var files = [];
	var filecount = 0;
	$('[data-toggle="tooltip"]').tooltip();
	
	$("#uploadfile").change(function(event){
		files[filecount]=event.target.files[0];
		
		var printHTML = "<label>첨부파일("+(filecount+1)+") " + event.target.file[0].name + "</label><br>";
		
		$('#filelist').append(printHTML);
		
		filecount++;
	});
	
	$("#btn-enroll").click(function(){
		var titletext = $('#title').val();
		var contenttext = $('#content').val();
		var arraycount = files.length;
		
		var formData = new FormData();
		
		formData.append("title", titletext);
		formData.append("content", contenttext);
		
		for(var i=0; i<arraycount; i++){
			formData.append("uploadfile["+i+"]", files[i]);
		}
		
		$.ajax({
			type : 'POST',
			url : "enrollajax",
			data : formData,
			processData : false,
			contentType : false,
			beforeSend : function(){
				$('.wrap-loading').removeClass('display-none');
			},
			complete:function(){
				$('.wrap-loading').addClass('display-none');
			},
			success : function(retVal) {
				alert('email success');
				
				$('#filelist').empty();
				filecount=0;
			},
			error : function(retVal, status, er) {
				alert("error: " +retVal+" status: "+status+" er:"+er);
			}
		});
	});
//}
});	




/*
var index = 0;

$(document).ready(function () {
	$('body').on('click', '.x-btn', function () {
		$(this).parent().remove();
		var fileIndex = $(this).attr('data-file-index');
		$('#file_' + fileIndex).remove();
	})

});

function attachFile() {
	if($('#fileList').children().length === 3) {
		alert("첨부파일은 3개까지 가능합니다.");
		return;
	}
	
	//"파일"타입 생성하고 리스트에 추가
	var createFile = document.createElement("input");
	createFile.id = "file_" + index;
	createFile.name= 'attachment';
	createFile.type = "file";
	createFile.style.display = "none";
	
	//리스트에 추가 형식
	createFile.onchange = function() {
		var html = '<li>' + this.files[0].name + '<button type="button" class="x-btn" data-file-index="'+index+'">X</button></li>'
		$('#fileList').append(html);
	};

	document.getElementById('enrollForm').appendChild(createFile);
	createFile.click(); //첨부클릭할때마다
	index++; //data-file-index 값 하나씩 올리기
}
*/

</script>		

</body>
</html>