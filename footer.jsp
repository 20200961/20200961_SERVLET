<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="example.*" %>
<%@ page contentType="text/html; charset=utf-8"%>	


<footer class="container">
		<p>&copy; 쇼핑몰 대표 : 공준석, 고유번호 : 20200961, 연락처 : kmch009@sungkyul.ac.kr<br> 


<%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>
	</footer>

