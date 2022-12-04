   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="/common/header.jsp"%>
     <script src="js/detailMap.js"></script>
  
  <h3 id="aptName"></h3><button type="button" id = "aBtn" class="btn btn-primary">찜하기 </button>
  <c:if test="${not empty sessionScope.loginInfo}">
  	<script>
  			fetch("attention?act=checkAtt&aptCode=${requestScope.houseDeal.aptCode}")
  			.then((response)=>response.json())
  			.then((data) => {
  				if (data) {
  					var element = document.getElementById("aBtn");
					element.setAttribute("disabled","");
  				} 
  			})
  		
  			</script>
		</c:if>
<table class="table">
  <thead>
    <tr>
      <th scope="col">거래금액(만원)</th>
      <th scope="col">거래일자</th>
      <th scope="col">면적(m2)</th>
      <th scope="col">층수</th>
    </tr>
  </thead>
  <tbody>
    <tr>
	  <script>
	 
	  fetch("house?act=getAptName&aptCode=${houseDeal.aptCode}")
		.then((response)=> response.json())
		.then((data) => {
			let aptName = data.apartmentName;
			console.log(aptName);
			document.getElementById("aptName").innerText= aptName;
			detailMarker(data.lat, data.lng, data.apartmentName);  		
		});
	  </script>
      <td>${requestScope.houseDeal.dealAmount } </td>
      <td>${requestScope.houseDeal.dealYear }.${requestScope.houseDeal.dealMonth }.${requestScope.houseDeal.dealDay }</td>
      <td>${requestScope.houseDeal.area }</td>
      <td>${requestScope.houseDeal.floor }</td>
    </tr>
  </tbody>
</table>
   <div id="map" style="width: 500px; height: 350px; position: relative"></div>
  <footer class="pt-4 my-md-5 pt-md-5 border-top">
        <p style="color: gainsboro">Made by Kim Ji Hee, Son Min Hyeok</p>
      </footer>
    </div>
  </body>
  <script>
  	document.getElementById("aBtn").addEventListener("click",function() {
  		<c:if test="${empty sessionScope.loginInfo}">
  			alert("로그인이 필요합니다.");
  		</c:if>
  		<c:if test="${not empty sessionScope.loginInfo}">
  			fetch("attention?act=checkAtt&aptCode=${requestScope.houseDeal.aptCode}")
  			.then((response)=>response.json())
  			.then((data) => {
  				console.log(data);
  				if (!data) {
  					location.href="attention?act=addAttention&aptCode=${requestScope.houseDeal.aptCode}";
  				} else {
					alert("이미 찜한 상품입니다.")
  				} 
  			})
  		
		</c:if>
  	})
  	

  </script>
  