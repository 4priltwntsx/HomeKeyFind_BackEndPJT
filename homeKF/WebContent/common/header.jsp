<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
    <meta name="generator" content="Hugo 0.101.0" />
    <title>홈키파</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/pricing/" />
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5cf74bfffafe691f545e91665afcc8c2&libraries=services"
    ></script>
    
    
    <script>
		<c:if test="${!empty msg}">
			alert("${msg}");
		</c:if>
	</script>
    
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, 0.1);
        border: solid rgba(0, 0, 0, 0.15);
        border-width: 1px 0;
        box-shadow: inset 0 0.5em 1.5em rgba(0, 0, 0, 0.1),
          inset 0 0.125em 0.5em rgba(0, 0, 0, 0.15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -0.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="./css/pricing.css" rel="stylesheet" />
  </head>
  <body>
    <!-- <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <symbol id="check" viewBox="0 0 16 16">
        <title>Check</title>
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
    </svg> -->

    <div class="container py-3">


<header>
    <!-- 상단 네비게이션 바 -->
    <div
        class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
        <!-- <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="40"
              height="32"
              class="me-2"
              viewBox="0 0 118 94"
              role="img"
            >
              <title>Bootstrap</title>
              <path
                fill-rule="evenodd"
                clip-rule="evenodd"
                d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"
                fill="currentColor"
              ></path>
            </svg>
          </a> -->
         <span class="fs-4"  ><a href="${root }/index.jsp" class="text-decoration-none">홈키파</a></span>
        <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
            <c:if test="${empty sessionScope.loginInfo}">
                <a class="me-3 py-2 text-dark text-decoration-none" href="${root }/user?act=loginForm" >로그인</a>
                <a class="me-3 py-2 text-dark text-decoration-none" href="${root }/user?act=joinForm" >회원가입</a>
            </c:if>

            <c:if test="${not empty sessionScope.loginInfo }">
                <b>${loginInfo.name}</b>님 반갑습니당^_^
                <a href="${root }/user?act=mypage&userId="${loginInfo.id }>[마이페이지] </a>
            <a href="${root }/user?act=logout">[로그아웃]</a>
            </c:if>
        </nav>
    </div>

    <!-- 상단 메인 -->
    <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
        <h5 class="display-6 fw-normal">전국 아파트 실거래 정보 검색서비스</h5>
        <p class="fs-6 text-muted">
            동별, 아파트별 거래 가격을 확인해보세요.<br />키워드 검색을 통해 주변의 인프라 시설도 검색해보세요 !!
        </p>
        <p class="fs-6 text-muted"></p>
    </div>
</header>