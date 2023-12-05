<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand  navbar-white bg-white">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		목록
  		</button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">의류전체</a>
        <a class="dropdown-item" href="#">라이프스타일</a>
        <a class="dropdown-item" href="./sneakers_ad.jsp">스니커즈</a>
        <a class="dropdown-item" href="./running_ad.jsp">러닝화</a>
        
        
     </div>
	</div>
    
    <div>
        <img src="../image/103.jpg" class="img-fluid" alt="main_image">
    </div>
    
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./index.jsp">홈페이지</a>
            <a class="navbar-brand" href="./index.jsp">이벤트</a>
            <a class="navbar-brand" href="./place_ad.jsp">매장찾기</a>
            <a class="navbar-brand" href="../member/member_view.jsp">회원 보기</a>
            <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>            
            <a class="navbar-brand" href="../index.jsp">일반모드</a>

		</div>
	</div>
</nav>