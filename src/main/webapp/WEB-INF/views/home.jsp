<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/home.css">
    <title>HanaOnePay Main</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<!-- 헤더위치 -->
<%@ include file="/WEB-INF/views/comm/header.jsp"%>

<main>

<!-- 캐러셀 슬라이드 -->
<div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/hanaMain1.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/img/hanaMain2.png" class="d-block w-100" alt="...">
    </div>s
    <div class="carousel-item">
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
<img src="/img/footer.png">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>