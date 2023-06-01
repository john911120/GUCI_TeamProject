<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">게시글 - 읽기</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				게시글읽기
	

			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="form-group">
					<label>글 번호</label>
					<input class="form-control" name='noticeNo' value='<c:out value="${notice.noticeNo}"/>' readonly="readonly"/>
				</div>
				<div class="form-group">
					<label>제목</label>
					<input class="form-control" name='noticeTit' value='<c:out value="${notice.noticeTit}"/>' readonly="readonly"/>
				</div>
				<div class="form-group">
					<label>글 내용</label>
					<textarea class="form-control" rows="3" name='noticeCon' readonly="readonly">
						<c:out value="${notice.noticeCon}"/>
					</textarea>
				</div>
				<div class="form-group">
					<label>작성자</label>
					<input class="form-control" name='noticeWri' value='<c:out value="${notice.noticeWri}"/>' readonly="readonly"/>
				</div>
				
						<sec:authentication property="principal" var="pinfo"/>
						<sec:authorize access="isAuthenticated()">
							<c:if test="${pinfo.username eq notice.writer}">
								<button data-oper='modify' class="btn btn-default">Modify</button>
							</c:if>
						</sec:authorize>
						
<%-- 				<button data-oper='modify' class="btn btn-default" onclick="location.href='/notice/modify?bno=<c:out value="${notice.bno}"/>'">Modify</button> --%>
				<button data-oper='list' class="btn btn-info" onclick="location.href='/notice/list'">List</button>
				
				<form id='operForm' action="/notice/modify" method="get">
					<input type='hidden' id='bno' name='bno' value='<c:out value="${notice.noticeNo}"/>'>
					<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
					<input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
					<!-- P.345 추가 -->
					<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
					<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
				</form>
		</div>
	</div>
	</div>
	</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			var operForm = $("#operForm");
			
			$("button[data-oper='modify']").on("click", function(e){
				operForm.attr("action", "/notice/modify").submit();
			});
			
			$("button[data-oper='list']").on("click", function(e){
				operForm.find("#bno").remove();
				operForm.attr("action","/notice/list")
				operForm.submit();
			});
		});
	</script>
		<%@ include file="../include/footer.jsp"%>