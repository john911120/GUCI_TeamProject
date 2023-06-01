<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">의류 쇼핑몰 - 게시글 작성</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				게시글 작성
	

			<!-- /.panel-heading -->
			<div class="panel-body">
			<form action="/notice/register" method="post" role="form">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<div class="form-group">
					<label>제목</label>
					<input class="form-control" name='noticeTit'>
				</div>
				
				<div class="form-group">
					<label>공지 내용</label>
					<textarea class="form-control" rows="3" name='noticeCon' ></textarea>
				</div>
				
				<div class="form-group">
					<label>작성자</label>
					<input class="form-control" name="noticeWri" 
					value='<sec:authentication property="principal.username"/>' readonly="readonly" >
				</div>
				<button type="submit" class="btn btn-default">Submit Button</button>
				<button type="reset" class="btn btn-default">Reset Button</button>
			</form>
		</div>
	</div>
	</div>
	</div>
	</div>
		<%@ include file="../include/footer.jsp"%>