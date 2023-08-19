<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>내 카드 조회</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="/css/card.css">
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
</head>

<body>
<!-- 헤더위치 -->
<%@ include file="/WEB-INF/views/comm/header.jsp"%>

<main>
    <!-- 사이드바와 컨텐츠를 감싸는 flex container -->
    <div class="flex-card-container">

        <!-- 사이드바 -->
        <div class="d-flex flex-column flex-shrink-0 p-3 sidebar" style="width: 280px;">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
              <svg class="bi pe-none me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
              <span class="fs-4">카드조회</span>
            </a>
            <hr>

            <!-- 카드조회 사이드바 내용 -->
            <div class="button-container">
              <button class="card-button active" id="card1">
                <svg class="icon" width="16" height="16"></svg>
                하나카드 조회
              </button>
              <button class="card-button" id="card2">
                <svg class="icon" width="16" height="16"></svg>
                다른금융 조회
              </button>
            </div>

            <hr>
            <!--
            <div class="dropdown">
              <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                <strong>mdo</strong>
              </a>
              <ul class="dropdown-menu text-small shadow">
                <li><a class="dropdown-item" href="#">New project...</a></li>
                <li><a class="dropdown-item" href="#">Settings</a></li>
                <li><a class="dropdown-item" href="#">Profile</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Sign out</a></li>
              </ul>
            </div>
            -->
        </div>


        <!-- 사이드바 오른쪽 컨텐츠를 감싸는 flex container -->
        <div class="content-container">
            <!-- 사각형 -->
            <div class="rectangle">
                <div class="selectCardCompany">하나카드 조회</div>
            </div>

            <!-- 카드 보유 정보 -->
            <!-- 카드 개수 나중에 값 넘겨주기 -->
            <div class="myCardCount">정주연 고객님 총 3개의 카드를 보유중입니다.</div>


            <!-- 보유카드 슬라이드 -->
            <div id="carouselExampleIndicators" class="carousel slide">
              <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
              </div>
              <div class="carousel-inner">
                <div class="carousel-item active">
                <a href="/card/selectCardDetail">
                  <img src="/img/youngHanaCard.png" class="d-block w-100" alt="...">
                </a>
                </div>
                <div class="carousel-item">
                  <img src="/img/vivaECard.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="/img/travellogCard.gif" class="d-block w-100" alt="...">
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>

            <!-- 보유카드명 -->
            <div class="myCardName">Young Hana+ 체크카드</div>


        </div>
    </div>

</main>

<!-- 푸터위치 -->
<%@ include file="/WEB-INF/views/comm/footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<!-- 슬라이드 이벤트 핸들링 스크립트 -->
<script>
    // 카드 이름들을 배열에 저장
    const cardNames = ['Young Hana+ 체크카드', 'VIVA E 체크카드', '트래블로그 체크카드'];

    // Carousel의 이벤트 리스너를 추가
    $('#carouselExampleIndicators').on('slid.bs.carousel', function () {
        // 현재 active 상태의 슬라이드의 인덱스를 가져옵니다.
        const currentIndex = $('#carouselExampleIndicators .carousel-item.active').index();

        // 현재 인덱스에 해당하는 카드 이름을 가져와서 myCardName의 텍스트를 업데이트합니다.
        $('.myCardName').text(cardNames[currentIndex]);
    });
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
