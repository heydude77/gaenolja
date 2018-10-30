<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<div class="dropdown1">
	<button class="btn btn-light dropdown-toggle" type="button"
		id="dropdownMenuButton1" data-toggle="dropdown" aria-haspopup="true">
		<span>1 </span>실시간 순위 <span class="badge badge-pill badge-success">↑</span>
	</button>
	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
		<a class="dropdown-item"> <span>2 </span>실시간 순위 <span
			class="badge badge-pill badge-success">↑</span>
		</a> <a class="dropdown-item"> <span>3 </span>실시간 순위 <span
			class="badge badge-pill badge-danger">↓</span>
		</a>
	</div>
</div>
<hr />
<div class="form-group">
	<div class="small-input" style="float: left; width: 70%;">
		<input type="text" name="mb_id" id="mb_id"
			class="form-control input-sm" placeholder="아이디" tabindex="21"
			autocomplete="off"> <input type="password" name="mb_password"
			id="mb_password" class="form-control input-sm" placeholder="비밀번호"
			tabindex="22">
	</div>
	<div style="float: left; width: 30%; padding-left: 0px;">
		<div class="form-group">
			<button type="submit" class="btn btn-brex-2nd btn-block en"
				style="height: 70px;" tabindex="23" id="login">로그인</button>
		</div>
	</div>
</div>
<hr />
<div class="card">
	<img class="card-img-top"
		src="${pageContext.servletContext.contextPath }/image/weather.png"
		style="width: 80%; height: 10%;">
	<div class="card-body">
		<p class="card-text">오늘은 산책하기 좋은 날씨 입니다~</p>
		

	</div>
</div>
<hr />

<li class="list-group-item list-group-item-success">현재 접속자</li>
<div style="height: 150px; overflow-y: scroll;" id="connectList">
	<ul class="list-group">
		<li class="list-group-item">접속자 1</li>
		<li class="list-group-item">접속자 2</li>
		<li class="list-group-item">접속자 3</li>
		<li class="list-group-item">접속자 4</li>
		<li class="list-group-item">접속자 5</li>
	</ul>

</div>

<script>

	  document.getElementById("login").onclick = function(){
		console.log("function Strar !!");
		var apiURI = "http://api.openweathermap.org/data/2.5/weather";
		var param = {
				"q":"익산시",
				"units":"metric",
				"APPID":"221d0de36835fe0cf4b1d4b196c711bb"
		};

		$.get(apiURI, param, function(rst) { 
			console.log(rst);
			console.log("구름  : "+ (rst.clouds.all) +"%" )
			console.log("도시:"+rst.name);
			console.log("바람   : "+ rst.wind.speed );
			console.log("현재습도 : "+ rst.main.humidity);
			console.log("현재온도 : "+ rst.main.temp);
			console.log("최저온도 : "+ rst.main.temp_min);
			console.log("최고온도 : "+ rst.main.temp_max);
		});
		
		
	};
	 


</script>
