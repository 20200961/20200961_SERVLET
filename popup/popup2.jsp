<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
    <style>
        body {
            
            background-color: white;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        h4 {
            text-align: center;
            color: black;
        }

        .image-container {
            text-align: center;
            margin-top: 20px;
        }

        .image-container img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .btn-block {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
    </style>
</head>
<body>
    <div class="container">
        <h4>안녕하세요 나이키 온라인 쇼핑몰입니다!</h4>
        <div class="image-container">
            <img src="../image/1_2.jpg" class="card-img" alt="Nike Image">
        </div>
        <button class="btn-block" onclick="location.href='https://www.nike.com/kr?utm_source=Google&utm_medium=PS&utm_campaign=365DIGITAL_Google_SA_Keyword_Main_PC&cp=72646825390_search_&gad_source=1&gclid=Cj0KCQiAgqGrBhDtARIsAM5s0_m4g2F2xbY1sFiSLzHom_mzBEsbZhOsn-APMvvujnX2vyXKcQLVOgYaAiC1EALw_wcB'" >공식 홈페이지</button>
    </div>
</body>
</html>