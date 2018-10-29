<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form
	action="${pageContext.servletContext.contextPath }/together/selectboard.do"
	method="post">
	<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          지역을 선택해주세요
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
					<a onclick="area(강남구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=강남구" class="badge badge-light" style="opacity: 0.5;">강남구</a> 
					<a onclick="area(강동구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=강동구" class="badge badge-light" style="opacity: 0.5;">강동구</a>
					<a onclick="area(강북구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=강북구"	class="badge badge-light" style="opacity: 0.5;">강북구</a>
					<a onclick="area(강서구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=강서구" class="badge badge-light" style="opacity: 0.5;">강서구</a>
					<a onclick="area(관악구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=관악구"	class="badge badge-light" style="opacity: 0.5;">관악구</a>
					<a onclick="area(광진구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=광진구" class="badge badge-light" style="opacity: 0.5;">광진구</a>
					<a onclick="area(구로구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=구로구" class="badge badge-light" style="opacity: 0.5;">구로구</a>
					<a onclick="area(금천구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=금천구" class="badge badge-light" style="opacity: 0.5;">금천구</a>
					<a onclick="area(노원구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=노원구" class="badge badge-light" style="opacity: 0.5;">노원구</a>
					<a onclick="area(도봉구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=도봉구" class="badge badge-light" style="opacity: 0.5;">도봉구</a>
					<a onclick="area(동대문구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=동대문구" class="badge badge-light" style="opacity: 0.5;">동대문구</a>
					<a onclick="area(동작구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=동작구" class="badge badge-light" style="opacity: 0.5;">동작구</a>
					<a onclick="area(마포구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=마포구" class="badge badge-light" style="opacity: 0.5;">마포구</a>
					<a onclick="area(서대문구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=서대문구" class="badge badge-light" style="opacity: 0.5;">서대문구</a>
					<a onclick="area(서초구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=서초구" class="badge badge-light" style="opacity: 0.5;">서초구</a>
					<a onclick="area(성동구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=성동구" class="badge badge-light" style="opacity: 0.5;">성동구</a>
					<a onclick="area(성북구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=성북구" class="badge badge-light" style="opacity: 0.5;">성북구</a>
					<a onclick="area(송파구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=송파구" class="badge badge-light" style="opacity: 0.5;">송파구</a>
					<a onclick="area(양천구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=양천구" class="badge badge-light" style="opacity: 0.5;">양천구</a>
					<a onclick="area(영등포구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=영등포구" class="badge badge-light" style="opacity: 0.5;">영등포구</a>
					<a onclick="area(용산구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=용산구" class="badge badge-light" style="opacity: 0.5;">용산구</a>
					<a onclick="area(은평구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=은평구" class="badge badge-light" style="opacity: 0.5;">은평구</a>
					<a onclick="area(종로구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=종로구" class="badge badge-light" style="opacity: 0.5;">종로구</a>
					<a onclick="area(중구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=중구" class="badge badge-light" style="opacity: 0.5;">중구</a>
					<a onclick="area(중량구);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=중량구" class="badge badge-light" style="opacity: 0.5;">중량구</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div id="map" style="width: 100%; height: 300px;"></div>
	
	<table class="table table-hover">
  		<thead>
	     <tr>
    	  <th scope="col" style="width: 3%"><small>NO</small></th>
     	  <th scope="col" style="width: 10%"><small>지역</small></th>
    	  <th scope="col" style="width: 35%"><small>제목</small></th>
      	  <th scope="col" style="width: 20%"><small>작성자</small></th>
     	  <th scope="col" style="width: 10%"><small>날짜</small></th>
     	  <th scope="col" style="width: 9%"><small >추천</small></th>
     	  <th scope="col" style="width: 9%"><small>조회수</small></th>
	     </tr>
  		</thead>
  		<tbody>
     	<c:forEach var="l" items="${list }">
    	 		<tr>
     			<th scope="row">${l.NO }</th>
     			<td><small>${l.AREA }</small></td>
     			<td>
				<a href="${pageContext.servletContext.contextPath  }/together/detail.do?no=${l.NO }">     			
     			${l.TITLE }</a>
     			</td>
     			<td>-</td>
     			<td>${l.day }</td>
     			<td>${l.GOOD }</td>
     			<td>${l.LOOKUP }</td>
     			</tr>
     	</c:forEach>
    	
  </tbody>
</table>
	
	<a href="${pageContext.servletContext.contextPath }/together/new.do">
	<button type="button" class="btn btn-outline-success" style="position: absolute;right: 0;">
	글 쓰기</button></a>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d54ea73b1e9ac77ebe1409aa939d77e5&libraries=services"></script>
	<script>
	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	var infowindow = new daum.maps.InfoWindow({zIndex:1});

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 2 // 지도의 확대 레벨
	    };  

	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 

	// 장소 검색 객체를 생성합니다
	var ps = new daum.maps.services.Places(); 
	
	// 키워드로 장소를 검색합니다
	ps.keywordSearch('${target.area}', placesSearchCB); 
	
		
	
	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
	    if (status === daum.maps.services.Status.OK) {

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new daum.maps.LatLngBounds();

	        for (var i=0; i<data.length; i++) {
	            bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));
	        }       

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	    } 
	}

	// 지도에 마커를 표시하는 함수입니다
	function displayMarker(place) {
	    
		  // 마커를 생성하고 지도에 표시합니다
	    var marker = new daum.maps.Marker({
	        map: map,
	        position: new daum.maps.LatLng(place.y, place.x) 
	    });

	    // 마커에 클릭이벤트를 등록합니다
	    daum.maps.event.addListener(marker, 'click', function() {
	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
	        infowindow.open(map, marker);
	    });
	}
	
	</script>
</form>

