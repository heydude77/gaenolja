<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="accordion" id="accordionExample">
	<div class="card">
		<div class="card-header" id="headingOne">
			<h5 class="mb-0">
				<strong><label style="font-size: 18px;">지역구를 선택 하시면 해당 지역구의 동물병원이 나옵니다. 원하시는 지역구를 선택 하세요.</label></strong>
      		</h5>
		</div>
		<div>
			<div class="card-body">
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=강남구" >강남구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=강북구" >강북구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=강서구" >강서구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=관악구" >관악구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=광진구" >광진구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=구로구" >구로구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=금천구" >금천구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=노원구" >노원구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=도봉구" >도봉구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=동대문구" >동대문구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=동작구" >동작구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=마포구" >마포구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=서대문구" >서대문구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=서초구" >서초구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=성동구" >성동구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=성북구" >성북구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=송파구" >송파구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=양천구" >양천구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=영등포구" >영등포구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=용산구" >용산구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=은평구" >은평구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=종로구" >종로구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=중구" >중구</a>
				<a type="button" class="btn btn-primary btn-sm btn-light" style="font-size: 12px;" href="${pageContext.servletContext.contextPath }/getdh.do?gu=중랑구" >중랑구</a>
			</div>
		</div>
	</div>
</div>
<hr />
<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col" style="width: 10%"><small>지역</small></th>
				<th scope="col" style="width: 35%"><small>구분</small></th>
				<th scope="col" style="width: 20%"><small>병원이름</small></th>
				<th scope="col" style="width: 10%"><small>주소</small></th>
				<th scope="col" style="width: 9%"><small >전화번호</small></th>
				<th scope="col" style="width: 9%"><small>우편번호</small></th>
			</tr>
		</thead>
	<tbody>
	<c:forEach var="dh" items="${dhlist }">
		<tr>
			<td>${dh.GU }</td>
			<td>${dh.SORT }</td>
			<td><a href="#">${dh.HOSPITALNAME }</a></td>
			<td>${dh.ADDRESS }</td>
			<td>${dh.PHONE }</td>
			<td>${dh.POSTALCODE }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>