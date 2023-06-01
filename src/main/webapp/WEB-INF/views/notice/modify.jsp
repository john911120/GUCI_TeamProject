<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ include file="../include/header.jsp"%>
<!--  260 -->
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">의류 쇼핑몰 - 게시글 수정</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				공지사항 수정


				<!-- /.panel-heading -->
				<div class="panel-body">
					<form role="form" action="/notice/modify" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}">
						<!--  p.319 추가 -->
						<!--  p.346 추가 -->
						<input type='hidden' name='pageNum'
							value='<c:out value="${cri.pageNum}"/>'> <input
							type='hidden' name='amount'
							value='<c:out value="${cri.amount}"/>'> <input
							type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
						<input type='hidden' name='keyword'
							value='<c:out value="${cri.keyword}"/>'>

						<div class="form-group">
							<label>게시글번호</label> <input class="form-control" name='noticeNo'
								value='<c:out value="${notice.noticeNo}"/>' readonly="readonly" />
						</div>
						<div class="form-group">
							<label>공지 제목</label> <input class="form-control" name='noticeTit'
								value='<c:out value="${notice.notice.Tit}"/>' />
						</div>
						<div class="form-group">
							<label>공지 내용</label>
							<textarea class="form-control" rows="3" name='noticeCon'>
						<c:out value="${notice.noticeCon}" />
					</textarea>
						</div>
						<div class="form-group">
							<label>작성자</label> <input class="form-control" name='noticeWri'
								value='<c:out value="${notice.noticeWri}"/>' readonly="readonly" />
						</div>
						<div class="form-group">
							<label>등록일</label> <input class="form-control" name='regDate'
								value='<fmt:formatDate pattern="yyyy/MM/dd" value="${notice.noticedate }"/>'
								readonly="readonly" />
						</div>

						<!--<button type="submit" data-oper='modify' class="btn btn-default">Modify</button> -->
						<!--<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button> -->
						<sec:authentication property="principal" var="pinfo" />

						<sec:authorize access="isAuthenticated()">

							<c:if test="${pinfo.username eq notice.writer}">

								<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
								<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
							</c:if>
						</sec:authorize>
						<button type="submit" data-oper='list' class="btn btn-info">List</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Total Result 262, 266 chap13  -->
<!-- Total Result 319, 321 chap14  -->
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form");

			$('button').on("click", function(e){
				e.preventDefault();
				
				var operation = $(this).data("oper");
				
				console.log(operation);
				
				if(operation === 'remove'){
					formObj.attr("action", "/notice/remove");
				} else if(operation === 'list'){
					// move to list
					// p347 추가 코드 작성
					formObj.attr("action", "/notice/list").attr("method","get");
					var pageNumTag = $("input[name='pageNum']").clone();
					var amountTag = $("input[name='amount']").clone();
					var keywordTag = $("input[name='keyword']").clone();
					var typeTag = $("input[name='type']").clone();
					
					formObj.empty();
					formObj.append(pageNumTag);
					formObj.append(amountTag);
					formObj.append(keywordTag);
					formObj.append(typeTag);
				}
				formObj.submit();
			});
		});
	</script>
<%@ include file="../include/footer.jsp"%>