<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>공지사항</title>
      
<jsp:include page="../include/css.jsp" />
    
  </head>
  <body>  
 
<jsp:include page="../include/header.jsp" />
 
<jsp:include page="../include/menu.jsp" /> 

  <!-- product category -->
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
		  <div class="container">
			<div class="row">
				<h2 style="margin:20px 15px;">공지사항 보기 </h2>
				<div class="col-md-9">
	<div class="form-group">
			<label>No</label><input class="form-control" name='noticeNo'
			value="<c:out value='${notice.noticeNo}'/>" readonly="readonly">
			</div>
			
			<div class="form-group">
			<label>Title</label><input class="form-control" name='noticeTit'
			value="<c:out value='${notice.noticeTit}'/>" readonly="readonly">
			</div>
			
			<div class="form-group">
			<label>Text area</label>
			<textarea rows="3" class="form-control" name='noticeCon'
			readonly="readonly"><c:out value="${notice.noticeCon}"/></textarea>
			</div>
			
			<div class="form-group">
			<label>Writer</label><input class="form-control" name='noticeWri'
			value="<c:out value='${notice.noticeWri}'/>" readonly="readonly">
			</div>

			<button data-oper='modify' class="btn btn-default">수정</button>
			<button data-oper='list' class="btn btn-info">목록</button>
			
			<!-- 264p -->
			<form id='operForm' action="/notice/modify" method="get">
				<input type="hidden" id='noticeNo' name='noticeNo' value='<c:out value="${notice.noticeNo}"/>'>
			<!-- 317p -->
				<input type="hidden" name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
				<input type="hidden" name='amount' value='<c:out value="${cri.amount}"/>'>
			<!-- 345 -->
				<input type="hidden" name='keyword' value='<c:out value="${cri.keyword}"/>'>
				<input type="hidden" name='type' value='<c:out value="${cri.type}"/>'>
			</form>
				  
		
				</div>
			</div>
		</div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
          <aside class="aa-sidebar">
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>고객센터</h3>
              <ul class="aa-catg-nav">
				<li><a href="/notice/list" class="active">공지사항</a></li>
                <li><a href="/faq/list">FAQ</a></li>
				<li><a href="/question">문의하기</a></li>
              </ul>
            </div>
            <!-- single sidebar -->
          </aside>
        </div>
       
      </div>
    </div>
  </section>
  <!-- / product category -->

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="/resources/js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="/resources/js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="/resources/js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="/resources/js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="/resources/js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="/resources/js/slick.js"></script>




<script type="text/javascript">
	$(document).ready(function(){
		
		var operForm = $("#operForm");
		
		$("button[data-oper='modify']").on("click", function(e){
			operForm.attr("action","/notice/modify").submit();
		});
		
		$("button[data-oper='list']").on("click", function(e){
			operForm.find("#noticeNo").remove(); 
			operForm.attr("action","/notice/list");
			operForm.submit();
		});
	});
</script>
   <jsp:include page="../include/footer.jsp" />



  </body>
</html>