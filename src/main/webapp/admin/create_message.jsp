<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<title>공연 정보 사이트</title> 
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
<link rel="stylesheet" href="../fonts/icomoon/style.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/magnific-popup.css">
<link rel="stylesheet" href="../css/jquery-ui.css">
<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../css/aos.css">
<link rel="stylesheet" href="../css/style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
    
<script type="text/javascript">
  $(function(){ 
  
  });
</script>

</head> 
<body>
<DIV class='container' style='width: 90%;'>
<jsp:include page="/menu/top.jsp" flush='false' />
<DIV class='content'>
  <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
            <a href='${pageContext.request.contextPath}/index.jsp' >Home</a><span class="mx-2 mb-0">/</span>
            <strong class="text-black">관리자 생성</strong>
          </div>
        </div>
      </div>
    </div>
<DIV class='row'>알림</DIV>
  
  <DIV class='col-md-12 text-center'>
    
    <c:choose>
      <c:when test="${param.sw_e == 'a_email'}">
      <span class="icon-error display-3" ></span>
        <p>관리자 EMAIL이 중복됩니다.</p>
        <p>다시한번 시도해주세요.</p> <br>
        <button type='button' onclick='history.back()'>다시 시도</button>
        <button type='button' onclick="location.href='${pageContext.request.contextPath}'">취소</button>
      </c:when>
      <c:when test="${param.sw_n == 'a_nickname'}">
      <span class="icon-error display-3" ></span>
        <p>관리자 닉네임이 중복됩니다.</p>
        <p>다시한번 시도해주세요.</p> <br>
        <button type='button' onclick='history.back()'>다시 시도</button>
        <button type='button' onclick="location.href='${pageContext.request.contextPath}'">취소</button>
      </c:when>
      <c:when test="${param.sw == 'create'}">
        <c:choose>
          <c:when test="${param.count == 0 }">
          <span class="icon-error display-3" ></span>
            <p>관리자 생성에 실패했습니다.</p>
            <p>다시한번 시도해주세요.</p> <br>
            <button type='button' onclick='history.back()'>다시 시도</button>
            <button type='button' onclick="location.href='${pageContext.request.contextPath}'">취소</button>
          </c:when>
          <c:when test="${param.count == 1 }">
          <span class="icon-check_circle display-3 text-success"></span>
            <p>관리자 생성에 성공했습니다.</p><br>
            <button type='button' onclick="location.href='${pageContext.request.contextPath}/index.do'">확인</button>
          </c:when>
        </c:choose>
      </c:when>
    </c:choose>    
  </DIV>

</DIV> <!-- content END -->
<jsp:include page="/menu/bottom.jsp" flush='false' />
</DIV> <!-- container END -->.
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/jquery.magnific-popup.min.js"></script>
    <script src="../js/aos.js"></script>
    <script src="../js/main.js"></script>
</body>

</html> 

