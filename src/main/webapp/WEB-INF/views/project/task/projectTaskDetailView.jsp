<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#content-layout {
	border: 1px solid lightgray;
	height: 60%;
	padding: 10px;
	margin-left: 30px;
}

.info-left, .info-right {
	float: left;
	display: inline-block;
}

.project-info {
	width: calc(100% - 30px);
	display: inline-block;
	min-height: 300px;
	padding: 30px;
	border: 1px solid black;
	margin-left: 15px;
}

.info-left {
	width: 700px;
}

.info-right {
	width: calc(100% - 700px);
	height: 400px;
	border: 1px solid #999;
}

h2.project-title {
	display: inline-block;
}

.project-title {
	background: linear-gradient(to top, rgb(185, 207, 199) 50%, transparent
		40%);
}

ul.project-desc-list {
	list-style: none;
	line-height: 30px;
	margin-top: 20px;
	font-size: 20px;
}

.project-desc-list b {
	width: 210px;
	display: inline-block;
}

.section-title-wrapper {
	margin-bottom: 20px;
}

.project-notice, .project-task {
	padding: 30px;
}

h3.section-title {
	display: inline-block;
	font-weight: 600;
	margin-right: 20px;
}

table.section-table {
	width: 100%;
}

.section-table th, .section-table td {
	border-bottom: 1px solid #CCC;
	line-height: 40px;
	text-align: center;
}

.section-table th {
	background: #EEE;
	border-top: 1px solid #999;
}

.section-table tr:last-child td {
	border-bottom: 1px solid #999;
}

.section-table tr {
	cursor: pointer;
	transition: 0.05s;
}

.section-table tr:hover {
	background: #EEE;
}

.project-desc-list span.desc-text {
	text-overflow: ellipsis;
	display: inline-block;
	white-space: normal;
	overflow: hidden;
	width: 400px;
	vertical-align: top;
}

.project-desc-list p {
	text-overflow: ellipsis;
	display: -webkit-box;
	white-space: normal;
	word-break: break-all;
	height: 150px;
	overflow: hidden;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical;
	text-overflow: ellipsis;
}

.desc-wrapper {
	display: inline-block;
	width: 400px;
	vertical-align: top;
}

.title-filter {
	width: 130px;
	height: 35px;
	border-radius: 10px;
	margin-right: 10px;
}

.task-search-area {
	display: inline-block;
}

.project-desc-list>li {
	margin: 5px 0;
}

.button-area {
	margin: 30px 0;
	text-align: center;
}

.btn-custom {
	width: 130px;
	height: 40px;
	border-radius: 10px;
	border: none;
}

.project-title-area>.project-end-btn {
	float: right;
	margin-right: 20px;
	margin-top: 10px;
}

#project-enroll-btn {
	background-color: rgb(102, 164, 166);
	margin-left: 20px;
}

.project-write-field {
	width: 300px;
	height: 40px;
	border: 1px solid lightgray;
	border-radius: 10px;
}

.project-write-field-title {
	width: 520px;
	height: 40px;
	border: none;
}

.project-write-field:focus {
	outline: none;
}

.project-write-date {
	width: 300px;
	height: 40px;
	border: 1px solid lightgray;
	border-radius: 10px;
}

.project-write-date:focus {
	outline: none;
}

.project-write-field-content {
	width: 100%;
	height: 100px;
	resize: none;
	border: none;
}

.project-write-field-content:focus {
	outline: none;
}

/* filter css*/
.task-search-area {
	height: 40px;
}

.task-search-area>label {
	margin-right: 5px;
	font-size: 13pt;
}

.box-radio-input input[type="radio"] {
	display: none;
}

.box-radio-input input[type="radio"]+span {
	display: inline-block;
	background: none;
	border: 1px solid #dfdfdf;
	padding: 0px 10px;
	text-align: center;
	height: 35px;
	line-height: 33px;
	font-weight: 500;
	cursor: pointer;
}

.box-radio-input input[type="radio"]:checked+span {
	border: 1px solid #23a3a7;
	background: #23a3a7;
	color: #fff;
}

/*파일첨부*/
#fileList {
	width: 300px;
	height: 100px;
	vertical-align: top;
	border: 1px solid lightgray;
	border-radius: 10px;
	clear: both;
	display: inline-block;
	list-style: none;
}
/* 프로젝트 사이드바 */
.new-project {
	background-color: rgb(102, 164, 166);
	border: none;
	border-radius: 50px;
	width: 180px;
	height: 80px;
	margin-left: 25px;
	color: white;
	box-shadow: 1px 1px 1px 1px lightgray;
}

