<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>


<%! String greeting = "NIKE 베스트셀러";
	String tagline = "하단 페이지 : 확인";%>


<div class="container">
	<div class="jumbotron">
	   <div class="container">
		<h3 class="display-4">
		    <%=greeting%>
            		</h3>
	   </div>
	</div>
    
    <div class="container">
       	     <div class="row" align="center">
                <img src="image/11.jpg" class="card-img" alt="...">
		<%
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>


    <div class="col-md-3">
                       <div class="card bg-dark text-white">
                    	<img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    	<div class="card-img-overlay">
                    	<h5 class="card-title">스니커즈 이벤트</h5>
                    	<p class="card-text">출처 : 나이키</p>
                	      </div>
	   </div>
		<h3><%=rs.getString("p_name")%></h3>
		<p><%=rs.getString("p_description")%>
		<p><%=rs.getString("p_UnitPrice")%>원
		<p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
        </div>
        <%
			} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	%>
	</div>
	<hr>
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


  