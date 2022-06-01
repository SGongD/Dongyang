<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/mainpage.css">
    <title>메인페이지</title>
</head>
<body>
	<header>
		<jsp:include page="header.jsp" flush="false"/>
	</header>
    <div class="container">
        <div class="main_bg1">
            <div class="main_img1"><img src="img/cat_main.png"></div>
            <div class="it-wrap">
                <div class="it-img">
                    <img src="img/square.png">
                </div>
                <div class="it-text">
                    <p class="mm">Pit - a - pet</p>
                    <div class="pd"></div>
                    <p>"반려 동물과 함께 더 오랜 시간을 함께 <br>하고 싶다. 반려동을의 질병으로 인한 이별이 <br>
                    빨리 오지 않았으면 좋겠다"고 생각하여 <br>만든 반려동물 헬스 케어 서비스입니다.</p>
                    <div class="pd"></div>
                    <p>모든 반려 동물이 아이와 더욱 오래지내기를</p>
                </div>
            </div>
        </div>
        <div class="main_bg2">
            <div class="main_img2"><img src="img/cat_sub.png"></div>
            <div class="tt_wrap">
                <div class="tt1_wrap">
                    <!-- 메인 문구 -->
                    <p class="mm">반려동물의 심장 박동 수 측정</p>
                    <div class="pd"></div>
                    <p>반려동물의 심장 박동을 측정하여 심장병을<br>
                    예방하고 초기에 발견할 수 있습니다.<br>
                    특히 반려동물에게서 높은 확률로 발병하는<br>
                    심근 비대증은 심장박동수를 수시로 체크하는<br>
                    것만으로도 충분히 예방할 수 있습니다.</p>
                </div>
                <div class="tt2_wrap">
                    <!-- 메인 문구 -->
                    <p class="mm">반려동물의 건강을 기록</p>
                    <div class="pd"></div>
                    <p>매일 음수량과 식사량, 투약 기록,<br>
                    이상 증상을 기록하여 체계적인 관리를 시작해 보세요.<br>
                    만성 질병에 걸려도 적절한 관리를 통해서<br>
                    아이들의 삶의 실을 높일 수 있습니다.</p>
                </div>
            </div>
        </div>
        
    </div>
    <aside>
    	<jsp:include page="sidebar.jsp" flush="false"/>
    </aside>
    <footer>
    	<jsp:include page="footer.jsp" flush="false"/>
	</footer>
</body>
</html>