.sub-menu-title {
	margin-left: 40px;
	line-height: 40px;
}

.sub-menu {
	margin-left: 60px;
	line-height: 40px;
}

/*댓글*/
#taskReply{
	margin-left: 64px;
}

</style>
</head>
<body>
	<div id="header-layout">
		<jsp:include page="../../common/header.jsp" />

	</div>
	<div id="container">
		<div id="sidebar-layout">
			<div id="main-sidebar">
				<button type="button" class="new-project">새 프로젝트</button>
				<br> <br>
				<div class="sub-menu-title">
					<i class="fi fi-rr-menu-burger"></i>&nbsp;<b>프로젝트</b><br>
				</div>
				<div class="sub-menu">
					<i class="fi fi-rr-apps"></i>&nbsp;
					<a href="#" class="">&nbsp;전체</a>
					<br>
				</div>
				<div class="sub-menu">
					<i class="fi fi-rr-check"></i>&nbsp;
					<a href="project.no-read" class="">&nbsp;읽지않음</a>
					<br>
				</div>
				<hr>
				<div class="sub-menu">
					&nbsp;
					<a href="" class="">&nbsp;내 일정</a>
					<br>
				</div>
			</div>
		</div>

		<div id="content-layout">
			<div class="project-info">
				<div class="info-left">
					<div class="project-title-area">
						<h2 class="project-title">2022 공공방역정보 개발</h2>
						&nbsp;&nbsp;&nbsp;
						<span class="title-label">
							<i>진행중</i>
						</span>
					</div>

					<ul class="project-desc-list">
						<li><b>프로젝트 기간</b> <span class="text">2022-03-10 - 2022-03-31</span></li>
						<li><b>프로젝트 개요</b>
							<div class="desc-wrapper">
								<p>코로나19로 인한 방역 상세정보가 매일 어쩌구저쩌구에 따라서 공공 방역정보를 매일 갱신 어쩌구저쩌구 개발하고자 함</p>
							</div></li>
						<li><b>프로젝트 매니저(PM)</b> <span class="text">김팀장</span></li>
						<li><b>프로젝트 인원</b> <span></span></li>
					</ul>
				</div>
				<div class="info-right"></div>
			</div>
			<hr>
			<div class="project-task">
				<div class="section-title-wrapper">
					<h3 class="section-title">업무작성하기</h3>
				</div>
				<input type="hidden" name="type">
				<input type="hidden" name="taskWriter">
				<ul class="project-desc-list">
					<li><input type="text" name="taskTitle" class="project-write-field-title"></li>
					<hr>
					<li><b>진행상태</b>
						<div class="task-search-area">
							<label class="box-radio-input">
								<input type="radio" name="taskStatus" value="day" checked>
								<span>요청</span>
							</label>
							<label class="box-radio-input">
								<input type="radio" name="taskStatus" value="format" onclick="return(false);">
								<span>진행</span>
							</label>
							<label class="box-radio-input">
								<input type="radio" name="taskStatus" value="status" onclick="return(false);">
								<span>완료</span>
							</label>
						</div></li>
					<hr>

					<li><b>담당자</b> <input type="text" name="taskHandler" class="project-write-field"></li>
					<hr>
					<li><b>요청일자</b> <input type="date" name="enrollDate" class="project-write-date"></li>
					<hr>
					<li><b>요청기한</b> <input type="date" name="modifyDate" class="project-write-date"></li>
					<hr>
					<li><b>파일첨부</b>
						<ul id="fileList" onclick="attachFile()"></ul></li>
					<hr>
					<li><textarea class="project-write-field-content" placeholder="내용을 입력하세요" required></textarea></li>
					<hr>
				</ul>
			</div>
			
			<div>
				<table id="taskReply">
					<tr>
						<td width="70px">프로필사진</td>
						<td width="100px">작성자</td>
						<td width="800px">댓글내용</td>
						<td width="70px">댓글시간</td>
					</tr>
					<tr>
						<td>프로필사진</td>
						<td>작성자</td>
						<td>댓글내용</td>
						<td>댓글시간</td>
					</tr>
					<tr>
						<td>프로필사진</td>
						<td>작성자</td>
						<td>댓글내용</td>
						<td>댓글시간</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<script>
		function attachFile() {
			var createFile = document.createElement("input");
			createFile.type = "file";
			createFile.style.display = "none";

			createFile.onchange = function() {
				var html = '<li>' + this.files[0].name + '</li>'
				$('#fileList').append(html);
			};

			document.body.appendChild(createFile);
			createFile.click();
		}
	</script>

</body>
</html>