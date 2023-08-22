<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/home.css">
    <title>HanaOnePay Main</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
     <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
     />
</head>
<body>
<!-- 헤더위치 -->
<%@ include file="/WEB-INF/views/comm/header.jsp"%>

<main>

<!-- 캐러셀 슬라이드 -->
<div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="3000">
        <div class="flex-card-container">
        <div class="mainOnePay">
            <div class="mainText animate__animated animate__fadeInUp">
                하나로 연결된 </br>
                모두의 원페이
            </div>
            <div class="subText animate__animated animate__fadeInUp">
                한번의 카드 등록으로
                편리하게 즐기는 모두의 결제 생활!
            </div>
        </div>
            <img class="mainCardImage animate__animated animate__fadeInUp" src="/img/mainCard.png">
        </div>

    </div>
    <div class="carousel-item" data-bs-interval="3000">
        <div class="flex-card-container2">
                <div class="mainOnePay2">
                    <div class="mainText2 animate__animated animate__fadeIn">
                        여행도 </br>
                        하나로 원페이
                    </div>
                    <div class="subText2 animate__animated animate__fadeIn">
                        해외여행도
                        하나카드 하나면 돼!
                    </div>
                </div>
                    <img class="mainCardImage2 animate__animated animate__fadeIn" src="/img/mainCard.png">

                </div>
    </div>

    <div class="carousel-item" data-bs-interval="3000">
      <img src="/img/hanaMain2.png" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- 메뉴바 -->
<div class="menu-bar">
    <a href="#" class="menu-item">
        <div class="menu-content">
            <img src="/img/menu1.png" alt="하나머니조회">
            하나머니조회
        </div>
    </a>
    <a href="#" class="menu-item">
        <div class="menu-content">
            <img src="/img/menu2.png" alt="계좌조회">
            계좌조회
        </div>
    </a>
    <a href="#" class="menu-item">
        <div class="menu-content">
            <img src="/img/menu3.png" alt="카드조회">
            카드조회
        </div>
    </a>
    <a href="#" class="menu-item">
        <div class="menu-content">
            <img src="/img/menu4.png" alt="라이프">
            라이프
        </div>
    </a>
</div>





</main>
<!-- 푸터위치
<%@ include file="/WEB-INF/views/comm/footer.jsp"%>
-->
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<img src="/img/footer.png">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<!-- 기존 코드... -->

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</script>
</body>
</html>


</body>
</html>