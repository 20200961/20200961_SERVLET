<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%! String greeting = "NIKE 베스트셀러";
	String tagline = "하단 페이지 : 확인";%>

 <%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
    <div class="card bg-dark text-white">
    <img src="../image/11.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">스니커즈 이벤트</h5>
    <p class="card-text">출처 : 나이키</p>
  </div>

<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        러닝 스타일링
      </a>
      <a href="#" class="list-group-item list-group-item-action">나이키 스트럭처 25</a>
    <a href="#" class="list-group-item list-group-item-action">프리미엄</a>
    <a href="#" class="list-group-item list-group-item-action">나이키 테크</a>
    <a href="#" class="list-group-item list-group-item-action">에어 조던</a>
    </div>
   

<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<div class="card bg-dark text-white">
                        <img src="../image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">나이키 사진 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div>
	    <h3><%=product.getPname()%></h3> <!-- 상품 이름 -->
	    <p><%=product.getDescription()%> <!-- 상품 정보 -->
	    <p><%=product.getUnitPrice()%>원 <!-- 상품 가격 -->
        <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
		</div>
        <%
            }
        %>
		<hr>
	</div>

  